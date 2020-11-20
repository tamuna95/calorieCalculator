//
//  RegsterViewController.swift
//  lab
//
//  Created by APPLE on 1/25/19.
//  Copyright © 2019 Geolab. All rights reserved.
//

import UIKit

class RegsterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    @IBAction func RegisterButtonDidTap(){
        performSegue(withIdentifier: "goToCategoryPage", sender: nil)
    }

    
}
