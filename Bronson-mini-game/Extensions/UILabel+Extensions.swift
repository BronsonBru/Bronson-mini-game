import Foundation
import UIKit

public extension UILabel {
    func update(style: TextStyle) {
        update(textColor: style.textColor, font: style.font)
    }

    func update(text: String?, style: TextStyle) {
        self.text = text
        update(style: style)
    }

    func update(textColor: UIColor?, font: UIFont?) {
        self.textColor = textColor
        self.font = font
    }

    func prependSymbol(named systemName: String) {
        let config = UIImage.SymbolConfiguration(font: self.font)
        let symbol = UIImage(systemName: systemName, withConfiguration: config)?.withTintColor(self.textColor)

        let attachment = NSTextAttachment()
        attachment.image = symbol

        let imageString = NSMutableAttributedString(attachment: attachment)
        let text = self.attributedText ?? NSAttributedString(string: self.text ?? "")
        imageString.append(text)

        self.attributedText = imageString
    }

    func setOrHideIfNil(_ text: String?) {
        if text != nil {
            self.text = text
            self.isHidden = false
        } else {
            self.isHidden = true
        }
    }

    func applyBlackBoldStyle() {
        self.textColor = .black
        self.font = .boldSystemFont(ofSize: 20)
        self.textAlignment = .center
        self.translatesAutoresizingMaskIntoConstraints = false
        self.numberOfLines = 0
    }

    func applyPinkHeadingStyle() {
        self.textColor = .systemPink
        self.font = .systemFont(ofSize: 35)
        self.textAlignment = .center
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    func applyGrayLabelStyle() {
        self.textColor = .systemGray
        self.font = .systemFont(ofSize: 15)
        self.textAlignment = .center
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
