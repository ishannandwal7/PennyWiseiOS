//
//  Extensions.swift
//  PennyWise
//
//  Created by Ishan Nandwal on 22/10/24.
//

import Foundation

extension Double {
    
    var formattedCurrencyText: String {
        return Utils.numberFormatter.string(from: NSNumber(value: self)) ?? "0"
    }
    
}
