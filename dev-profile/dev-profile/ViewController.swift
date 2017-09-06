//
//  ViewController.swift
//  dev-profile
//
//  Created by CICD2 on 05/09/2017.
//  Copyright © 2017 CICD2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var devLogo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        devLogo.layer.borderWidth = 1
        devLogo.layer.masksToBounds = false
        devLogo.layer.borderColor = UIColor.white.cgColor
        devLogo.layer.cornerRadius = 8.0
        devLogo.clipsToBounds = true
       
    }
   
    
    


}

