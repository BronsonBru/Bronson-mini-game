import UIKit

@nonobjc extension UIViewController {
    func add(_ child: UIViewController, frame: CGRect? = nil) {
        addChild(child)
        if let frame = frame {
            child.view.frame = frame
        }
        view.addSubview(child.view)
        child.didMove(toParent: self)
    }

    func remove() {
        willMove(toParent: nil)
        view.removeFromSuperview()
        removeFromParent()
    }

    func removeAllChildren() {
        for child in self.children {
            child.remove()
        }
    }

    func addChildViewController(_ controller: UIViewController, to stack: UIStackView, at index: Int? = nil) {
        addChild(controller)
        if let insertionIndex = index {
            stack.insertArrangedSubview(controller.view, at: insertionIndex)
        } else {
            stack.addArrangedSubview(controller.view)
        }
        controller.didMove(toParent: self)
    }

    func allowHidingKeyboardOnViewTap() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

public protocol PopoverPresentationSourceView {}
extension UIBarButtonItem: PopoverPresentationSourceView {}
extension UIView: PopoverPresentationSourceView {}

public extension UIPopoverPresentationControllerDelegate where Self: UIViewController {
    func present(popover: UIViewController,
                 from sourceView: PopoverPresentationSourceView,
                 size: CGSize,
                 arrowDirection: UIPopoverArrowDirection) {
        popover.modalPresentationStyle = .popover
        popover.preferredContentSize = size
        let popoverController = popover.popoverPresentationController
        popoverController?.delegate = self
        if let aView = sourceView as? UIView {
            popoverController?.sourceView = aView
            popoverController?.sourceRect = CGRect(x: aView.bounds.maxX - 30, y: aView.bounds.maxY - 5, width: 0, height: 0)
        } else if let barButtonItem = sourceView as? UIBarButtonItem {
            popoverController?.barButtonItem = barButtonItem
        }
        popoverController?.permittedArrowDirections = arrowDirection
        present(popover, animated: true, completion: nil)
    }
}
