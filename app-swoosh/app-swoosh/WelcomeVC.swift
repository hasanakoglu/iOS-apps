//
//  WelcomeVC.swift
//  app-swoosh
//
//  Created by CICD2 on 05/09/2017.
//  Copyright © 2017 CICD2. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {

    @IBOutlet weak var swoosh: UIImageView!
  
    @IBOutlet weak var bgImg: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        swoosh.frame = CGRect(x: view.frame.size.width / 2 - swoosh.frame.size.width, y: 50, width: swoosh.frame.size.width, height: swoosh.frame.size.width)
        bgImg.frame = view.frame;
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue) {
        
    }
    

}
