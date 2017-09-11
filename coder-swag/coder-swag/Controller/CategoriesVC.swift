//
//  CategoriesVC.swift
//  coder-swag
//
//  Created by CICD2 on 08/09/2017.
//  Copyright © 2017 CICD2. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    

    @IBOutlet weak var categoryTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self 
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count //we are calling our array
    }
    //how many rows
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let  cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.instance.getCategories()[indexPath.row] //this stores the appropiate category with the coreesponding row of the table view
            cell.updateViews(category: category)
            return cell
        }else {
            return CategoryCell()
            //where we feed the data to the cells
            
        }
     
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    override func prepare(for segue: UIStoryboardSegue , sender: Any?) {
        let barBtn = UIBarButtonItem()
        barBtn.title = ""
        navigationItem.backBarButtonItem = barBtn
        if let productsVC = segue.destination as? ProductsVC {
            assert(sender as? Category != nil) //this assertion will check if its definitely casted from category
            productsVC.initProducts(category: sender as! Category) //category that we passed in at the table view above is now initialised
        }
    }
   


}

