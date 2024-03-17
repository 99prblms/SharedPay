//
//  CheckViewController.swift
//  SharedPay
//
//  Created by Владислав Наумов on 14.03.2024.
//

import UIKit

class CheckViewController: UIViewController {
    
    var dataQW: StructSumm? {
        didSet {
            if let data = dataQW {
                mainView.updateView(with: data)
            }
        }
    }
    
    var dataQWX2: StructSumm?
    var mainModel = CheckModel()
    lazy var mainView = CheckView(delegate: self)
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        func updateViewWithData() {
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        mainView.friendButtonA.isEnabled = true
    }
}
//MARK: - CheckViewDelegate
extension CheckViewController: CheckViewDelegate {
    func dontPressX2(SummCheckX2: String, YCheckX2: String, YTipsX2: String) {
        dataQWX2 = mainModel.chitaemSummX2(summ: SummCheckX2, pers: YCheckX2, tips: YTipsX2)
        mainView.updateViewX2(with: dataQWX2!)
    }
}

