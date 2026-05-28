import SwiftUI

struct FocusSessionDetailView: View {
    let session: FocusSession
    let transcriptions: [Transcription]
    let wordCount: Int
    let focusedTime: TimeInterval
    let targetDuration: TimeInterval
    let pauseCount: Int

    @Environment(\.dismiss) private var dismiss

    private let brandBlue   = Color(red: 20/255.0,  green: 121/255.0, blue: 255/255.0)
    private let brandOrange = Color(red: 243/255.0, green: 141/255.0, blue: 1/255.0)

    private var durationScore: Int {
        Int((min(focusedTime / max(targetDuration, 1), 1.0) * 50.0).rounded())
    }

    private var pauseScore: Int {
        let base = max(0.0, 30.0 - Double(min(pauseCount, 3)) * 10.0)
        let scale = min(focusedTime / max(targetDuration, 1), 1.0)
        return Int((base * scale).rounded())
    }

    private var wpmScore: Int {
        let mins = focusedTime / 60.0
        let wpm = mins > 0 ? Double(wordCount) / mins : 0.0
        return Int((min(wpm / 20.0, 1.0) * 20.0).rounded())
    }

    var body: some View {
        VStack(spacing: 0) {
            headerBar
            ScrollView {
                VStack(spacing: 24) {
                    scoreSection
                    scoreBreakdownSection
                    statsRow
                    transcriptionsSection
                }
                .padding(24)
            }
        }
        .frame(width: 520, height: 620)
    }

    // MARK: - Header

    private var headerBar: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2) {
                Text(sessionDateLine)
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.white)
                Text(formattedDuration(session.actualDuration) + " session")
                    .font(.system(size: 13))
                    .foregroundColor(.white.opacity(0.7))
            }
            Spacer()
            Button(action: { dismiss() }) {
                Image(systemName: "xmark.circle.fill")
                    .font(.system(size: 20))
                    .foregroundColor(.white.opacity(0.5))
            }
            .buttonStyle(.plain)
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 16)
        .background(brandBlue)
    }

    // MARK: - Score

    private var scoreSection: some View {
        VStack(spacing: 6) {
            Text("\(session.focusScore)")
                .font(.system(size: 64, weight: .bold).monospacedDigit())
                .foregroundColor(brandOrange)
            Text("FOCUS SCORE")
                .font(.system(size: 11, weight: .semibold))
                .foregroundColor(.secondary)
                .tracking(1.5)
        }
    }

    // MARK: - Score Breakdown

    private var scoreBreakdownSection: some View {
        VStack(spacing: 10) {
            Text("SCORE BREAKDOWN")
                .font(.system(size: 10, weight: .semibold))
                .foregroundColor(.secondary)
                .tracking(1.2)
            HStack(spacing: 12) {
                breakdownPill(label: "TIME", value: durationScore, outOf: 50)
                breakdownPill(label: "PAUSES", value: pauseScore, outOf: 30)
                breakdownPill(label: "OUTPUT", value: wpmScore, outOf: 20)
            }
        }
        .padding(16)
        .background(Color.secondary.opacity(0.06))
        .cornerRadius(12)
    }

    private func breakdownPill(label: String, value: Int, outOf: Int) -> some View {
        VStack(spacing: 4) {
            Text("\(value)")
                .font(.system(size: 22, weight: .bold).monospacedDigit())
                .foregroundColor(brandOrange)
            Text("/ \(outOf)")
                .font(.system(size: 11))
                .foregroundColor(.secondary)
            Text(label)
                .font(.system(size: 9, weight: .semibold))
                .foregroundColor(.secondary)
                .tracking(0.8)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 12)
        .background(Color.secondary.opacity(0.06))
        .cornerRadius(8)
    }

    // MARK: - Stats Row

    private var statsRow: some View {
        HStack(spacing: 12) {
            statBox(label: "TIME FOCUSED", value: formattedDuration(focusedTime))
            statBox(label: "PAUSES", value: "\(pauseCount)")
            statBox(label: "WORDS", value: "\(wordCount)")
        }
    }

    private func statBox(label: String, value: String) -> some View {
        VStack(spacing: 4) {
            Text(value)
                .font(.system(size: 20, weight: .bold).monospacedDigit())
            Text(label)
                .font(.system(size: 9, weight: .semibold))
                .foregroundColor(.secondary)
                .tracking(0.8)
        }
        .frame(maxWidth: .infinity)
        .padding(12)
        .background(Color.secondary.opacity(0.06))
        .cornerRadius(10)
    }

    // MARK: - Transcriptions

    private var transcriptionsSection: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("DICTATIONS THIS SESSION")
                .font(.system(size: 11, weight: .semibold))
                .foregroundColor(.secondary)
                .tracking(1.2)
            if transcriptions.isEmpty {
                emptyState
            } else {
                VStack(spacing: 8) {
                    ForEach(transcriptions, id: \.id) { t in
                        transcriptionCard(t)
                    }
                }
            }
        }
    }

    private var emptyState: some View {
        VStack(spacing: 8) {
            Image(systemName: "mic.slash")
                .font(.system(size: 28))
                .foregroundColor(.secondary)
            Text("No dictations captured during this session.")
                .font(.system(size: 13, weight: .medium))
                .foregroundColor(.secondary)
            Text("Use Right ⌘ (Right Command Key) during your next session to capture notes.")
                .font(.system(size: 12))
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity)
        .padding(24)
        .background(Color.secondary.opacity(0.04))
        .cornerRadius(10)
    }

    private func transcriptionCard(_ t: Transcription) -> some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(t.timestamp, style: .time)
                .font(.system(size: 10, weight: .semibold))
                .foregroundColor(.secondary)
                .tracking(0.5)
            Text(t.enhancedText ?? t.text)
                .font(.system(size: 13))
                .foregroundColor(.primary)
                .frame(maxWidth: .infinity, alignment: .leading)
                .textSelection(.enabled)
        }
        .padding(12)
        .background(Color.secondary.opacity(0.06))
        .cornerRadius(8)
    }

    // MARK: - Helpers

    private var sessionDateLine: String {
        let f = DateFormatter()
        f.dateStyle = .medium
        f.timeStyle = .short
        return f.string(from: session.startTime)
    }

    private func formattedDuration(_ seconds: TimeInterval) -> String {
        let total = Int(max(0, seconds))
        let m = total / 60
        let s = total % 60
        return String(format: "%d:%02d", m, s)
    }
}
