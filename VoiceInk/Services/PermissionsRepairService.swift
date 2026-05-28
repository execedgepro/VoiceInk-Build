import Foundation
import AppKit
import ApplicationServices

class PermissionsRepairService: ObservableObject {
    static let shared = PermissionsRepairService()

    @Published var isAccessibilityGranted = false
    @Published var isInputMonitoringGranted = false
    @Published var isScreenRecordingGranted = false

    private let bundleID = "com.execedgepro.EliteWrite"

    private init() {
        let options: NSDictionary = [kAXTrustedCheckOptionPrompt.takeUnretainedValue() as String: false]
        isAccessibilityGranted = AXIsProcessTrustedWithOptions(options)
        isInputMonitoringGranted = CGPreflightListenEventAccess()
        isScreenRecordingGranted = CGPreflightScreenCaptureAccess()
    }

    var needsRepair: Bool {
        !isAccessibilityGranted || !isInputMonitoringGranted
    }

    func checkPermissions() {
        let options: NSDictionary = [kAXTrustedCheckOptionPrompt.takeUnretainedValue() as String: false]
        let accessibility = AXIsProcessTrustedWithOptions(options)
        let inputMonitoring = CGPreflightListenEventAccess()
        let screenRecording = CGPreflightScreenCaptureAccess()
        if Thread.isMainThread {
            isAccessibilityGranted = accessibility
            isInputMonitoringGranted = inputMonitoring
            isScreenRecordingGranted = screenRecording
        } else {
            DispatchQueue.main.async {
                self.isAccessibilityGranted = accessibility
                self.isInputMonitoringGranted = inputMonitoring
                self.isScreenRecordingGranted = screenRecording
            }
        }
    }

    func relaunchApp() {
        let task = Process()
        task.executableURL = URL(fileURLWithPath: "/usr/bin/open")
        task.arguments = [Bundle.main.bundleURL.path]
        try? task.run()
        NSApplication.shared.terminate(nil)
    }

    func resetAndOpenAccessibility() {
        runTccutilReset(service: "Accessibility")
        openSystemSettings(pane: "Privacy_Accessibility")
    }

    func resetAndOpenInputMonitoring() {
        runTccutilReset(service: "ListenEvent")
        openSystemSettings(pane: "Privacy_ListenEvent")
    }

    func resetAndOpenScreenRecording() {
        runTccutilReset(service: "ScreenCapture")
        openSystemSettings(pane: "Privacy_ScreenCapture")
    }

    private func runTccutilReset(service: String) {
        let process = Process()
        process.executableURL = URL(fileURLWithPath: "/usr/bin/tccutil")
        process.arguments = ["reset", service, bundleID]
        try? process.run()
        process.waitUntilExit()
    }

    private func openSystemSettings(pane: String) {
        guard let url = URL(string: "x-apple.systempreferences:com.apple.preference.security?\(pane)") else { return }
        NSWorkspace.shared.open(url)
    }
}
