//
//  GradientView.swift
//  lab
//
//  Created by APPLE on 1/19/19.
//  Copyright © 2019 Geolab. All rights reserved.
//

import UIKit

public protocol GradientView: class {
    var color1: UIColor { get set }
    var color2: UIColor { get set }
    var location1: Double { get set }
    var location2: Double { get set }
    var directionString: String { get set }
    var colors: [CGColor] { get }
    var locations: [NSNumber] { get }
}

public extension GradientView where Self: UIView {
    func setupGradient() {
        gradientLayer.colors = colors
        gradientLayer.locations = locations
        gradientLayer.direction = GradientDirection.init(rawValue: directionString)
    }
}

