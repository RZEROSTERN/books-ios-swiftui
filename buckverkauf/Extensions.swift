//
//  Extensions.swift
//  buckverkauf
//
//  Created by Marco Ramírez Solís on 17/05/22.
//

import Foundation

extension Double {
    func roundToPlaces(places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
