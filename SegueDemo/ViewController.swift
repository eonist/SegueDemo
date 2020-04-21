import UIKit

class ViewController: UIViewController {}
/**
 * Overrides
 */
extension ViewController {
    override var prefersStatusBarHidden: Bool { return true }
   ///
   /// Set title
   /// - Note: I guess this must be set from this method in order for it to work
   ///
   override func viewWillAppear(_ animated: Bool) {
      Swift.print("viewWillAppear")
      super.viewWillAppear(animated)
//      let title = "Title" // AppDelegate.Titles.primary.localized
//      navigationItem.title = title
   }
   override func viewDidAppear(_ animated: Bool) {
      Swift.print("viewDidAppear")
      super.viewDidAppear(animated)
      view.frame = UIScreen.main.bounds.inset(by: view.safeAreaInsets) // i guess this adds support for iphonex etc
   }
   override func viewDidLoad() {
      Swift.print("viewDidLoad")
      super.viewDidLoad()
      self.view = View(frame: .zero)
      view.backgroundColor = .orange
   }
}
