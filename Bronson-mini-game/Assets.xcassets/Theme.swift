import UIKit

enum Theme {
    enum Color {
        // Landing
        static var landingCardBackground: UIColor = Asset.Colors.Landing.mainLandingCardBackground.color
        static var landingColorShadow: UIColor = Asset.Colors.Landing.mainLandingColorShadow.color

        // Zaynia
        static var lightGoldGradient: UIColor = Asset.Colors.Zaynia.zayniaProductPrimary.color
        static var darkGoldGradient: UIColor = Asset.Colors.Zaynia.zayniaProductSecondary.color

        // Nkosi
        static var productPrimary: UIColor = Asset.Colors.Nkosi.nkosiProductPrimary.color
        static var productSecondary: UIColor = Asset.Colors.Nkosi.nkosiProductSecondary.color
        static var productTertiary: UIColor = Asset.Colors.Nkosi.nkosiProductTertiary.color
    }

    enum Button {
        static var cornerRadius: CGFloat = 12
    }

    enum Font {
        // MARK: Dynamic Type

        // Size: 28.0, Heavy
        static var title1Font: UIFont {
            return UIFont.systemFont(ofSize: title1Descriptor.pointSize, weight: UIFont.Weight.heavy)
        }

        // Size: 22.0, Heavy
        static var title2Font: UIFont {
            return UIFont.systemFont(ofSize: title2Descriptor.pointSize, weight: UIFont.Weight.heavy)
        }

        // Size: 20.0, Heavy
        static var title3Font: UIFont {
            return UIFont.systemFont(ofSize: title3Descriptor.pointSize, weight: UIFont.Weight.heavy)
        }

        // Size: 17.0, SemiBold
        static var headlineFont: UIFont {
            return UIFont.systemFont(ofSize: headlineDescriptor.pointSize, weight: UIFont.Weight.semibold)
        }

        // Size: 17.0, Regular
        static var bodyFont: UIFont {
            return UIFont.systemFont(ofSize: bodyDescriptor.pointSize, weight: UIFont.Weight.regular)
        }

        // Size: 15.0, Regular
        static var subheadlineFont: UIFont {
            return UIFont.systemFont(ofSize: subheadlineDescriptor.pointSize, weight: UIFont.Weight.regular)
        }

        // Size: 15.0, SemiBold
        static var subheadlineSemiBoldFont: UIFont {
            return UIFont.systemFont(ofSize: subheadlineDescriptor.pointSize, weight: UIFont.Weight.semibold)
        }

        // Size: 13.0, Regular
        static var footnoteFont: UIFont {
            return UIFont.systemFont(ofSize: footnoteDescriptor.pointSize, weight: UIFont.Weight.regular)
        }
    }
}

// MARK: Font Descriptors

private extension Theme.Font {
    static let title1Descriptor = UIFontDescriptor.preferredFontDescriptor(withTextStyle: UIFont.TextStyle.title1)
    static let title2Descriptor = UIFontDescriptor.preferredFontDescriptor(withTextStyle: UIFont.TextStyle.title2)
    static let title3Descriptor = UIFontDescriptor.preferredFontDescriptor(withTextStyle: UIFont.TextStyle.title3)
    static let headlineDescriptor = UIFontDescriptor.preferredFontDescriptor(withTextStyle: UIFont.TextStyle.headline)
    static let bodyDescriptor = UIFontDescriptor.preferredFontDescriptor(withTextStyle: UIFont.TextStyle.body)
    static let subheadlineDescriptor = UIFontDescriptor.preferredFontDescriptor(withTextStyle: UIFont.TextStyle.subheadline)
    static let footnoteDescriptor = UIFontDescriptor.preferredFontDescriptor(withTextStyle: UIFont.TextStyle.footnote)
}
