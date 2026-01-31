//
//  DecimalUtils.swift
//  Bankey
//
//  Created by Educon IT on 29.01.2026.
//

import Foundation

extension Decimal{
    var doubleValue: Double{
        return NSDecimalNumber(decimal: self).doubleValue
    }
}
