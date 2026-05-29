import SwiftUI
import SwiftData

struct FocusSessionView: View {
    @ObservedObject private var focusManager = FocusSessionManager.shared
    @AppStorage("focusSessionDurationMinutes") private var selectedDurationMinutes: Int = 25
    @Query(sort: \FocusSession.startTime, order: .reverse) private var sessions: [FocusSession]
    @Query(sort: \Transcription.timestamp) private var allTranscriptions: [Transcription]
    @State private var detailContext: SessionDetailContext?

    private struct SessionDetailContext: Identifiable {
        let session: FocusSession
        let transcriptions: [Transcription]
        let wordCount: Int
        let focusedTime: TimeInterval
        let targetDuration: TimeInterval
        let pauseCount: Int
        var id: UUID { session.id }
    }

    private let brandOrange = Color(red: 243/255.0, green: 141/255.0, blue: 1/255.0)
    private let brandBlue   = Color(red: 20/255.0,  green: 121/255.0, blue: 255/255.0)
    private let brandGold   = Color(red: 255/255.0, green: 192/255.0, blue: 0/255.0)

    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                switch focusManager.state {
                case .idle:
                    idleView
                case .active, .paused:
                    activeView
                case .complete:
                    if let session = focusManager.completedSession {
                        completedView(session: session)
                    }
                }
            }
            .padding(32)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .sheet(item: $detailContext) { ctx in
            FocusSessionDetailView(
                session: ctx.session,
                transcriptions: ctx.transcriptions,
                wordCount: ctx.wordCount,
                focusedTime: ctx.focusedTime,
                targetDuration: ctx.targetDuration,
                pauseCount: ctx.pauseCount
            )
        }
    }

    // MARK: - Idle

    private var idleView: some View {
        VStack(spacing: 32) {
            VStack(spacing: 8) {
                Text("Focus Session")
                    .font(.system(size: 28, weight: .bold))
                Text("Start a timed elite focus block. Dictate freely with Right ⌘ (Right Command Key) during the session — everything is captured automatically.")
                    .font(.system(size: 14))
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 400)
            }

            VStack(spacing: 12) {
                Text("SESSION DURATION")
                    .font(.system(size: 11, weight: .semibold))
                    .foregroundColor(.secondary)
                    .tracking(1.2)
                Picker("Duration", selection: $selectedDurationMinutes) {
                    Text("15 minutes").tag(15)
                    Text("25 minutes").tag(25)
                    Text("50 minutes").tag(50)
                }
                .pickerStyle(.segmented)
                .labelsHidden()
                .frame(maxWidth: 300)
            }

            Button {
                focusManager.startSession(duration: TimeInterval(selectedDurationMinutes * 60))
            } label: {
                Text("Start Focus Session")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.white)
                    .frame(width: 220, height: 48)
                    .background(brandOrange)
                    .cornerRadius(12)
            }
            .buttonStyle(.plain)

            Text("or press ⌘⇧F from anywhere")
                .font(.system(size: 12))
                .foregroundColor(.secondary)

            if !sessions.isEmpty {
                Divider().padding(.vertical, 8)
                sessionHistorySection
            }
        }
        .frame(maxWidth: 560)
        .frame(maxWidth: .infinity)
    }

    // MARK: - Active / Paused

    private var activeView: some View {
        VStack(spacing: 24) {
            Text("FOCUS SESSION ACTIVE")
                .font(.system(size: 11, weight: .semibold))
                .foregroundColor(brandOrange)
                .tracking(1.5)
            FocusSessionTimerView(manager: focusManager)
                .frame(maxWidth: 280)
        }
        .frame(maxWidth: .infinity)
    }

    // MARK: - Completed

    private func completedView(session: FocusSession) -> some View {
        VStack(spacing: 32) {
            VStack(spacing: 12) {
                Text("SESSION COMPLETE")
                    .font(.system(size: 11, weight: .semibold))
                    .foregroundColor(brandBlue)
                    .tracking(1.5)
                Text("\(max(10, session.focusScore))")
                    .font(.system(size: 72, weight: .bold).monospacedDigit())
                    .foregroundColor(brandOrange)
                Text("FOCUS SCORE")
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundColor(.secondary)
                    .tracking(1.2)
                Text(coachingNote(for: max(10, session.focusScore)))
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(brandGold)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 400)
            }

            HStack(spacing: 24) {
                statBox(label: "TIME FOCUSED", value: formattedDuration(session.actualDuration))
                statBox(label: "PAUSES", value: "\(session.pauseCount)")
                statBox(label: "WORDS", value: "\(session.wordCount)")
            }

            if !session.transcript.isEmpty {
                VStack(alignment: .leading, spacing: 8) {
                    Text("TRANSCRIPT")
                        .font(.system(size: 11, weight: .semibold))
                        .foregroundColor(.secondary)
                        .tracking(1.2)
                    ScrollView {
                        Text(session.transcript)
                            .font(.system(size: 13))
                            .foregroundColor(.primary)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(12)
                    }
                    .frame(maxHeight: 160)
                    .background(Color.secondary.opacity(0.06))
                    .cornerRadius(8)
                }
                .frame(maxWidth: 560)
            }

            VStack(spacing: 4) {
                Text("Ready to go further?")
                    .font(.system(size: 12))
                    .foregroundColor(.secondary)
                Text("The Elite Focus Self-Audit is inside the Implementation Kit — execedgepro.com")
                    .font(.system(size: 12))
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
            }
            .frame(maxWidth: 400)

            HStack(spacing: 16) {
                Button("Start New Session") {
                    focusManager.resetToIdle()
                }
                .buttonStyle(.plain)
                .font(.system(size: 14, weight: .medium))
                .foregroundColor(brandOrange)
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .overlay(RoundedRectangle(cornerRadius: 8).stroke(brandOrange, lineWidth: 1))

                Button("Done") {
                    focusManager.resetToIdle()
                }
                .buttonStyle(.plain)
                .font(.system(size: 14, weight: .semibold))
                .foregroundColor(.white)
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .background(brandOrange)
                .cornerRadius(8)
            }
        }
        .frame(maxWidth: 560)
        .frame(maxWidth: .infinity)
    }

    // MARK: - History

    private var sessionHistorySection: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("RECENT SESSIONS")
                .font(.system(size: 11, weight: .semibold))
                .foregroundColor(.secondary)
                .tracking(1.2)
            Text("Focus Score — how well you sustained attention (0 = distracted, 100 = elite focus)")
                .font(.system(size: 12))
                .foregroundColor(.secondary)
            ForEach(sessions.prefix(5)) { session in
                Button {
                    let end = session.startTime.addingTimeInterval(session.actualDuration)
                    let matched = Array(allTranscriptions.filter {
                        $0.timestamp >= session.startTime && $0.timestamp <= end
                    }.reversed())
                    let ft = max(0, session.actualDuration - session.totalPauseDuration)
                    detailContext = SessionDetailContext(
                        session: session,
                        transcriptions: matched,
                        wordCount: session.wordCount,
                        focusedTime: ft,
                        targetDuration: session.targetDuration,
                        pauseCount: session.pauseCount
                    )
                } label: {
                    HStack {
                        VStack(alignment: .leading, spacing: 2) {
                            Text(session.startTime, style: .date)
                                .font(.system(size: 13, weight: .medium))
                            Text(formattedDuration(session.actualDuration))
                                .font(.system(size: 12))
                                .foregroundColor(.secondary)
                        }
                        Spacer()
                        HStack(spacing: 6) {
                            Text("\(max(10, session.focusScore)) / 100")
                                .font(.system(size: 20, weight: .bold).monospacedDigit())
                                .foregroundColor(brandOrange)
                            Image(systemName: "chevron.right")
                                .font(.system(size: 11, weight: .medium))
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding(.vertical, 6)
                }
                .buttonStyle(.plain)
                Divider()
            }
        }
        .frame(maxWidth: 560)
        .frame(maxWidth: .infinity)
    }

    // MARK: - Helpers

    private func statBox(label: String, value: String) -> some View {
        VStack(spacing: 4) {
            Text(value)
                .font(.system(size: 24, weight: .bold).monospacedDigit())
            Text(label)
                .font(.system(size: 10, weight: .semibold))
                .foregroundColor(.secondary)
                .tracking(0.8)
        }
        .frame(minWidth: 80)
        .padding(16)
        .background(Color.secondary.opacity(0.06))
        .cornerRadius(10)
    }

    private func formattedDuration(_ seconds: Double) -> String {
        let mins = Int(seconds) / 60
        let secs = Int(seconds) % 60
        return String(format: "%d:%02d", mins, secs)
    }

    private func coachingNote(for score: Int) -> String {
        switch score {
        case 90...100: return "Elite. Pure deliberate work — this is what peak performance looks like."
        case 75..<90:  return "Strong session. You're building the focus muscle. Keep the streak alive."
        case 60..<75:  return "Solid effort. Cut one more pause next session and watch the score jump."
        case 40..<60:  return "A start is a start. The discipline to sit down is 80% of the battle."
        default:       return "Every session teaches you something. What will you protect next time?"
        }
    }
}
