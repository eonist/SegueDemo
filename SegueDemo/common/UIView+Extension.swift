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
