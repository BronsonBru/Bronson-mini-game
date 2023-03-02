import UIKit

class MainViewController: UIViewController, NibLoadable, EndStateDelegate {


    @IBOutlet weak var containerStackView: UIStackView!
    @IBOutlet weak var container2: UIStackView!
    @IBOutlet var card: UIView!
    @IBOutlet weak var card2: UIView!
    @IBOutlet weak var greenCheck: UIImageView!
    @IBOutlet weak var greenCheck2: UIImageView!

    var orginalCardPosition: CGPoint?
    var divisor: CGFloat?
    var cards = CardInfo.startingData()
    var delegate: PlayViewControllerDelegate?
    var points  = 0
    var answers: [AnswerText] = []
    private func updatePoints() {
        points += 1
        navigationItem.rightBarButtonItem?.title = "\(points)/20"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = L10n.Tabs.Tab1.title
        loadViewIfNeeded()
        divisor = (view.frame.width / 2) / 0.51
        addCardView()
        addCardView2()
        navigationController?.navigationBar.tintColor = .label
        configureBarButtonItems()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        orginalCardPosition = card.center
        greenCheck.layer.cornerRadius = 25
        greenCheck2.layer.cornerRadius = 25
    }

    func configureBarButtonItems() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .close , target: self, action: #selector(dismissSelf))

//        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "\(points)/20", style: .plain, target: self, action: nil)
    }

    @objc private func dismissSelf() {
        dismiss(animated: true, completion: nil)
    }

    private func updateCardView(_ cardView: CardView, with index: Int) {
        if index < cards.count {
            let cardData = cards[index]
            cardView.updateElements(with: cardData.questionText, image: cardData.type.image())
        }
    }

    func createCardView(with index: Int) -> CardView? {
        guard let cardView = CardView.loadFromNib() else {
            return nil
        }
        updateCardView(cardView, with: index)
        cardView.translatesAutoresizingMaskIntoConstraints = false
        return cardView
    }

    func addCardView() {
        guard let cardView = createCardView(with: 0)
        else { return }
        containerStackView.removeAll()
        containerStackView.addArrangedSubview(cardView)
        let panGuesture = UIPanGestureRecognizer(target: self, action: #selector(panCard(_:)))
        containerStackView.addGestureRecognizer(panGuesture)
    }

    func addCardView2() {
        guard let cardView = createCardView(with: 1)
        else { return }
        container2.removeAll()
        container2.addArrangedSubview(cardView)
        let panGuesture = UIPanGestureRecognizer(target: self, action: #selector(panCard2(_:)))
        container2.addGestureRecognizer(panGuesture)
        view.sendSubviewToBack(card2)
    }


    @IBAction func panCard(_ sender: UIPanGestureRecognizer) {
        handlePanGuesture(sender, card: card) {
        self.prepareNewData(for: self.containerStackView)
    }
}

    @IBAction func panCard2(_ sender: UIPanGestureRecognizer) {
        handlePanGuesture(sender, card: card2) {
        self.prepareNewData(for: self.container2)
    }
}

    func prepareNewData(for container: UIStackView) {
        cards.removeFirst()
        container.arrangedSubviews.first?.removeFromSuperview()
        if cards.count > 1 {
            if let cardView = createCardView(with: 1) {
                container.addArrangedSubview(cardView)
            }
        } else if cards.count > 0 {

        } else {
            let endStateVC = EndStateViewController()
            endStateVC.delegate = self
            endStateVC.answers = answers
            endStateVC.modalPresentationStyle = .fullScreen
            present(endStateVC, animated: true , completion: nil)
        }
    }
    
    func resetGame() {
        cards = CardInfo.startingData()
        addCardView()
        addCardView2()
        card.alpha = 1
        card2.alpha = 1
        answers.removeAll()

    }

    func changeImageColour() {
        let xFromCenter = card.center.x - view.center.x
        if xFromCenter > 0 {
            greenCheck.image = Asset.Bronson.greencheck.image
        } else {
            greenCheck.image = Asset.Bronson.redCheck.image
        }
        greenCheck.alpha = (abs(xFromCenter) / view.center.x ) / 1.5
    }

    func changeImageColour2() {
        let xFromCenter = card2.center.x - view.center.x
        if xFromCenter > 0 {
            greenCheck2.image = Asset.Bronson.greencheck.image
        } else {
            greenCheck2.image = Asset.Bronson.redCheck.image
        }
        greenCheck2.alpha = (abs(xFromCenter) / view.center.x ) / 1.5
    }

    func handlePanGuesture(_ sender: UIPanGestureRecognizer, card: UIView, completion: @escaping () -> ()) {
        let point = sender.translation(in: view)
        card.center = CGPoint(x: view.center.x + point.x, y: view.center.y + point.y)
        let xFromCenter = card.center.x - view.center.x
        let scale = min(125 / abs(xFromCenter), 1)
        card.transform = CGAffineTransform(rotationAngle: xFromCenter / divisor!).scaledBy(x: scale, y: scale)
        if sender.state == UIGestureRecognizer.State.ended {
            if card.center.x < 75 {
                moveOffToLeft(card, completion: completion)

            } else if card.center.x > (view.frame.width - 75) {
                moveOffToRight(card, completion: completion)

            } else {
                moveToOrginalPosition(card)
            }
        }
        changeImageColour()
        changeImageColour2()
    }

    func moveOffToRight(_ card: UIView, completion: @escaping () -> ()) {
        if cards[0].isCorrect {
            delegate?.updatePoints()
            if let answer = cards.first?.answer {
                answers.append(answer)
            }
        }
        UIView.animate(withDuration: 0.3, animations: {
            card.center = CGPoint(x: card.center.x + 200, y: card.center.y)
        }) { _ in
            self.handleOffScreen(card)
            completion()
        }
    }

    func moveOffToLeft(_ card: UIView, completion: @escaping () -> ()) {
        if cards[0].isCorrect {

        } else {
            delegate?.updatePoints()
            if let answer = cards.first?.answer {
                answers.append(answer)
            }
        }

        UIView.animate(withDuration: 0.3, animations: {
            card.center = CGPoint(x: card.center.x - 200, y: card.center.y)
        }) { _ in
            self.handleOffScreen(card)
            completion()
        }
    }


    func moveToOrginalPosition(_ card: UIView) {
        UIView.animate(withDuration: 0.2, animations: {
            card.center = self.orginalCardPosition ?? self.view.center
        }) { _ in
            if self.cards.count > 1 {
                card.alpha = 1
            }
            card.transform = .identity
            self.greenCheck.alpha = 0
            self.greenCheck2.alpha = 0
        }
    }

    func handleOffScreen(_ card: UIView) {
        self.view.sendSubviewToBack(card)
        card.alpha = 0
        moveToOrginalPosition(card)

    }
}
