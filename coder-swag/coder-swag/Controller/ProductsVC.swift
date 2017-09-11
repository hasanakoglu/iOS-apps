//
//  ProductsVC.swift
//  coder-swag
//
//  Created by CICD2 on 11/09/2017.
//  Copyright © 2017 CICD2. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
 
    

    @IBOutlet weak var productsCollection : UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productsCollection.dataSource = self
        productsCollection.delegate = self
    }

   private(set) public var products = [Product]()
    
    
    func initProducts(category: Category) {
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        } else {
            
        }
        return ProductCell()
    }
    
}
