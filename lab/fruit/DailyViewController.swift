import UIKit

class DailyViewController: UIViewController {

    var product: Product!
    
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var putGrammes :UITextField!
    @IBOutlet weak var getCalories:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(product.name)
        
        iconImageView.image = product.icon
        
        
    }

    @IBAction func multiply(_ sender: Any) {
        guard let text = putGrammes.text, let grammes = Double(text) else {return}
        let answer = grammes * product.caloriesPerGram
        
        let f = NumberFormatter()
        f.minimumFractionDigits = 1
        f.maximumFractionDigits = 2
        f.minimumIntegerDigits = 1
        f.maximumIntegerDigits = 20
        f.locale = Locale(identifier: "en_US")
        
        getCalories.text = f.string(from: NSNumber(value: answer))
    }
}

