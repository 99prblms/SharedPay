//
//  CheckViewController.swift
//  SharedPay
//
//  Created by Владислав Наумов on 14.03.2024.
//

import UIKit

class CheckViewController: UIViewController {
        
    var dataQW: StructSumm?
    var dataQWX2: StructSumm?
    var mainModel = CheckModel()
    lazy var mainView = CheckView(delegate: self, dataQW: dataQW!)
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        func updateViewWithData() {
        }
    }
    
    init(dataQW: StructSumm? = nil) {
        super.init(nibName: nil, bundle: nil)
        self.dataQW = dataQW
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        mainView.friendButtonA.isEnabled = true
    }
}
//MARK: - CheckViewDelegate
extension CheckViewController: CheckViewDelegate {
    func dontPressX2(SummCheckX2: String, YCheckX2: String, YTipsX2: String) {
        dataQWX2 = mainModel.chitaemSummX2(summ: SummCheckX2, pers: YCheckX2, tips: YTipsX2)
        mainView.updateView(with: dataQWX2!)
    }
}

