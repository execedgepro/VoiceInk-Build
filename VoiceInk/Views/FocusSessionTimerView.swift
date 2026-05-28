import SwiftUI

struct FocusSessionTimerView: View {
    @ObservedObject var manager: FocusSessionManager

    @State private var confirmingEnd = false
    @State private var confirmResetTask: Task<Void, Never>?

    private let brandOrange = Color(red: 243/255.0, green: 141/255.0, blue: 1/255.0)
    private let brandBlack  = Color(red: 10/255.0,  green: 15/255.0,  blue: 26/255.0)

    var body: some View {
        VStack(spacing: 14) {
            sessionLabel
            countdownRing
            pauseResumeButton
            endButton
        }
        .padding(.vertical, 16)
        .padding(.horizontal, 16)
        .frame(maxWidth: .infinity)
        .background(brandBlack)
        .cornerRadius(10)
        .onDisappear {
            confirmResetTask?.cancel()
        }
    }

    // MARK: - Subviews

    private var sessionLabel: some View {
        Text(targetLabel)
            .font(.system(size: 10, weight: .semibold))
            .foregroundColor(.white.opacity(0.4))
            .tracking(1.5)
    }

    private var countdownRing: some View {
        ZStack {
            Circle()
                .stroke(Color.white.opacity(0.1), lineWidth: 7)
            Circle()
                .trim(from: 0, to: ringFraction)
                .stroke(brandOrange,
                        style: StrokeStyle(lineWidth: 7, lineCap: .round))
                .rotationEffect(.degrees(-90))
                .animation(.linear(duration: 1), value: manager.remainingSeconds)

            VStack(spacing: 3) {
                Text(timeString)
                    .font(.system(size: 30, weight: .bold).monospacedDigit())
                    .foregroundColor(.white)
                if manager.state == .paused {
                    Text("PAUSED")
                        .font(.system(size: 9, weight: .heavy))
                        .foregroundColor(brandOrange)
                        .tracking(1.5)
                }
            }
        }
        .frame(width: 120, height: 120)
    }

    private var pauseResumeButton: some View {
        Button(action: togglePause) {
            Text(manager.state == .paused ? "Resume Session" : "Pause Session")
                .font(.system(size: 13, weight: .medium))
                .foregroundColor(.white.opacity(0.75))
                .frame(maxWidth: .infinity)
                .padding(.vertical, 7)
                .background(Color.white.opacity(0.08))
                .cornerRadius(7)
        }
        .buttonStyle(.plain)
    }

    private var endButton: some View {
        Button(action: handleEndTap) {
            Text(confirmingEnd ? "Tap again to end" : "End Session")
                .font(.system(size: 12,
                              weight: confirmingEnd ? .semibold : .regular))
                .foregroundColor(confirmingEnd ? brandOrange : .white.opacity(0.35))
        }
        .buttonStyle(.plain)
    }

    // MARK: - Actions

    private func togglePause() {
        if manager.state == .active {
            manager.pauseSession()
        } else if manager.state == .paused {
            manager.resumeSession()
        }
    }

    private func handleEndTap() {
        if confirmingEnd {
            confirmResetTask?.cancel()
            confirmResetTask = nil
            manager.endSession()
        } else {
            confirmingEnd = true
            confirmResetTask?.cancel()
            confirmResetTask = Task { @MainActor in
                do {
                    try await Task.sleep(nanoseconds: 3_000_000_000)
                    confirmingEnd = false
                } catch {
                    // Cancelled — user confirmed end or view disappeared
                }
            }
        }
    }

    // MARK: - Computed Properties

    private var ringFraction: CGFloat {
        let total = manager.remainingSeconds + manager.elapsedFocusedSeconds
        guard total > 0 else { return 0 }
        return CGFloat(manager.remainingSeconds) / CGFloat(total)
    }

    private var timeString: String {
        let m = manager.remainingSeconds / 60
        let s = manager.remainingSeconds % 60
        return String(format: "%02d:%02d", m, s)
    }

    private var targetLabel: String {
        let totalSeconds = manager.remainingSeconds + manager.elapsedFocusedSeconds
        let mins = (totalSeconds + 30) / 60
        let snapped: Int
        switch mins {
        case ..<20: snapped = 15
        case 20..<38: snapped = 25
        default: snapped = 50
        }
        return "\(snapped)-MINUTE FOCUS SESSION"
    }
}
