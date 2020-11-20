//
//  QuarterView.swift
//  lab
//
//  Created by APPLE on 2/4/19.
//  Copyright © 2019 Geolab. All rights reserved.
//

import UIKit
@IBDesignable

class QuarterView: UIView {
}

extension UIView {
    
    @IBInspectable
    var corRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
        }
    }
}
//class QuarterView: UIView {
//
//
//        @IBInspectable var borderColor: UIColor = UIColor.white {
//            didSet {
//                self.layer.borderColor = borderColor.cgColor
//            }
//        }
//
//        @IBInspectable var borderWidth: CGFloat = 2.0 {
//            didSet {
//                self.layer.borderWidth = borderWidth
//            }
//        }
//
//        @IBInspectable var cornerRadius: CGFloat = 0.0 {
//            didSet {
//                self.layer.cornerRadius = cornerRadius
//            }
//        }
//
//    }


