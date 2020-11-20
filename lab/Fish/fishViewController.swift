//
//  fishViewController.swift
//  lab
//
//  Created by APPLE on 1/22/19.
//  Copyright © 2019 Geolab. All rights reserved.
//

import UIKit

class fishViewController: UIViewController {
    @IBOutlet weak var fishCollectionView :UICollectionView!
    
    var fishItems = ["First Cell","Second Cell","Third Cell","Fourth Cell","Five Cell","Six Cell","Seven Cell","Eight Cell", "First Cell","Second Cell","Third Cell","Fourth Cell","Five Cell","Six Cell","Seven Cell","Eight Cell"]
    
    var flowLayout: UICollectionViewFlowLayout {
        return fishCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fishCollectionView.dataSource = self
        fishCollectionView.delegate = self
        
        flowLayout.scrollDirection = .vertical
        flowLayout.minimumLineSpacing = 10
        flowLayout.minimumInteritemSpacing = 8
        flowLayout.sectionInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    }
        
    }
extension fishViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return fishItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let fishcell = collectionView.dequeueReusableCell(withReuseIdentifier: "FishCell", for: indexPath) as! fishCollectionViewCell
        fishcell.fishLabel.text = fishItems[indexPath.row]
        return fishcell
    }
}

extension fishViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}

extension fishViewController: UICollectionViewDelegateFlowLayout {
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
    @IBAction func addButton() {
        performSegue(withIdentifier: "MyGoalPage", sender: nil)
    }
}







    


