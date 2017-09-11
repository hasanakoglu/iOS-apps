//
//  Wage.swift
//  window-shopper
//
//  Created by CICD2 on 07/09/2017.
//  Copyright © 2017 CICD2. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int //forWage is parameter for auto complete and wage is for use.
    {
       return Int(ceil(price / wage)) //it will round up the answer
        
        
    }
    

}
