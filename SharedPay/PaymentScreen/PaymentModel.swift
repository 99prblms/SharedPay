//
//  PaymentModel.swift
//  SharedPay
//
//  Created by Владислав Наумов on 14.03.2024.
//

import Foundation

class PaymentModel {
    
    struct dataSumm {
        var yourCheck: Int
        var yourTips: Int
        var yourWP: Int
    }
    
    func chitaemSumm(summ: String?, pers: String?, tips: String?) -> dataSumm? {
        
        if let summStr = summ, let persStr = pers, let tipsStr = tips {
            if let summInt = Int(summ!), let persInt = Int(pers!), let tipsInt = Int(tips!) {
                
                let yTips = tipsInt / persInt
                let yCheck = summInt / persInt
                let yWP = yTips + yCheck
                let itog = dataSumm(yourCheck: yCheck, yourTips: yTips, yourWP: yWP)
                
                return itog
            } else {
                print("Ошибка нет числа")
                let itog = dataSumm(yourCheck: 0, yourTips: 0, yourWP: 0)
                return itog
            }
        } else {
            print("Ошибка нет значений")
            let itog = dataSumm(yourCheck: 0, yourTips: 0, yourWP: 0)
            return itog
        }
    }
}
