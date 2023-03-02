import UIKit

public extension UIView {
    func pinEdges(to view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            leadingAnchor.constraint(equalTo: view.leadingAnchor),
            trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topAnchor.constraint(equalTo: view.topAnchor),
            bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    func addBlurEffect(rounded: Bool = false) {
        let visualEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .regular))
        visualEffectView.alpha = 0.5

        if rounded {
            visualEffectView.clipsToBounds = true
            visualEffectView.layer.cornerRadius = 10
            visualEffectView.layer.cornerCurve = .continuous
        }

        insertSubview(visualEffectView, at: 0)
        visualEffectView.pinEdges(to: self)
    }

    func addGradient(colors: [UIColor]) {
        let view = UIView()
        let gradient = CAGradientLayer()

        gradient.frame = view.bounds
        gradient.colors = colors

        self.layer.insertSublayer(gradient, at: 0)
    }
}

extension UIStackView {
    func removeAll() {
        for view in self.arrangedSubviews {
            view.removeFromSuperview()
        }
    }
}
