//
//  CircularDairyView.swift
//  lab
//
//  Created by APPLE on 1/23/19.
//  Copyright © 2019 Geolab. All rights reserved.
//

import UIKit

@IBDesignable class CircularDairyView: UIView {
    @IBInspectable var cornerRadius :CGFloat = 0 {
        
    
    didSet {
    setupCornerRadius()
    }
    }
        func setupCornerRadius(){
        layer.cornerRadius = cornerRadius
        clipsToBounds = cornerRadius > 0
        
        }
    override func layoutSubviews() {
        
            super.layoutSubviews()
            setupCornerRadius()
    }
    }

