import Foundation
import UIKit

public protocol NibLoadable: AnyObject {
    static func nib() -> UINib
    static func loadFromNib(owner: Any?) -> Self?
    static func bundle() -> Bundle
}

extension NibLoadable {
    public static func nib() -> UINib {
        let bundle = Bundle(for: self)
        let nib = UINib(nibName: String(describing: self), bundle: bundle)
        return nib
    }

    public static func bundle() -> Bundle {
        return Bundle(for: self)
    }
}

extension NibLoadable where Self: UIView {
    public static func viewFromNib(owner: Any?) -> UIView? {
        return loadFromNib(owner: owner)
    }

    public static func loadFromNib(owner: Any? = nil) -> Self? {
        let bundle = Bundle(for: self)
        let views = bundle.loadNibNamed(String(describing: self), owner: owner, options: nil)
        guard let view = views?.first as? Self else {
            return nil
        }
        return view
    }
}

extension NibLoadable where Self: UIViewController {
    public static func viewControllerFromNib() -> Self? {
        return loadFromNib()
    }

    public static func loadFromNib(owner: Any? = nil) -> Self? {
        let viewController = self.init(nibName: String(describing: self), bundle: Bundle(for: self))
        return viewController
    }
}
