import UIKit
import With

class ThirdView: UIView {
   lazy var backBtn: UIButton = createBackButton()
   /**
    * Initiate
    */
   init() {
      super.init(frame: .zero)
      backgroundColor = .yellow
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
extension ThirdView {
   /**
    * back btn
    */
   func createBackButton() -> UIButton {
      with(.init()) {
         $0.setTitleColor(.white, for: .normal)
         $0.contentHorizontalAlignment = .left
         $0.setTitle("Back", for: .normal)
         $0.titleLabel?.textAlignment = .center
         $0.backgroundColor = .gray
         $0.addTarget(self, action: #selector(backButtonTouched), for: .touchUpInside)
         addSubview($0)
         $0.anchorAndSize(to: self, width: 80, height: 40, align: .topLeft, alignTo: .topLeft, offset: .init(x: 0, y: 0))
      }
   }
}
/**
 * Event
 */
extension ThirdView {
   /**
    * touch up inside
    */
   @objc func backButtonTouched(sender: UIButton!) {
      self.window!.layer.add(OtherVC.transition(direction: .fromLeft), forKey: kCATransition) // attach right to left transition animation
      self.parentViewController?.dismiss(animated: false) {}
   }
}
