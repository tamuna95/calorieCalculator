//
//  MeatViewController.swift
//  lab
//
//  Created by APPLE on 1/23/19.
//  Copyright © 2019 Geolab. All rights reserved.
//

import UIKit

class MeatViewController: UIViewController {
    @IBOutlet weak var meatCollectionView : UICollectionView!
    var fishItems = ["First Cell","Second Cell","Third Cell","Fourth Cell","Five Cell","Six Cell","Seven Cell","Eight Cell", "First Cell","Second Cell","Third Cell","Fourth Cell","Five Cell","Six Cell","Seven Cell","Eight Cell"]
    
    var flowLayout: UICollectionViewFlowLayout {
        return meatCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        meatCollectionView.dataSource = self
        meatCollectionView.delegate = self
        
        flowLayout.scrollDirection = .vertical
        flowLayout.minimumLineSpacing = 10
        flowLayout.minimumInteritemSpacing = 8
        flowLayout.sectionInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    }
        
    }

extension MeatViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return fishItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let meatcell = collectionView.dequeueReusableCell(withReuseIdentifier: "MeatCell", for: indexPath) as! MeatCollectionViewCell
        meatcell.MeatLabel.text = fishItems[indexPath.row]
        return meatcell
    }
}

extension MeatViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}

extension MeatViewController: UICollectionViewDelegateFlowLayout {
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









    

