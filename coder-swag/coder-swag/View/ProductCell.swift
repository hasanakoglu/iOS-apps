//
//  ProductCell.swift
//  coder-swag
//
//  Created by CICD2 on 11/09/2017.
//  Copyright © 2017 CICD2. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    @IBOutlet weak var productImage: UIImageView!
     @IBOutlet weak var productTitle: UILabel!
     @IBOutlet weak var productPrice: UILabel!
    
    func updateViews(product: Product) {
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
        
    }
}
