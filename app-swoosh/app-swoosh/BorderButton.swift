//
//  BorderButton.swift
//  app-swoosh
//
//  Created by CICD2 on 05/09/2017.
//  Copyright © 2017 CICD2. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
        
        
    }

}
