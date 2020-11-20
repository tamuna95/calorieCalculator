//
//  AppShadowView.swift
//  lab
//
//  Created by APPLE on 1/19/19.
//  Copyright © 2019 Geolab. All rights reserved.
//

import UIKit

@IBDesignable
open class AppShadowView: AppGradientView, ShadowView {
    @IBInspectable open var shadowOpacity: Float = 1 {
        didSet {
            update()
        }
    }
    
    @IBInspectable open var shadowOffset: CGSize = .zero {
        didSet {
            update()
        }
    }
    
    @IBInspectable open var shadowColor: UIColor = .clear {
        didSet {
            update()
        }
    }
    
    @IBInspectable open var shadowBlur: CGFloat = 3 {
        didSet {
            update()
        }
    }
    
    open override func update() {
        super.update()
        
        setupShadow()
    }
}





