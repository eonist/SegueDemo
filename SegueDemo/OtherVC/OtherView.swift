import UIKit
import With

class OtherView: UIView {
   lazy var backBtn: UIButton = createBackButton()
   lazy var btn: UIButton = createButton()
   /**
    * Initiate
    */
   init() {
      super.init(frame: .zero)
      backgroundColor = .green
      _ = btn
      _ = backBtn
   }
   /**
    * Boilerplate
    */
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
/**
 * Create
 */
extension OtherView {
   /**
    * back btn
    */
   func createBackButton() -> UIButton {
      with(.init()) {
         $0.setTitleColor(.white, for: .normal)
         $0.contentHorizontalAlignment = .left
         $0.setTitle("Back", for: .normal)
         $0.titleLabel?.textAlignment = .center
         $0.backgroundColor = .orange
         $0.addTarget(self, action: #selector(backButtonTouched), for: .touchUpInside)
         addSubview($0)
         $0.anchorAndSize(to: self, width: 80, height: 40, align: .topLeft, alignTo: .topLeft, offset: .init(x: 0, y: 0))
      }
   }
   /**
    * btn
    */
   func createButton() -> UIButton {
      with(.init()) {
         $0.setTitleColor(.white, for: .normal)
         $0.contentHorizontalAlignment = .left
         $0.setTitle("Button", for: .normal)
         $0.titleLabel?.textAlignment = .center
         $0.backgroundColor = .purple
         $0.addTarget(self, action: #selector(buttonTouched), for: .touchUpInside)
         addSubview($0)
         $0.anchorAndSize(to: backBtn, width: 80, height: 40, align: .topLeft, alignTo: .bottomLeft, offset: .init(x: 0, y: 0))
      }
   }
}
/**
 * Event
 */
extension OtherView {
   /**
    * touch up inside
    */
   @objc func backButtonTouched(sender:UIButton!) {
      self.window!.layer.add(OtherVC.transition(direction: .fromLeft), forKey: kCATransition) // attach right to left transition animation
      self.parentViewController?.dismiss(animated: false) {}
   }
   @objc func buttonTouched(sender:UIButton!) {
      showThirdVC()
   }
   /**
    * show detail view
    */
   func showThirdVC() {
      self.window?.layer.add(UIViewController.transition(direction: .fromRight), forKey: kCATransition) // Attach right to left transition animation
      let vc: ThirdVC = .init()
      self.parentViewController?.present(vc, animated: false)
   }
}
