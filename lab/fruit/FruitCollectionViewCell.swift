import UIKit

class FruitCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var fruitLabel: UILabel!
    @IBOutlet weak var fruitImageView: UIImageView!
    @IBOutlet weak var addButton: UIButton!
    weak var delegate: FruitCollectionViewCellDelegate?
    
    var dataProvider: Product? {
        didSet {
            guard let dataProvider = dataProvider else {return}
            
            fruitImageView.image = dataProvider.icon
            fruitLabel.text = dataProvider.name
            addButton.addTarget(self, action: #selector(addButtonDidTap), for: .touchUpInside)
        }
    }
    
    @objc fileprivate func addButtonDidTap() {
        delegate?.fruitCollectionViewCell(self, addedProduct: dataProvider)
    }
}

protocol FruitCollectionViewCellDelegate: class {
    func fruitCollectionViewCell(_ fruitCollectionViewCell: FruitCollectionViewCell, addedProduct product: Product?)
}
