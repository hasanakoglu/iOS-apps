//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by CICD2 on 07/09/2017.
//  Copyright © 2017 CICD2. All rights reserved.
//

import UIKit


@IBDesignable
class CurrencyTxtField: UITextField {
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size)) //we did that because we put it in the middle, we moved it 5 from the left and the math postions it in the middle
        currencyLbl.clipsToBounds = true
        currencyLbl.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.8004601884)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2770806347, green: 0.2770806347, blue: 0.2770806347, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
    //for currency and location we need formatter and locale
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
        
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
       customizeView()
    }
            
    
    func customizeView(){
        
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2516855736)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
    }
    
    //added customizeview function and the @ibdesignable and prepareforinterfacebuilder so that the storyboard looks like the design when we run it.
    

}
