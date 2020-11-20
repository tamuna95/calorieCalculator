import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func ButtonDidTap (){
        performSegue(withIdentifier: "goToPage", sender: Category.fruit)
    }
    
    @IBAction func VegetableButtonDidTap(){
        performSegue(withIdentifier: "goToPage", sender: Category.vegetable)
    }
    
    @IBAction func DairyButtonDidTap(){
        performSegue(withIdentifier: "goToPage", sender: Category.dairy)
    }
    
    @IBAction func FishButtonDidTap() {
        performSegue(withIdentifier: "goToPage", sender: Category.fish)
    }
    
    @IBAction func MeatButtonDidTap(){
        performSegue(withIdentifier: "goToPage", sender: Category.meat)
    }
    
    @IBAction func DrinksButtonDiDTap(){
        performSegue(withIdentifier: "goToPage", sender: Category.drinks)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let category = sender as? Category, let vc = segue.destination as? FruitViewController else {
            return
        }
        
        vc.categories = products.filter { $0.category == category }
    }
}



