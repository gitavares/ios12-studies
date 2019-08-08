//
//  Wage.swift
//  window-shopper
//
//  Created by Giselle Tavares on 2019-08-05.
//  Copyright © 2019 Giselle Tavares. All rights reserved.
//

import Foundation

class Wage {
    class func  getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
