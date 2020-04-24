import UIKit

extension UIView {
   /**
    * Returns parent viewController
    * ## Examples:
    * self.parentViewController?.view.backgroundColor = .green
    */
   public var parentViewController: UIViewController? {
      var parentResponder: UIResponder? = self
      while parentResponder != nil {
         parentResponder = parentResponder!.next
         if let viewController = parentResponder as? UIViewController {
            return viewController
         }
      }
      return nil
   }
}
/**
 * Transition to viewcontrollers
 */
extension UIView {
   typealias OnTransitionComplete = () -> Void
   static let defaultOnTransitionComplete: OnTransitionComplete = {}
   /**
    * Transition to other ViewController
    */
   func transition(toVC: UIViewController, dir: CATransitionSubtype = .fromRight, onComplete: @escaping OnTransitionComplete = defaultOnTransitionComplete) {
      self.window?.layer.add(UIViewController.transition(direction: dir), forKey: kCATransition) // Attach right to left transition animation
      let vc: ThirdVC = .init()
      self.parentViewController?.present(vc, animated: false) { onComplete() }
   }
   /**
    * Transition back
    */
   func transitionBack(dir: CATransitionSubtype = .fromLeft, onComplete: @escaping OnTransitionComplete = defaultOnTransitionComplete) {
      self.window?.layer.add(UIViewController.transition(direction: dir), forKey: kCATransition) // Attach right to left transition animation
      self.parentViewController?.dismiss(animated: false) { onComplete() }
   }
}
