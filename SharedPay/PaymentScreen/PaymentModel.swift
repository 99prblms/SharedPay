//
//  PaymentModel.swift
//  SharedPay
//
//  Created by Владислав Наумов on 14.03.2024.
//

import Foundation

struct StructSumm {
    var yourCheck: Int
    var yourTips: Int
    var yourWP: Int
}

class PaymentModel {
    
    func chitaemSumm(summ: String?, pers: String?, tips: String?) -> StructSumm? {
        guard let summStr = summ, let persStr = pers, let tipsStr = tips,
              let summInt = Int(summStr), let persInt = Int(persStr), let tipsInt = Int(tipsStr)
        else {
            print("Ошибка: невозможно преобразовать значения в числа.")
            return nil
        }        
        return StructSumm(yourCheck: summInt / persInt, yourTips: tipsInt / persInt, yourWP: (summInt / persInt) + (tipsInt / persInt))
    }
}
