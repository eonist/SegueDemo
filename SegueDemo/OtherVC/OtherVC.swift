import UIKit
import With

class OtherVC: UIViewController {
   override var modalPresentationStyle: UIModalPresentationStyle { get { return .fullScreen } set { super.modalPresentationStyle = newValue } } // forces the VC to be regular VC and not pop-up-from-bottom which is standard it seems
   init() {
      super.init(nibName: nil, bundle: nil)
   }
   /**
    * Boilerplate
    */
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
   /**
    *  VC - Init
    */
   override func viewDidLoad() {
      super.viewDidLoad()
      view = OtherView()
   }
   override func viewDidAppear(_ animated: Bool) {
      super.viewDidAppear(animated)
      view.frame = UIScreen.main.bounds.inset(by: view.safeAreaInsets) // why is this here? iphone x?
   }
   override var prefersStatusBarHidden: Bool { return true }
}
