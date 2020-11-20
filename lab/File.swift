import UIKit
//struct ProductCategory {
//    let id: String
//    let name: String
//    let icon: UIImage
//}

enum Category: Int, CaseIterable {
    case fish = 0
    case fruit = 1
    case vegetable = 2
    case dairy = 3
    case meat = 4
    case drinks = 5
//    case dishes = 6
//    case corn = 7
//    case others = 8
    
    var name: String {
        switch self {
        case .fish: return "თევზეული"
        case .dairy :return "რძის პროდუქტები"
        case .drinks :return "სასმელები"
        case . vegetable :return "ბოსტნეული"
        case .fruit :return "ხილი"
        case .meat :return "ხორცეული"
//        case .corn :return "მარცვლეული"
//        case .dishes :return "კერძები"
//        case .others :return "სხვადასხვა"
        }
        
    }
    
    var icon: UIImage {
        switch self {
        case .fish: return UIImage()
        case .dairy :return UIImage()
        case .drinks :return UIImage()
        case . vegetable :return UIImage()
        case .fruit :return UIImage()
        case .meat :return UIImage()
//        case .corn :return UIImage()
//        case .dishes :return UIImage()
//        case .others :return UIImage()
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
    Product.init(id: "1", name: "ვაშლი", icon: UIImage(named: "Applee")!, category: .fruit, caloriesPerGram: 0.44),
    Product.init(id: "2", name: "მსხალი", icon: UIImage(named: "Pear")!, category: .fruit, caloriesPerGram: 0.47),
    Product.init(id: "3", name: "კივი", icon: UIImage(named: "Kiwi")!, category: .fruit, caloriesPerGram: 0.46),
    Product.init(id: "4", name: "ანანასი", icon: UIImage(named: "ananasi")!, category: .fruit, caloriesPerGram: 0.40),
    Product.init(id: "5", name: "ბროწეული", icon: UIImage(named: "Pomegranate")!, category: .fruit, caloriesPerGram: 0.52),
   Product.init(id: "6", name: "გრეიფუტი", icon: UIImage(named: "Grapefruit")!, category: .fruit, caloriesPerGram: 0.35),
    Product.init(id: "7", name: "ყურძენი", icon: UIImage(named: "Grapes")!, category: .fruit, caloriesPerGram: 0.69),
    Product.init(id: "8", name: "ბანანი", icon: UIImage(named: "Banana")!, category: .fruit, caloriesPerGram: 0.60),
    Product.init(id: "9", name: "ნაღები", icon: UIImage(named: "nagebi")!, category: .dairy, caloriesPerGram: 1.18),
    Product.init(id: "10", name: "ხაჭო", icon: UIImage(named: "xacho")!, category: .dairy, caloriesPerGram: 2.26),
    Product.init(id: "11", name: "რძე", icon: UIImage(named: "milk")!, category: .dairy, caloriesPerGram: 0.50),
    Product.init(id: "12", name: "მაწონი", icon: UIImage(named: "mawoni")!, category: .dairy, caloriesPerGram:0.85 ),
    Product.init(id: "13", name: "ნადუღი", icon: UIImage(named: "nadugi")!, category: .dairy, caloriesPerGram: 2.20),
    Product.init(id: "14", name: "არაჟანი", icon: UIImage(named: "arajani")!, category: .dairy, caloriesPerGram: 0.11),
    Product.init(id: "15", name: "ნაყინი", icon: UIImage(named: "nayini")!, category: .dairy, caloriesPerGram: 1.14),
    Product.init(id: "16", name: "ბადრიჯანი", icon: UIImage(named: "eggplant")!, category: .vegetable, caloriesPerGram: 0.21),
    Product.init(id: "17", name: "ბროკოლი", icon: UIImage(named: "brokoli")!, category: .vegetable, caloriesPerGram: 0.19),
    Product.init(id: "18", name: "ხახვი", icon: UIImage(named: "xaxvi")!, category: .vegetable, caloriesPerGram: 0.25),
    Product.init(id: "19", name: " სტაფილო", icon: UIImage(named: "stapilo")!, category: .vegetable, caloriesPerGram: 0.27),
    Product.init(id: "20", name: "კომბოსტო", icon: UIImage(named: "cabbige")!, category: .vegetable, caloriesPerGram: 0.24),
    Product.init(id: "21", name: "კიტრი", icon: UIImage(named: "cucumber")!, category: .vegetable, caloriesPerGram: 0.13),
    Product.init(id: "22", name: "კარტოფილი", icon: UIImage(named: "potato")!, category: .vegetable, caloriesPerGram: 0.90),
    Product.init(id: "23", name: "პომიდორი", icon: UIImage(named: "tomato")!, category: .vegetable, caloriesPerGram: 0.17),
    Product.init(id: "24", name: "კოკა-კოლა", icon: UIImage(named: "coca-cola")!, category: .drinks, caloriesPerGram: 0.42),
    Product.init(id: "25", name: "სკუმბრია", icon: UIImage(named: "skumbria")!, category: .fish, caloriesPerGram: 1.56),
    Product.init(id: "26", name: "ორაგული", icon: UIImage(named: "oraguli")!, category: .fish, caloriesPerGram: 0.90),
    
    
]
let fruitProducts = products.filter { $0.category == .fruit }
let vegetableProducts = products.filter { $0.category == .vegetable }
let dairyProducts = products.filter { $0.category == .dairy }
let drinksProducts = products.filter { $0.category == .drinks }
let meatProducts = products.filter { $0.category == .meat}
let fishProducts = products.filter { $0.category == .fish }
//let othersProducts = products.filter { $0.category == .others }
//let cornProducts = products.filter { $0.category == .corn }
//let dishesProducts = products.filter { $0.category == .dishes }

//let products: [(Category, [Product])] = [
//    (.fish, [Product.init(id: "1", name: "ვაშლი", icon: UIImage(), category: .fish)])
//]

struct CalculationProduct {
    let gram: Int
    let product: Product

    var callories: Double {
        return Double(gram) * product.caloriesPerGram
    }
}

let calculationProducts = [
    CalculationProduct(gram: 200, product: products.first!)
]

let totalCalories = calculationProducts.reduce(0, { $0 + $1.callories })
//totalCalories

