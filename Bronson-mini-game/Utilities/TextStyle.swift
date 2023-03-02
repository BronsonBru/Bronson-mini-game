import UIKit

public struct TextStyle {
    let textColor: UIColor?
    let font: UIFont?

    public init(textColor: UIColor? = nil, font: UIFont? = nil) {
        self.textColor = textColor
        self.font = font
    }
}
