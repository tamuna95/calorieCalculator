//
//  newViewController.swift
//  lab
//
//  Created by APPLE on 2/16/19.
//  Copyright © 2019 Geolab. All rights reserved.
//

import UIKit

class newViewController: UIViewController {
    var image = UIImage()
    var name = " "
    
    @IBOutlet weak var img:UIImageView!
    @IBOutlet weak var label :UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name = "jhg"
            label.text = "ghg\(name)"
        img.image = image
    }
    @IBAction func did() {
        
    }

    

}
