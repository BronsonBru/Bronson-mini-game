import UIKit
import Foundation

enum RoundType {
    case cyber
    case camping1
    case camping2
    case cybersad
    case cute
    case cyberlove
    case cyberphoto
    case ghostsinfield
    case dragonGirl
    case tomInLove
    case cyberGoodBye
    case mouseTrouble
    case dreamer
    case itIsWhatItIs
    case cryingJerry
    case jerryNotGood
    case anger
    case shower
    case pack
    case scooby

    func image() -> UIImage {
        switch self {
        case .cyber:
            return Asset.Bronson.cyber.image

        case .cybersad:
            return Asset.Bronson.cybersad.image

        case .camping1:
            return Asset.Bronson.camping.image

        case .camping2:
            return Asset.Bronson.camping2.image

        case.cute:
            return Asset.Bronson.cute.image

        case.cyberlove:
            return Asset.Bronson.cyberlove.image

        case.cyberphoto:
            return Asset.Bronson.cyberPhoto.image

        case.ghostsinfield:
            return Asset.Bronson.alonesmoke.image

        case.dragonGirl:
            return Asset.Bronson.freedom.image

        case.cyberGoodBye:
            return Asset.Bronson.cuteBalcony.image

        case .tomInLove:
            return Asset.Bronson.tominlove.image

        case.mouseTrouble:
            return Asset.Bronson.stresscorrect.image

        case.dreamer:
            return Asset.Bronson.dreamer.image

        case.itIsWhatItIs:
            return Asset.Bronson.cheating.image

        case.cryingJerry:
            return Asset.Bronson.cryingjerry.image

        case.jerryNotGood:
            return Asset.Bronson.warrior.image

        case.anger:
            return Asset.Bronson.angercorrect.image

        case.shower:
            return Asset.Bronson.peaceout.image

        case.pack:
            return Asset.Bronson.china.image

        case.scooby:
            return Asset.Bronson.control.image
        }
    }
}

struct CardInfo {
    var type: RoundType
    var questionText: String
    var isCorrect: Bool
    var answer: AnswerText
}

extension CardInfo {
    static func startingData() -> [CardInfo] {
        return [
            CardInfo(type: .cyber, questionText: "Do you worry about abandonment?", isCorrect: true, answer: .anxious),
            CardInfo(type: .cybersad, questionText: "Do you question the loyality of others?", isCorrect: true, answer: .anxious),
            CardInfo(type: .camping1, questionText: "Is it difficult for you to trust others?", isCorrect: true, answer: .avoidant),
            CardInfo(type: .camping2, questionText: "Are you honest with your partner?", isCorrect: true, answer: .secure),
            CardInfo(type: .cyberlove, questionText: "Can you open up to your partner?", isCorrect: true, answer: .secure),
            CardInfo(type: .cyberphoto, questionText: "Do you worry about being forgotten?", isCorrect: true, answer: .anxious),
            CardInfo(type: .ghostsinfield, questionText: "Is it difficult to discuss issues with others?", isCorrect: true, answer: .secure),
            CardInfo(type: .cyberGoodBye, questionText: "Is it difficult for you to say goodbye?", isCorrect: true, answer: .anxious),
            CardInfo(type: .dragonGirl, questionText: "Do you enjoy being on your own?", isCorrect: true, answer: .avoidant),
            CardInfo(type: .tomInLove, questionText: "Do you crave love and attention?", isCorrect: true, answer: .anxious),
            CardInfo(type: .mouseTrouble, questionText: "Does being around others cause stress?", isCorrect: true, answer: .anxious),
            CardInfo(type: .dreamer, questionText: "Do put your own dreams first?", isCorrect: true, answer: .secure),
            CardInfo(type: .itIsWhatItIs, questionText: "Can you trust you partner alone?", isCorrect: true, answer: .secure),
            CardInfo(type: .scooby, questionText: "Must you be in control of every situation?", isCorrect: true, answer: .anxious),
            CardInfo(type: .cryingJerry, questionText: "Is it difficult to show your emotions?", isCorrect: true, answer: .avoidant),
            CardInfo(type: .jerryNotGood, questionText: "Are you hesitant to trust others?", isCorrect: true, answer: .avoidant),
            CardInfo(type: .anger, questionText: "Are you easily angred?", isCorrect: true, answer: .anxious),
            CardInfo(type: .shower, questionText: "Do you enjoy the little things?", isCorrect: true, answer: .secure),
            CardInfo(type: .pack, questionText: "Do you like being followed by others?", isCorrect: false, answer: .avoidant),
            CardInfo(type: .cute, questionText: "Can you get lost in the moment?", isCorrect: true, answer: .secure)
        ]
    }
}
