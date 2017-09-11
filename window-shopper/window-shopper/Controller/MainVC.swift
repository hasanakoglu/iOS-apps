//
//  MainVC.swift
//  window-shopper
//
//  Created by CICD2 on 07/09/2017.
//  Copyright © 2017 CICD2. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
  
    @IBOutlet weak var resultLbl: UILabel!
    
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.3681135525, blue: 0.2077606333, alpha: 0.8020119863)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action:  #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn //set the textifelds to accessory view
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }

    //when working with selectors, you use objective c. this is an objective c feature.
    @objc func calculate() {
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) //casted them to double
            {
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        
        
        } //we are using the same variable names with wagetxt but they are not the same
    
    
    }
    
    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

