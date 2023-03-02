import Foundation
import UIKit

enum AnswerText: CaseIterable {
    case secure
    case anxious
    case avoidant

    func answerText() -> String {
        switch self {
        case.secure:
            return "secure"

        case.anxious:
            return "anxious"

        case.avoidant:
            return "avoidant"
        }
    }
}

struct AnswerInfo {
    var type: AnswerText
    var answeringText: String
}

extension AnswerInfo {
    static func answerData() -> [AnswerInfo] {
        return [
            AnswerInfo(type: .secure, answeringText: "signals what is known as a secure pattern of attachment,whereby love and trust come easily"),
            AnswerInfo(type: .anxious, answeringText: "where one longs to be intimate with others but is continuously scared of letdown and often precipitates crises in relationships through counter-productively aggressive behaviour"),
            AnswerInfo(type: .avoidant, answeringText: "avoidant pattern of attachment, where it feels much easier to avoid the dangers of intimacy through solitary activities and emotional withdrawa")
        ]
    }
}
