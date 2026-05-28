import Foundation
import SwiftData
import AppKit
import Carbon

enum FocusSessionState: Equatable {
    case idle
    case active
    case paused
    case complete
}

@MainActor
class FocusSessionManager: ObservableObject {
    static let shared = FocusSessionManager()

    @Published var state: FocusSessionState = .idle
    @Published var remainingSeconds: Int = 25 * 60
    @Published var elapsedFocusedSeconds: Int = 0
    @Published var pauseCount: Int = 0
    @Published var wordCount: Int = 0
    @Published var completedSession: FocusSession?

    private var modelContext: ModelContext?
    private let shortcutMonitor = ShortcutMonitor()
    private var targetDuration: TimeInterval = 25 * 60
    private var sessionStartTime: Date = Date()
    private var pauseStartTime: Date?
    private var totalPauseDuration: TimeInterval = 0
    private var transcript: String = ""
    private var timer: Timer?
    private var transcriptionObserver: NSObjectProtocol?
    private var sleepObserver: NSObjectProtocol?
    private var wakeObserver: NSObjectProtocol?
    private var sleepStartTime: Date?

    private init() {
        setupSleepObservers()
    }

    func configure(modelContext: ModelContext) {
        self.modelContext = modelContext
        setupTranscriptionObserver()
        startGlobalShortcut()
    }

    private func startGlobalShortcut() {
        let focusShortcut = Shortcut.key(
            keyCode: UInt16(kVK_ANSI_F),
            modifierFlags: [.command, .shift]
        )
        shortcutMonitor.start(
            shortcuts: [.focusSessionToggle: focusShortcut],
            onKeyDown: { [weak self] action, _ in
                guard action == .focusSessionToggle else { return }
                Task { @MainActor [weak self] in self?.handleShortcutToggle() }
            },
            onKeyUp: { _, _ in }
        )
    }

    private func handleShortcutToggle() {
        switch state {
        case .idle:
            startSession(duration: targetDuration)
        case .active, .paused:
            endSession()
        case .complete:
            break
        }
    }

    // MARK: - Session Control

    func startSession(duration: TimeInterval = 25 * 60) {
        guard state == .idle else { return }
        targetDuration = duration
        remainingSeconds = Int(duration)
        elapsedFocusedSeconds = 0
        pauseCount = 0
        totalPauseDuration = 0
        wordCount = 0
        transcript = ""
        pauseStartTime = nil
        sleepStartTime = nil
        completedSession = nil
        sessionStartTime = Date()
        state = .active
        startTimer()
    }

    func pauseSession() {
        guard state == .active else { return }
        pauseCount += 1
        pauseStartTime = Date()
        state = .paused
        stopTimer()
    }

    func resumeSession() {
        guard state == .paused else { return }
        if let pauseStart = pauseStartTime {
            totalPauseDuration += Date().timeIntervalSince(pauseStart)
            pauseStartTime = nil
        }
        state = .active
        startTimer()
    }

    func endSession() {
        guard state == .active || state == .paused else { return }
        if state == .paused, let pauseStart = pauseStartTime {
            totalPauseDuration += Date().timeIntervalSince(pauseStart)
            pauseStartTime = nil
        }
        stopTimer()
        finalise()
    }

    func resetToIdle() {
        state = .idle
        completedSession = nil
        remainingSeconds = Int(targetDuration)
        elapsedFocusedSeconds = 0
        pauseCount = 0
        wordCount = 0
        transcript = ""
    }

    // MARK: - Timer

    private func startTimer() {
        let t = Timer(timeInterval: 1.0, repeats: true) { [weak self] _ in
            Task { @MainActor [weak self] in
                self?.tick()
            }
        }
        RunLoop.main.add(t, forMode: .common)
        timer = t
    }

    private func stopTimer() {
        timer?.invalidate()
        timer = nil
    }

    private func tick() {
        guard state == .active else { return }
        if remainingSeconds > 0 {
            remainingSeconds -= 1
            elapsedFocusedSeconds += 1
        } else {
            stopTimer()
            finalise()
        }
    }

    // MARK: - Sleep / Wake Handling (QA criterion #4)

    private func setupSleepObservers() {
        sleepObserver = NSWorkspace.shared.notificationCenter.addObserver(
            forName: NSWorkspace.willSleepNotification,
            object: nil,
            queue: .main
        ) { [weak self] _ in
            Task { @MainActor [weak self] in self?.handleSleep() }
        }
        wakeObserver = NSWorkspace.shared.notificationCenter.addObserver(
            forName: NSWorkspace.didWakeNotification,
            object: nil,
            queue: .main
        ) { [weak self] _ in
            Task { @MainActor [weak self] in self?.handleWake() }
        }
    }

    private func handleSleep() {
        guard state == .active else { return }
        sleepStartTime = Date()
        stopTimer()
    }

    private func handleWake() {
        guard state == .active, let sleepStart = sleepStartTime else { return }
        sleepStartTime = nil
        let sleepSeconds = Int(Date().timeIntervalSince(sleepStart))
        totalPauseDuration += Double(sleepSeconds)
        if sleepSeconds >= remainingSeconds {
            finalise()
        } else {
            remainingSeconds -= sleepSeconds
            startTimer()
        }
    }

    // MARK: - Transcription Collection

    private func setupTranscriptionObserver() {
        transcriptionObserver = NotificationCenter.default.addObserver(
            forName: .transcriptionCompleted,
            object: nil,
            queue: .main
        ) { [weak self] notification in
            Task { @MainActor [weak self] in
                self?.handleTranscriptionCompleted(notification)
            }
        }
    }

    private func handleTranscriptionCompleted(_ notification: Notification) {
        guard state == .active,
              let transcription = notification.object as? Transcription else { return }
        let text = transcription.enhancedText ?? transcription.text
        guard !text.isEmpty else { return }
        if !transcript.isEmpty { transcript += "\n\n" }
        transcript += text
        wordCount += text.split { $0.isWhitespace }.count
    }

    // MARK: - Score + Finalise

    private func finalise() {
        let score = calculateScore(
            focusedSeconds: elapsedFocusedSeconds,
            target: targetDuration,
            pauses: pauseCount,
            words: wordCount
        )
        let session = FocusSession(
            startTime: sessionStartTime,
            targetDuration: targetDuration,
            actualDuration: Double(elapsedFocusedSeconds) + totalPauseDuration,
            pauseCount: pauseCount,
            totalPauseDuration: totalPauseDuration,
            wordCount: wordCount,
            transcript: transcript,
            focusScore: score
        )
        if let context = modelContext {
            context.insert(session)
            try? context.save()
        }
        completedSession = session
        state = .complete
        NotificationCenter.default.post(name: .focusSessionDidComplete, object: nil)
    }

    private func calculateScore(focusedSeconds: Int, target: TimeInterval, pauses: Int, words: Int) -> Int {
        let focusedTime = Double(focusedSeconds)

        // Duration component: up to 50 points
        let durationScore = min(focusedTime / target, 1.0) * 50.0

        // Pause component: up to 30 points — scaled by session completion so short sessions can't earn full pause points
        let pauseScore = max(0.0, 30.0 - Double(min(pauses, 3)) * 10.0) * min(focusedTime / target, 1.0)

        // Words-per-minute component: up to 20 points, benchmarked at 20 wpm
        let focusedMinutes = focusedTime / 60.0
        let wpm = focusedMinutes > 0 ? Double(words) / focusedMinutes : 0.0
        let wpmScore = min(wpm / 20.0, 1.0) * 20.0

        return Int((durationScore + pauseScore + wpmScore).rounded())
    }
}
