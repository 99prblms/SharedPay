//
//  PaymentView.swift
//  SharedPay
//
//  Created by Владислав Наумов on 14.03.2024.
//

import UIKit

protocol PaymentViewDelegate {
    
    func PaymentViewTapBtn (summ: String?, pers: String?, tips: String?)
    
    func navigatePayViews()
}

class PaymentView: UIView {
    
    var payVC = PaymentViewController()
    var delegate: PaymentViewDelegate?
    
    var summLabel: UILabel = {
        let summLabel = UILabel()
        summLabel.font = UIFont(name: "PressStartK", size: 30)
        summLabel.textColor = .fontColorPix
        summLabel.text = "Check"
        summLabel.textAlignment = .center
        return summLabel
    }()
    
    var persLabel: UILabel = {
        let persLabel = UILabel()
        persLabel.font = UIFont(name: "PressStartK", size: 25)
        persLabel.textColor = .fontColorPix
        persLabel.text = "Person"
        persLabel.textAlignment = .center
        return persLabel
    }()
    
    var tipsLabel: UILabel = {
        let tipsLabel = UILabel()
        tipsLabel.font = UIFont(name: "PressStartK", size: 25)
        tipsLabel.textColor = .fontColorPix
        tipsLabel.text = "Tips"
        tipsLabel.textAlignment = .center
        return tipsLabel
    }()
    
    var summField: UITextField = {
        let summField = UITextField()
        summField.placeholder = "0"
        summField.font = UIFont(name: "PressStartK", size: 30)
        summField.backgroundColor = .labelColorPix
        summField.textAlignment = .center
        summField.keyboardType = .numberPad
        summField.textColor = .fontColorPix
        summField.translatesAutoresizingMaskIntoConstraints = false
        summField.layer.cornerRadius = 20
        return summField
    }()
    
    var persField: UITextField = {
        let persField = UITextField()
        persField.placeholder = "0"
        persField.font = UIFont(name: "PressStartK", size: 30)
        persField.backgroundColor = .labelColorPix
        persField.textAlignment = .center
        persField.keyboardType = .numberPad
        persField.textColor = .fontColorPix
        persField.translatesAutoresizingMaskIntoConstraints = false
        persField.layer.cornerRadius = 20
        return persField
    }()
    
    var tipsField: UITextField = {
        let tipsField = UITextField()
        tipsField.placeholder = "0"
        tipsField.font = UIFont(name: "PressStartK", size: 30)
        tipsField.backgroundColor = .labelColorPix
        tipsField.textAlignment = .center
        tipsField.keyboardType = .numberPad
        tipsField.textColor = .fontColorPix
        tipsField.translatesAutoresizingMaskIntoConstraints = false
        tipsField.layer.cornerRadius = 20
        return tipsField
    }()
    
    var checkButton: UIButton = {
        let checkButton = UIButton(type: .system)
        checkButton.setTitle("Let's count", for: .normal)
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        checkButton.backgroundColor = .buttonColorPix
        checkButton.tintColor = .fontColorPix
        checkButton.titleLabel?.font = UIFont(name: "PressStartK", size: 18)
        return checkButton
    }()
    
    func setupSummLabel() {
        summLabel.translatesAutoresizingMaskIntoConstraints = false
        summLabel.layer.masksToBounds = true
        NSLayoutConstraint.activate([
            summLabel.topAnchor.constraint(equalTo: topAnchor, constant: 220),
            summLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            summLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -570),
            summLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
    
    func setupSummField() {
        summField.translatesAutoresizingMaskIntoConstraints = false
        summField.layer.masksToBounds = true
        NSLayoutConstraint.activate([
            summField.topAnchor.constraint(equalTo: summLabel.topAnchor, constant: 50),
            summField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            summField.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -500),
            summField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
    
    func setupPersLabel() {
        persLabel.translatesAutoresizingMaskIntoConstraints = false
        persLabel.layer.masksToBounds = true
        NSLayoutConstraint.activate([
            persLabel.topAnchor.constraint(equalTo: summField.topAnchor, constant: 120),
            persLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            persLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -440),
            persLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -210)
        ])
    }
    
    func setupPersField() {
        persField.translatesAutoresizingMaskIntoConstraints = false
        persField.layer.masksToBounds = true
        NSLayoutConstraint.activate([
            persField.topAnchor.constraint(equalTo: persLabel.topAnchor, constant: 35),
            persField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            persField.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -380),
            persField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -210)
        ])
    }
    
    func setupTipsLabel() {
        tipsLabel.translatesAutoresizingMaskIntoConstraints = false
        tipsLabel.layer.masksToBounds = true
        NSLayoutConstraint.activate([
            tipsLabel.topAnchor.constraint(equalTo: summField.topAnchor, constant: 120),
            tipsLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 200),
            tipsLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -440),
            tipsLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
    
    func setupTipsField() {
        tipsField.translatesAutoresizingMaskIntoConstraints = false
        tipsField.layer.masksToBounds = true
        NSLayoutConstraint.activate([
            tipsField.topAnchor.constraint(equalTo: tipsLabel.topAnchor, constant: 35),
            tipsField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 200),
            tipsField.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -380),
            tipsField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
    
    func setupCheckButton() {
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        checkButton.layer.masksToBounds = true
        NSLayoutConstraint.activate([
            checkButton.topAnchor.constraint(equalTo: summField.topAnchor, constant: 400),
            checkButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            checkButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -100),
            checkButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
        checkButton.layer.cornerRadius = 20
        checkButton.addTarget(self, action: #selector (tapBtn), for: .touchUpInside)
    }
    
    init(delegate: PaymentViewDelegate) {
        self.delegate = delegate
        super.init(frame: .zero)
        self.backgroundColor = .backgroundColorPix
        addSubviews()
        setupSummLabel()
        setupSummField()
        setupPersLabel()
        setupPersField()
        setupTipsLabel()
        setupTipsField()
        setupCheckButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews() {
        addSubview(summLabel)
        addSubview(summField)
        addSubview(persLabel)
        addSubview(persField)
        addSubview(tipsLabel)
        addSubview(tipsField)
        addSubview(checkButton)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        self.addGestureRecognizer(tapGesture)
    }
    
    @objc func tapBtn(){
        let checkVC = CheckViewController()
        self.delegate?.PaymentViewTapBtn(summ: summField.text, pers: persField.text, tips: tipsField.text)
        self.delegate?.navigatePayViews()
    }
    
    @objc func hideKeyboard(){
        summField.resignFirstResponder()
        persField.resignFirstResponder()
        tipsField.resignFirstResponder()
    }
    
}
