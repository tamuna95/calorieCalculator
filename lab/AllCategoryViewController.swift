//
//  AllCategoryViewController.swift
//  lab
//
//  Created by APPLE on 2/9/19.
//  Copyright © 2019 Geolab. All rights reserved.
//

import UIKit

class AllCategoryViewController: UIViewController {
    //struct ProductCategory {
    //    let id: String
    //    let name: String
    //    let icon: UIImage
    //}
    
    enum Category: Int, CaseIterable {
        case fish = 0
        
        var name: String {
            switch self {
            case .fish: return "თევზეული"
            }
        }
        
        var icon: UIImage {
            switch self {
            case .fish: return UIImage()
            }
        }
    }
    
    let cat = Category.allCases
    
    //let categories = [
    //    ProductCategory(id: "1", name: "ხილი", icon: UIImage()),
    //    ProductCategory(id: "2", name: "თევზეული", icon: UIImage()),
    //    ProductCategory(id: "3", name: "ხილი", icon: UIImage()),
    //    ProductCategory(id: "4", name: "ხილი", icon: UIImage())
    //]
    
    struct Product {
        let id: String
        let name: String
        let icon: UIImage
        let category: Category
        let caloriesPerGram: Double
    }
    
    let products = [
        Product.init(id: "1", name: "ვაშლი", icon: UIImage(), category: .fish, caloriesPerGram: 0.3)
    ]
    let fishProducts = products.filter { $0.category == .fish }
    
    //let products: [(Category, [Product])] = [
    //    (.fish, [Product.init(id: "1", name: "ვაშლი", icon: UIImage(), category: .fish)])
    //]
    
//    struct CalculationProduct {
//        let gram: Int
//        let product: Product
//
//        var callories: Double {
//            return Double(gram) * product.caloriesPerGram
//        }
//    }
//
//    let calculationProducts = [
//        CalculationProduct(gram: 200, product: products.first!)
//    ]
//
//    let totalCalories = calculationProducts.reduce(0, { $0 + $1.callories })
//    //totalCalories
//

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

}
