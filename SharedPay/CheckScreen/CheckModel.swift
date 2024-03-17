//
//  CheckModel.swift
//  SharedPay
//
//  Created by Владислав Наумов on 14.03.2024.
//

import Foundation

class CheckModel {
    
        func chitaemSummX2(summ: String?, pers: String?, tips: String?) -> StructSumm? {
            guard let summStr = summ, let persStr = pers, let tipsStr = tips,
                  let summInt = Int(summStr), let persInt = Int(persStr), let tipsInt = Int(tipsStr)
            else {
                print("Ошибка: невозможно преобразовать значения в числа.")
                return nil
            }
            return StructSumm(yourCheck: summInt * 2, yourTips: tipsInt * 2, yourWP: (summInt * 2) + (tipsInt * 2))
        }
    }
