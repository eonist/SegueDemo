import UIKit

class ViewController: UIViewController {}
/**
 * Overrides
 */
extension ViewController {
   override var prefersStatusBarHidden: Bool { return true }
   override func viewDidAppear(_ animated: Bool) {
      Swift.print("viewDidAppear")
      super.viewDidAppear(animated)
      view.frame = UIScreen.main.bounds.inset(by: view.safeAreaInsets) // i guess this adds support for iphonex etc
   }
   override func viewDidLoad() {
      Swift.print("viewDidLoad")
      super.viewDidLoad()
      self.view = View(frame: .zero)
   }
}

