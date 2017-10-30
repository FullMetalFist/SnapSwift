//
//  SnapFont.swift
//  SnapSwift
//
//  Created by Michael Vilabrera on 10/30/17.
//  Copyright © 2017 Michael Vilabrera. All rights reserved.
//

import UIKit

extension UIFont {
    class func snapFontWithSize(size: CGFloat) -> UIFont {
        /*
         something missed in implementation:
         'NSInvalidArgumentException', reason: '-[UIFont ctFontRef]:
         */
        guard let actionMan = UIFont(name: "ActionMan", size: size) else
        { return UIFont() }
        return actionMan
    }
}
