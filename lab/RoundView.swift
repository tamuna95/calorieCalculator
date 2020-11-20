//
//  RoundView.swift
//  lab
//
//  Created by APPLE on 2/15/19.
//  Copyright © 2019 Geolab. All rights reserved.
//

import UIKit

class RoundView: UIView {
    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = bounds.width/2
        clipsToBounds = true
    }
}
