//
//  FruitViewController.swift
//  lab
//
//  Created by APPLE on 1/24/19.
//  Copyright © 2019 Geolab. All rights reserved.
//

import UIKit

class FruittViewController: UIViewController {

    @IBOutlet weak var fruitCollectionView :UICollectionView!
    var fruitItems = ["First Cell","Second Cell","Third Cell","Fourth Cell","Five Cell","Six Cell","Seven Cell","Eight Cell", "First Cell","Second Cell","Third Cell","Fourth Cell","Five Cell","Six Cell","Seven Cell","Eight Cell"]
    
    var flowLayout: UICollectionViewFlowLayout {
        return fruitCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        fruitCollectionView.dataSource = self
        fruitCollectionView.delegate = self
        
        flowLayout.scrollDirection = .vertical
        flowLayout.minimumLineSpacing = 10
        flowLayout.minimumInteritemSpacing = 8
        flowLayout.sectionInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    }
    }
extension FruitViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return fruitItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let fruitcell = collectionView.dequeueReusableCell(withReuseIdentifier: "FruitCell", for: indexPath) as! FruitCollectionViewCell
        fruitcell.FruitLabel.text = fruitItems[indexPath.row]
        return fruitcell
    }
}

extension FruitViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}

extension FruitViewController: UICollectionViewDelegateFlowLayout {
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










    

