//
//  PaymentViewController.swift
//  SharedPay
//
//  Created by Владислав Наумов on 14.03.2024.
//

import UIKit

class PaymentViewController: UIViewController {

//    lazy var mainView = PaymentView(delegate: self)
    lazy var mainView = PaymentView()
    var mainModel = PaymentModel()
    var checkVC = CheckViewController()
    
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
        navigationController?.pushViewController(checkVC, animated: true)
    }
    
    func PaymentViewTapBtn(summ: String?, pers: String?, tips: String?) {
        _ = mainModel.chitaemSumm(summ: summ!, pers: pers!, tips: tips!)
    }
}

