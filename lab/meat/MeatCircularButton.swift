//
//  MeatCircularButton.swift
//  lab
//
//  Created by APPLE on 1/23/19.
//  Copyright © 2019 Geolab. All rights reserved.
//

import UIKit

class MeatCircularButton: UIButton {

    override func layoutSubviews() {
        super.layoutSubviews()
        layer.cornerRadius = bounds.width/2
        clipsToBounds = true
    }

}
