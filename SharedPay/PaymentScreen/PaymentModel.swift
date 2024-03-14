//
//  PaymentModel.swift
//  SharedPay
//
//  Created by Владислав Наумов on 14.03.2024.
//

import Foundation

class PaymentModel {
    
    func chitaemSumm(summ: String?, pers: String?, tips: String?) -> Int? {
        
        guard let aString = summ, let bString = pers, let cString = tips else {
            return nil
        }
        guard let a = Int(aString), let b = Int(bString), let c = Int(cString) else {
            return nil
        }
        guard b != 0 else {
            return nil
        }
        let d = (a / b) + (c / b)
        return d
    }
}
