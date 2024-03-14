//
//  CheckViewController.swift
//  SharedPay
//
//  Created by Владислав Наумов on 14.03.2024.
//

import UIKit

class CheckViewController: UIViewController {
    
    lazy var mainView = CheckView()
//    var payVC = PaymentViewController()
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

