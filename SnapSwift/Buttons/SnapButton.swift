//
//  SnapButton.swift
//  SnapSwift
//
//  Created by Michael Vilabrera on 10/30/17.
//  Copyright © 2017 Michael Vilabrera. All rights reserved.
//

import UIKit

extension UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    func applySnapStyle() {
        self.titleLabel?.font = UIFont.init(name: "Action Man", size: 20.0)
//        let buttonImage = UIImage.init(named: "Button")?.resizableImage(withCapInsets: .init(top: 0.0, left: 15, bottom: 30.0, right: 160.0))
//        self.setImage(buttonImage, for: .normal)
//        let pressedImage = UIImage.init(named: "ButtonPressed")?.resizableImage(withCapInsets: .init(top: 0.0, left: 15, bottom: 30.0, right: 160.0))
//        self.setImage(pressedImage, for: .highlighted)
    }
}

@IBDesignable extension UIButton {
    @IBInspectable var borderWidth: CGFloat {
        set {
            layer.borderWidth = newValue
        }
        get {
            return layer.borderWidth
        }
    }
    @IBInspectable var cornerRadius: CGFloat {
        set {
            layer.cornerRadius = newValue
        }
        get {
            return layer.cornerRadius
        }
    }
    @IBInspectable var borderColor: UIColor? {
        set {
            guard let uiColor = newValue else {return}
            layer.borderColor = uiColor.cgColor
        }
        get {
            guard let color = layer.borderColor else {return nil}
            return UIColor(cgColor: color)
        }
    }
}
