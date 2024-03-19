//
//  PaymentViewController.swift
//  SharedPay
//
//  Created by Владислав Наумов on 14.03.2024.
//

import UIKit

class PaymentViewController: UIViewController {
    
    lazy var mainView = PaymentView(delegate: self)
    var mainModel = PaymentModel()
    var newValue: StructSumm?
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

//MARK: - PaymentViewDelegate
extension PaymentViewController: PaymentViewDelegate {
    
    func navigatePayViews() {
        let checkVC = CheckViewController(dataQW: newValue)
        navigationController?.pushViewController(checkVC, animated: true)
    }
    
    func PaymentViewTapBtn(summ: String?, pers: String?, tips: String?) {
        newValue = mainModel.chitaemSumm(summ: summ, pers: pers, tips: tips)
    }
}

