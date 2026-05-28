import Foundation
import SwiftData

@Model
final class FocusSession {
    var id: UUID = UUID()
    var startTime: Date = Date()
    var targetDuration: TimeInterval = 25 * 60
    var actualDuration: TimeInterval = 0
    var pauseCount: Int = 0
    var totalPauseDuration: TimeInterval = 0
    var wordCount: Int = 0
    var transcript: String = ""
    var focusScore: Int = 0

    init(
        startTime: Date = Date(),
        targetDuration: TimeInterval,
        actualDuration: TimeInterval,
        pauseCount: Int,
        totalPauseDuration: TimeInterval,
        wordCount: Int,
        transcript: String,
        focusScore: Int
    ) {
        self.id = UUID()
        self.startTime = startTime
        self.targetDuration = targetDuration
        self.actualDuration = actualDuration
        self.pauseCount = pauseCount
        self.totalPauseDuration = totalPauseDuration
        self.wordCount = wordCount
        self.transcript = transcript
        self.focusScore = focusScore
    }
}
