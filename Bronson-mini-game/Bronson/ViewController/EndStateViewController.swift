import UIKit

protocol EndStateDelegate {
    func resetGame()
}

class EndStateViewController: UIViewController {
    @IBOutlet weak var endSateImage: UIImageView!
    @IBOutlet weak var attachmentStyleLabel: UILabel!
    @IBOutlet weak var attachmentTypeLabel: UILabel!
    @IBOutlet weak var attachmentDescriptionText: UILabel!
    @IBOutlet weak var restartButton: UIButton!

    @IBOutlet weak var scrollView: UIScrollView!

    var delegate: EndStateDelegate?
    var answers: [AnswerText] = []
    var answerdata = AnswerInfo.self


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        attachmentType()
        EndStateBarButtonItems()
        navigationController?.navigationBar.tintColor = .label
        restartButton.addTarget(self, action: #selector(restartGame), for: .touchUpInside)

    }

    @objc func restartGame() {
        delegate?.resetGame()

        dismiss(animated: true)
    }




    func attachmentType() {
        let highestCount = highestCountFunc()
        if let answeringText = highestCount?.answeringText,
            let type = highestCount?.type.answerText() {
            attachmentTypeLabel.text = type
            attachmentDescriptionText.text = answeringText
        }
    }

    private func highestCountFunc() -> AnswerInfo? {
        if let highestCount = workOutAttachmentType().first?.text{
            switch highestCount {

            case .secure:
                return AnswerInfo(type: .secure, answeringText: "Secure attachment is the healthiest form of attachment. It describes an attachment where a child feels comforted by the presence of their caregiver. Securely attached children feel protected and that they have someone to rely on. Children with secure attachment prefer their caregiver over strangers, seek comfort in their caregiver, and are comfortable exploring their environment with their caregiver present. Secure attachment is seen as crucial to healthy development because it has lasting impacts on an individual. By growing up with a sense of stability and care, securely attached children find it easier to investigate and interact with the world around them. Into adulthood, secure attachment translates into higher self-esteem, more long-term healthy relationships, and an increased ability to trust others for social support. You can replicate a healthy bond with others, in all types of relationships.")
            case .anxious:
                return AnswerInfo(type: .anxious, answeringText: "Another type of insecure bonding is ambivalent attachment, also called anxious preoccupied attachment. Children with this insecure attachment are clingy to their caregiver, yet when their caregiver attempts to comfort them, the child remains distressed. This can be hard for the caregiver because they are consistently unable to soothe their child, which can lead to a negative cycle of interaction. The child wants to be close with their caregiver but doesn’t fully trust them for support. As a child with ambivalent attachment grows, this bonding style will often lead to clinginess and distrust in other types of relationships that develop in their life.")
            case .avoidant:
                return AnswerInfo(type: .avoidant, answeringText: "Avoidant attachment is one of the insecure attachment styles developed in attachment theory, characterized by a child who avoids their caregiver and does not seek comfort from them. These children will show little to no preference for their caregiver over a stranger. They will not seek out their parents when in times of distress. Avoidant attachment is formed when a child feels they cannot consistently count on their caregiver to comfort and care for them. An avoidant child sees no preference for their caregiver over a stranger because it’s possible the stranger may be more attuned to their needs than their actual caregiver. Those who grow up with an avoidant attachment are more likely to have challenges with intimacy later in life and be closed off from social relationships. By not growing up with a close connection to their caregiver, they have trouble finding a healthy connection to others in their life.")
            }
        }

        return nil
    }

    func workOutAttachmentType() -> [AnswerCountInfo]  {
        let array = [count(for: .secure),
                     count(for: .anxious),
                     count(for: .avoidant)
                    ]
        let sortedArray = array.sorted {
            $0.count > $1.count
        }
        return sortedArray
    }

    func count(for answerText: AnswerText) -> AnswerCountInfo {
        let count = answers.filter {
            return $0 == answerText
        }.count
        return AnswerCountInfo(text: answerText, count: count)
    }

    func EndStateBarButtonItems() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .close , target: self, action: #selector(dismissEndSelf))

    }
    @objc private func dismissEndSelf() {

    }
}

struct AnswerCountInfo {
    let text: AnswerText
    let count: Int
}
