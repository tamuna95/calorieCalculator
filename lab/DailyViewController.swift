//
//  DailyViewController.swift
//  lab
//
//  Created by APPLE on 2/15/19.
//  Copyright © 2019 Geolab. All rights reserved.
//

import UIKit

class dailyViewController: UIViewController {
    @IBOutlet weak var dailyCollectionView :UICollectionView!
    var dailyItems = ["ვაშლი","მსხალი","გრეიფრუტი","კივი","მარწყვი","ბანანი","ყურძენი","ბროწეული"]
    var flowLayout: UICollectionViewFlowLayout {
        return dailyCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.viewDidLoad()
        
        dailyCollectionView.dataSource = self
        dailyCollectionView.delegate = self
        
        flowLayout.scrollDirection = .vertical
        flowLayout.minimumLineSpacing = 10
        flowLayout.minimumInteritemSpacing = 8
        flowLayout.sectionInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    }
    
    
}
extension dailyViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let dailycell = collectionView.dequeueReusableCell(withReuseIdentifier: "dailyCell", for: indexPath) as! dailyCollectionViewCell
        dailycell.Label.text = dailyItems[indexPath.row]
        
        return dailycell
    }
}

extension dailyViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}

extension dailyViewController: UICollectionViewDelegateFlowLayout {
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



















