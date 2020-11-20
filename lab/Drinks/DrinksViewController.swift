//
//  DrinksViewController.swift
//  lab
//
//  Created by APPLE on 1/23/19.
//  Copyright © 2019 Geolab. All rights reserved.
//

import UIKit

class DrinksViewController: UIViewController {
    @IBOutlet weak var drinksCollectionView :UICollectionView!
    
    var drinksItems = ["ვაშლი","მსხალი","გრეიფრუტი","კივი","მარწყვი","ბანანი","ყურძენი","ბროწეული"]
    var drinksImage :[UIImage] = [
        UIImage(named:"Applee")!,
        UIImage(named:"Pear")!,
        UIImage(named:"Grapefruit")!,
        UIImage(named:"Kiwi")!,
        UIImage(named:"Strawberry")!,
        UIImage(named:"Banana")!,
        UIImage(named:"Grapes")!,
        UIImage(named:"Pomegranate")!
    ]
    
    var flowLayout: UICollectionViewFlowLayout {
        return drinksCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.viewDidLoad()
        
        drinksCollectionView.dataSource = self
        drinksCollectionView.delegate = self
        
        flowLayout.scrollDirection = .vertical
        flowLayout.minimumLineSpacing = 10
        flowLayout.minimumInteritemSpacing = 8
        flowLayout.sectionInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    }
    
        
    }
    
extension DrinksViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return drinksItems.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let drinkscell = collectionView.dequeueReusableCell(withReuseIdentifier: "DrinksCell", for: indexPath) as! DrinksCollectionViewCell
        drinkscell.DrinksLabel.text = drinksItems[indexPath.row]
        drinkscell.drinksImageView.image = drinksImage[indexPath.item]
        return drinkscell
    }
}

extension DrinksViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}

extension DrinksViewController: UICollectionViewDelegateFlowLayout {
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











    

