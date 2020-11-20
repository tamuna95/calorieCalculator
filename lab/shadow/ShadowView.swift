//
//  ShadowView.swift
//  lab
//
//  Created by APPLE on 1/19/19.
//  Copyright © 2019 Geolab. All rights reserved.
//

import UIKit

public protocol ShadowView: class {
    var shadowOpacity: Float { get set }
    var shadowOffset: CGSize { get set }
    var shadowColor: UIColor { get set }
    var shadowBlur: CGFloat { get set }
}

public extension ShadowView where Self: UIView, Self: CircularView {
    func setupShadow() {
        layer.mask = nil
        layer.cornerRadius = normalizedCornerRadius
        layer.borderWidth = borderWidth
        layer.borderColor = borderColor.cgColor
        
        layer.shadowOpacity = shadowOpacity
        layer.shadowOffset = shadowOffset
        layer.shadowColor = shadowColor.cgColor
        layer.shadowRadius = shadowBlur
        layer.masksToBounds = false
        
        layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: normalizedCornerRadius).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = UIScreen.main.scale
    }
}

