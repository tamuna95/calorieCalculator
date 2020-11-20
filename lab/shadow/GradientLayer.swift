//
//  GradientLayer.swift
//  lab
//
//  Created by APPLE on 1/19/19.
//  Copyright © 2019 Geolab. All rights reserved.
//

import UIKit

open class GradientLayer : CAGradientLayer {
    var direction: GradientDirection? {
        didSet {
            startPoint = direction?.gradientType.x ?? .zero
            endPoint = direction?.gradientType.y ?? .zero
        }
    }
}

