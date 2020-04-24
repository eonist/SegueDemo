import UIKit
import With
import Spatial
/**
 * - Fixme: ⚠️️ Add support for ipad rotation: Put autolayout code in: viewDidLayoutSubviews ref: https://theswiftdev.com/2017/10/31/ios-auto-layout-tutorial-programmatically/
 */
class View: UIView { // - Fixme: rename to PlayListView
   lazy var btn: UIButton = createButton()
   /**
    * Initiate
    */
   override init(frame: CGRect) {
      Swift.print("View.init")
      super.init(frame: frame)
      backgroundColor = .orange
      _ = btn
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
extension View {
   /**
    * btn
    */
   func createButton() -> UIButton {
      with(.init()) {
         $0.setTitleColor(.white, for: .normal)
         $0.contentHorizontalAlignment = .left
         $0.setTitle("Button", for: .normal)
         $0.titleLabel?.textAlignment = .center
         $0.backgroundColor = .blue
         $0.addTarget(self, action: #selector(buttonTouched), for: .touchUpInside)
         addSubview($0)
         $0.anchorAndSize(to: self, width: 80, height: 40, align: .topLeft, alignTo: .topLeft, offset: .init(x: 0, y: 0))
      }
   }
   /**
    * touch up inside
    */
   @objc func buttonTouched(sender:UIButton!) {
//      print("It Works!!!")
      transition(toVC: OtherVC())
   }
}
