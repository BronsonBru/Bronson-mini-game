import UIKit

class CardView: UIView, NibLoadable {
    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var imageText: UILabel!
    @IBOutlet weak var card: UIView!

    private var shadowLayer: CAShapeLayer?

    func updateElements(with text: String, image: UIImage) {
        imageText.text = text
        imageView.image = image
    }

    private func createShadow() {
            layer.cornerRadius = 25
            layer.masksToBounds = true
            layer.shadowColor = UIColor.black.cgColor
            layer.shadowPath = shadowLayer?.path
            layer.shadowOpacity = 0.5
            layer.shadowRadius = 10
            layer.shouldRasterize = true
            layer.rasterizationScale = UIScreen.main.scale
            layer.masksToBounds = false
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        createShadow()
        imageView.layer.cornerRadius = 25
        imageView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }
}
