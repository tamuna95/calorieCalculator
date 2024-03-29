//
//  AppCircularView.swift
//  lab
//
//  Created by APPLE on 1/19/19.
//  Copyright © 2019 Geolab. All rights reserved.
//

import UIKit

@IBDesignable
open class AppCircularView: UIView, CircularView {
    @IBInspectable open var hasSquareBorderRadius: Bool = false {
        didSet {
            update()
        }
    }
    
    @IBInspectable open var cornerRadius: CGFloat = 0 {
        didSet {
            update()
        }
    }
    
    @IBInspectable open var borderWidth: CGFloat = 0 {
        didSet {
            update()
        }
    }
    
    @IBInspectable open var borderColor: UIColor = .clear {
        didSet {
            update()
        }
    }
    
    public var normalizedCornerRadius: CGFloat {
        return hasSquareBorderRadius ? bounds.height / 2 : cornerRadius
    }
    
    public lazy var borderLayer: CAShapeLayer = {
        let borderLayer = CAShapeLayer()
        self.layer.addSublayer(borderLayer)
        return borderLayer
    }()
    
    public lazy var maskLayer: CAShapeLayer = { [unowned self] in
        let mask = makeMaskLayer(path: makeMaskLayerPath())
        self.layer.mask = mask
        return mask
        }()
    
    open func update() {
        setupCornerRadius()
    }
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        update()
    }
}


