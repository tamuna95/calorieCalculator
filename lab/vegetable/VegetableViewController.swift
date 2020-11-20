import UIKit

class VegetableViewController: UIViewController {
    @IBOutlet weak var vegetableCollectionView: UICollectionView!
    var vegetableItems = ["First Cell","Second Cell","Third Cell","Fourth Cell","Five Cell","Six Cell","Seven Cell","Eight Cell", "First Cell","Second Cell","Third Cell","Fourth Cell","Five Cell","Six Cell","Seven Cell","Eight Cell"]
    
    var flowLayout: UICollectionViewFlowLayout {
        return vegetableCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        super.viewDidLoad()
        
        vegetableCollectionView.dataSource = self
        vegetableCollectionView.delegate = self
        
        flowLayout.scrollDirection = .vertical
        flowLayout.minimumLineSpacing = 10
        flowLayout.minimumInteritemSpacing = 8
        flowLayout.sectionInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    }
}

extension VegetableViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return vegetableItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let vegetablecell = collectionView.dequeueReusableCell(withReuseIdentifier: "VegetableCell", for: indexPath) as! VegetableCollectionViewCell
        vegetablecell.VegetableLabel.text = vegetableItems[indexPath.row]
        return vegetablecell
    }
}

extension VegetableViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}

extension VegetableViewController: UICollectionViewDelegateFlowLayout {
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
    @IBAction func addButton(){
        performSegue(withIdentifier: "MyGoalPage", sender: nil)}
    
}

