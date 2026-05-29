import SwiftUI

struct FocusSessionSummaryView: View {
    let session: FocusSession
    let onDone: () -> Void

    @State private var showCTA = true

    private let brandBlue   = Color(red: 20/255.0,  green: 121/255.0, blue: 255/255.0)
    private let brandOrange = Color(red: 243/255.0, green: 141/255.0, blue: 1/255.0)
    private let brandBlack  = Color(red: 10/255.0,  green: 15/255.0,  blue: 26/255.0)
    private let brandGold   = Color(red: 255/255.0, green: 192/255.0, blue: 0/255.0)

    private var displayScore: Int { max(10, session.focusScore) }

    var body: some View {
        VStack(spacing: 0) {
            headerView

            ScrollView {
                VStack(spacing: 24) {
                    scoreRingView
                    coachingNoteView
                    statsRowView
                    transcriptView
                    if showCTA { ctaView }
                    doneButton
                }
                .padding(24)
            }
        }
        .frame(width: 520)
        .background(brandBlack)
    }

    // MARK: - Header

    private var headerView: some View {
        VStack(spacing: 5) {
            Text("Focus Session Complete")
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(.white)
            Text(sessionDateLine)
                .font(.system(size: 13))
                .foregroundColor(.white.opacity(0.7))
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 22)
        .background(brandBlue)
    }

    // MARK: - Score Ring

    private var scoreRingView: some View {
        VStack(spacing: 10) {
            ZStack {
                Circle()
                    .stroke(Color.white.opacity(0.12), lineWidth: 10)
                Circle()
                    .trim(from: 0, to: CGFloat(displayScore) / 100.0)
                    .stroke(brandOrange,
                            style: StrokeStyle(lineWidth: 10, lineCap: .round))
                    .rotationEffect(.degrees(-90))
                    .animation(.easeOut(duration: 0.8), value: displayScore)
                VStack(spacing: 2) {
                    Text("\(displayScore)")
                        .font(.system(size: 54, weight: .bold))
                        .foregroundColor(.white)
                    Text("/ 100")
                        .font(.system(size: 13, weight: .medium))
                        .foregroundColor(.white.opacity(0.45))
                }
            }
            .frame(width: 156, height: 156)

            Text("FOCUS SCORE")
                .font(.system(size: 11, weight: .semibold))
                .foregroundColor(.white.opacity(0.45))
                .tracking(2)
        }
    }

    // MARK: - Coaching Note

    private var coachingNoteView: some View {
        Text(coachingNote(for: displayScore))
            .font(.system(size: 15, weight: .medium))
            .foregroundColor(brandGold)
            .multilineTextAlignment(.center)
            .padding(.horizontal, 12)
    }

    // MARK: - Stats Row

    private var statsRowView: some View {
        HStack(spacing: 0) {
            SummaryStatCell(
                label: "TIME FOCUSED",
                value: formatFocusedTime(max(0, session.actualDuration - session.totalPauseDuration))
            )
            Rectangle()
                .fill(Color.white.opacity(0.1))
                .frame(width: 1, height: 40)
            SummaryStatCell(label: "PAUSES", value: "\(session.pauseCount)")
            Rectangle()
                .fill(Color.white.opacity(0.1))
                .frame(width: 1, height: 40)
            SummaryStatCell(label: "WORDS", value: "\(session.wordCount)")
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 18)
        .background(Color.white.opacity(0.06))
        .cornerRadius(12)
    }

    // MARK: - Transcript

    private var transcriptView: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("SESSION TRANSCRIPT")
                .font(.system(size: 11, weight: .semibold))
                .foregroundColor(.white.opacity(0.4))
                .tracking(1.5)

            if session.transcript.isEmpty {
                Text("No words captured this session.")
                    .font(.system(size: 14))
                    .foregroundColor(.white.opacity(0.3))
                    .italic()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(14)
                    .background(Color.white.opacity(0.05))
                    .cornerRadius(10)
            } else {
                ScrollView {
                    Text(session.transcript)
                        .font(.system(size: 14))
                        .foregroundColor(.white.opacity(0.85))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(14)
                        .textSelection(.enabled)
                }
                .frame(maxHeight: 180)
                .background(Color.white.opacity(0.05))
                .cornerRadius(10)
            }
        }
    }

    // MARK: - Soft CTA

    private var ctaView: some View {
        HStack(alignment: .top, spacing: 12) {
            Text("Ready to go further? The Elite Focus Self-Audit is inside the Implementation Kit — execedgepro.com")
                .font(.system(size: 13))
                .foregroundColor(.white.opacity(0.7))
                .fixedSize(horizontal: false, vertical: true)

            Spacer(minLength: 8)

            Button {
                withAnimation(.easeOut(duration: 0.2)) { showCTA = false }
            } label: {
                Image(systemName: "xmark")
                    .font(.system(size: 11, weight: .medium))
                    .foregroundColor(.white.opacity(0.4))
            }
            .buttonStyle(.plain)
        }
        .padding(14)
        .background(Color.white.opacity(0.07))
        .cornerRadius(10)
    }

    // MARK: - Done Button

    private var doneButton: some View {
        Button(action: onDone) {
            Text("Done")
                .font(.system(size: 15, weight: .semibold))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 13)
                .background(brandOrange)
                .cornerRadius(10)
        }
        .buttonStyle(.plain)
    }

    // MARK: - Helpers

    private var sessionDateLine: String {
        let f = DateFormatter()
        f.dateStyle = .medium
        f.timeStyle = .short
        return f.string(from: session.startTime)
    }

    private func formatFocusedTime(_ seconds: TimeInterval) -> String {
        let total = Int(seconds)
        let m = total / 60
        let s = total % 60
        return "\(m)m \(String(format: "%02d", s))s"
    }

    private func coachingNote(for score: Int) -> String {
        switch score {
        case 80...100: return "Elite focus. You operated at the top of your game today."
        case 60...79:  return "Strong session. One less pause next time and you'll hit elite level."
        case 40...59:  return "Solid start. Focus builds with repetition — show up again tomorrow."
        default:       return "Every session teaches you something. Reset and come back stronger."
        }
    }
}

// MARK: - Stat Cell

private struct SummaryStatCell: View {
    let label: String
    let value: String

    var body: some View {
        VStack(spacing: 5) {
            Text(value)
                .font(.system(size: 22, weight: .bold))
                .foregroundColor(.white)
            Text(label)
                .font(.system(size: 10, weight: .semibold))
                .foregroundColor(.white.opacity(0.4))
                .tracking(1)
        }
        .frame(maxWidth: .infinity)
    }
}
