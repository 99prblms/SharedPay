//
//  PaymentView.swift
//  SharedPay
//
//  Created by Владислав Наумов on 14.03.2024.
//

import UIKit

protocol PaymentViewDelegate: AnyObject {
    
    func PaymentViewTapBtn (summ: String?, pers: String?, tips: String?)
    
    func navigatePayViews()
}

class PaymentView: UIView {
    
    var payVC = PaymentViewController()
    weak var delegate: PaymentViewDelegate?
    
    var summStackView: UIStackView = {
        let summStackView = UIStackView()
        summStackView.axis = .vertical
        summStackView.distribution = .fillEqually
        summStackView.spacing = 10
        return summStackView
    }()
    
    func setupSummStackView() {
        summStackView.translatesAutoresizingMaskIntoConstraints = false
        summStackView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        summStackView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        summStackView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        summStackView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -400).isActive = true
        
        summStackView.addArrangedSubview(summLabel)
        summStackView.addArrangedSubview(summField)
    }
    
    var persStackView: UIStackView = {
        let persStackView = UIStackView()
        persStackView.axis = .vertical
        persStackView.distribution = .fillEqually
        persStackView.spacing = 10
        return persStackView
    }()
    
    func setupPersStackView() {
        persStackView.translatesAutoresizingMaskIntoConstraints = false
        persStackView.topAnchor.constraint(equalTo: persTipsStackView.topAnchor, constant: 0).isActive = true
        persStackView.leadingAnchor.constraint(equalTo: persTipsStackView.leadingAnchor, constant: 20).isActive = true
        persStackView.trailingAnchor.constraint(equalTo: persTipsStackView.trailingAnchor, constant: -200).isActive = true
        persStackView.bottomAnchor.constraint(equalTo: persStackView.bottomAnchor, constant: 0).isActive = true
        
        persStackView.addArrangedSubview(persLabel)
        persStackView.addArrangedSubview(persField)
    }
    
    var tipsStackView: UIStackView = {
        let tipsStackView = UIStackView()
        tipsStackView.axis = .vertical
        tipsStackView.distribution = .fillEqually
        tipsStackView.spacing = 10
        return tipsStackView
    }()
    
    func setupTipsStackView() {
        tipsStackView.translatesAutoresizingMaskIntoConstraints = false
        tipsStackView.topAnchor.constraint(equalTo: persTipsStackView.topAnchor, constant: 0).isActive = true
        tipsStackView.leadingAnchor.constraint(equalTo: persTipsStackView.leadingAnchor, constant: 200).isActive = true
        tipsStackView.trailingAnchor.constraint(equalTo: persTipsStackView.trailingAnchor, constant: -20).isActive = true
        tipsStackView.bottomAnchor.constraint(equalTo: persStackView.bottomAnchor, constant: 0).isActive = true
        
        tipsStackView.addArrangedSubview(tipsLabel)
        tipsStackView.addArrangedSubview(tipsField)
    }
    
    var persTipsStackView: UIStackView = {
        let persTipsStackView = UIStackView()
        persTipsStackView.axis = .vertical
        persTipsStackView.distribution = .fillEqually
        persTipsStackView.spacing = 10
        return persTipsStackView
    }()
    
    func setupPersTipsStackView() {
        persTipsStackView.translatesAutoresizingMaskIntoConstraints = false
        persTipsStackView.topAnchor.constraint(equalTo: summStackView.bottomAnchor, constant: 10).isActive = true
        persTipsStackView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 0).isActive = true
        persTipsStackView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: 0).isActive = true
        persTipsStackView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -200).isActive = true
        
        persTipsStackView.addArrangedSubview(persStackView)
        persTipsStackView.addArrangedSubview(tipsStackView)
    }
    
    
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
    
    func setupCheckButton() {
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        checkButton.topAnchor.constraint(equalTo: persTipsStackView.bottomAnchor, constant: 50).isActive = true
        checkButton.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        checkButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        checkButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -50).isActive = true
        
        checkButton.layer.cornerRadius = 20
        checkButton.addTarget(self, action: #selector (tapBtn), for: .touchUpInside)
    }
    
    init(delegate: PaymentViewDelegate) {
        self.delegate = delegate
        super.init(frame: .zero)
        self.backgroundColor = .backgroundColorPix
        addSubviews()
        setupSummStackView()
        setupPersStackView()
        setupTipsStackView()
        setupPersTipsStackView()
        setupCheckButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews() {
        addSubview(summStackView)
        addSubview(persStackView)
        addSubview(tipsStackView)
        addSubview(persTipsStackView)
        addSubview(checkButton)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        self.addGestureRecognizer(tapGesture)
    }
    
    @objc func tapBtn(){
        _ = CheckViewController()
        self.delegate?.PaymentViewTapBtn(summ: summField.text, pers: persField.text, tips: tipsField.text)
        self.delegate?.navigatePayViews()
    }
    
    @objc func hideKeyboard(){
        summField.resignFirstResponder()
        persField.resignFirstResponder()
        tipsField.resignFirstResponder()
    }
    
}
