import UIKit

class ProductsViewController: UIViewController {
    @IBOutlet weak var collectionView : UICollectionView!
    var array = ["First Cell","Second Cell","Third Cell","Fourth Cell","Five Cell","Six Cell","Seven Cell","Eight Cell", "First Cell","Second Cell","Third Cell","Fourth Cell","Five Cell","Six Cell","Seven Cell","Eight Cell"]

    var flowLayout: UICollectionViewFlowLayout {
        return collectionView.collectionViewLayout as! UICollectionViewFlowLayout
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        
        flowLayout.scrollDirection = .vertical
        flowLayout.minimumLineSpacing = 10
        flowLayout.minimumInteritemSpacing = 8
        flowLayout.sectionInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    }
}

extension ProductsViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCollectionViewCell", for: indexPath) as! ProductCollectionViewCell
        cell.titleLabel.text = array[indexPath.row]
        return cell
    }
}

extension ProductsViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}

extension ProductsViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemsPerRow: CGFloat = collectionView.bounds.width > collectionView.bounds.height ? 3 : 2
        let insetedSpace = collectionView.bounds.inset(by: flowLayout.sectionInset)
        
        switch flowLayout.scrollDirection {
        case .vertical:
            let availableSpace = insetedSpace.width - (itemsPerRow - 1) * flowLayout.minimumInteritemSpacing
            let cellWidth = floor(availableSpace / itemsPerRow)
            return CGSize(width: cellWidth, height: cellWidth)
        case .horizontal:
            let availableSpace = insetedSpace.height - (itemsPerRow - 1) * flowLayout.minimumLineSpacing
            let cellHeight = floor(availableSpace / itemsPerRow)
            return CGSize(width: cellHeight, height: cellHeight)
        }
    }
}
