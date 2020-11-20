//
//  File1.swift
//  lab
//
//  Created by APPLE on 2/9/19.
//  Copyright © 2019 Geolab. All rights reserved.
//

import Foundation
struct Product {
    let id: String
    let name: String
    let icon: UIImage
    let category: Category
    let caloriesPerGram: Double
}

let products = [
    Product.init(id: "1", name: "ვაშლი", icon: UIImage(), category: .fruit, caloriesPerGram: 0.3),
    Product.init(id: "2", name: "მსხალი", icon: UIImage(), category: .fruit, caloriesPerGram: 0.5)
    
]
let fruitProducts = products.filter { $0.category == .fruit }
