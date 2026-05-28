import SwiftUI

struct PermissionsRepairView: View {
    @ObservedObject var service: PermissionsRepairService
    @Environment(\.dismiss) private var dismiss
    @State private var isChecking = false

    var body: some View {
        VStack(spacing: 0) {
            // Header
            VStack(spacing: 12) {
                ZStack {
                    Circle()
                        .fill(Color.orange.opacity(0.15))
                        .frame(width: 64, height: 64)
                    Image(systemName: "exclamationmark.shield.fill")
                        .font(.system(size: 32, weight: .semibold))
                        .foregroundColor(.orange)
                        .symbolRenderingMode(.hierarchical)
                }

                Text("Permissions Need Repair")
                    .font(.title2.bold())

                Text("EliteWrite was just rebuilt. macOS requires you to re-grant\npermissions after every update. This takes about 30 seconds.")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
            }
            .padding(.top, 32)
            .padding(.bottom, 24)

            // Repair cards
            VStack(spacing: 16) {
                if !service.isAccessibilityGranted {
                    RepairCard(
                        icon: "hand.raised",
                        title: "Accessibility",
                        steps: [
                            "Click \"Reset & Open Accessibility\" below.",
                            "In System Settings, click + and add EliteWrite from /Applications.",
                            "Return here and click \"Check Again\"."
                        ],
                        buttonLabel: "Reset & Open Accessibility",
                        buttonAction: { service.resetAndOpenAccessibility() }
                    )
                }

                if !service.isInputMonitoringGranted {
                    RepairCard(
                        icon: "keyboard",
                        title: "Input Monitoring",
                        steps: [
                            "Click \"Reset & Open Input Monitoring\" below.",
                            "In System Settings, click + and add EliteWrite from /Applications.",
                            "When macOS says \"Quit & Reopen\" — click it. EliteWrite will restart."
                        ],
                        buttonLabel: "Reset & Open Input Monitoring",
                        buttonAction: { service.resetAndOpenInputMonitoring() }
                    )

                    Button("Skip — PTT still works; Cmd+Shift+F requires this") {
                        dismiss()
                    }
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .buttonStyle(.plain)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.horizontal, 4)
                    .padding(.top, -6)
                }
            }
            .padding(.horizontal, 24)

            Spacer(minLength: 24)

            // Bottom buttons
            VStack(spacing: 10) {
                Button(action: checkAgain) {
                    HStack {
                        if isChecking {
                            ProgressView()
                                .scaleEffect(0.8)
                                .padding(.trailing, 4)
                        }
                        Text(isChecking ? "Checking…" : "Check Again")
                            .font(.headline)
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.accentColor)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
                .buttonStyle(.plain)
                .disabled(isChecking)

                Button("Dismiss — I'll fix this later") {
                    dismiss()
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                .buttonStyle(.plain)
            }
            .padding(.horizontal, 24)
            .padding(.bottom, 28)
        }
        .frame(width: 480)
        .background(Color(NSColor.windowBackgroundColor))
    }

    private func checkAgain() {
        isChecking = true
        service.checkPermissions()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.2) {
            isChecking = false
            if !service.needsRepair {
                dismiss()
            }
        }
    }
}

private struct RepairCard: View {
    let icon: String
    let title: String
    let steps: [String]
    let buttonLabel: String
    var buttonColor: Color = .orange
    let buttonAction: () -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            HStack(spacing: 12) {
                ZStack {
                    Circle()
                        .fill(Color.orange.opacity(0.15))
                        .frame(width: 40, height: 40)
                    Image(systemName: icon)
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundColor(.orange)
                }
                Text(title)
                    .font(.headline)
                Spacer()
                Image(systemName: "xmark.seal.fill")
                    .font(.system(size: 18))
                    .foregroundColor(.orange)
                    .symbolRenderingMode(.hierarchical)
            }

            VStack(alignment: .leading, spacing: 6) {
                ForEach(Array(steps.enumerated()), id: \.offset) { index, step in
                    HStack(alignment: .top, spacing: 8) {
                        Text("\(index + 1).")
                            .font(.subheadline.monospacedDigit())
                            .foregroundColor(.secondary)
                            .frame(width: 18, alignment: .trailing)
                        Text(step)
                            .font(.subheadline)
                            .foregroundColor(.primary)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                }
            }

            Button(action: buttonAction) {
                HStack {
                    Text(buttonLabel)
                    Spacer()
                    Image(systemName: "arrow.right")
                }
                .font(.subheadline.bold())
                .foregroundColor(.white)
                .padding(.horizontal, 14)
                .padding(.vertical, 10)
                .frame(maxWidth: .infinity)
                .background(buttonColor)
                .cornerRadius(8)
            }
            .buttonStyle(.plain)
        }
        .padding(16)
        .background(CardBackground(isSelected: false))
        .cornerRadius(14)
        .shadow(color: Color.black.opacity(0.06), radius: 4, y: 2)
    }
}
