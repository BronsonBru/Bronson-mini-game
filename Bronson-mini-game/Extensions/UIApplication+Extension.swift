import Foundation
import UIKit

extension UIApplication {
    func gameSelectionScreen() -> UIViewController? {
        return keyWindow?.rootViewController?.children.first
    }

    func currentGameRoot() -> UIViewController? {
        return gameSelectionScreen()?.presentedViewController
    }
}
