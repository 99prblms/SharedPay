//
//  CheckView.swift
//  SharedPay
//
//  Created by Владислав Наумов on 14.03.2024.
//

import UIKit

class CheckView: UIView {
    
    
    var checkStackView: UIStackView = {
        let checkStackView = UIStackView()
        checkStackView.axis = .vertical
        checkStackView.distribution = .fillEqually
        checkStackView.spacing = 10
        return checkStackView
    }()
    
    func setupCheckStackView() {
        checkStackView.translatesAutoresizingMaskIntoConstraints = false
        checkStackView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        checkStackView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        checkStackView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        checkStackView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -400).isActive = true
        
        checkStackView.addArrangedSubview(checkLabel)
        checkStackView.addArrangedSubview(checkField)
    }
    
    var persYStackView: UIStackView = {
        let persYStackView = UIStackView()
        persYStackView.axis = .vertical
        persYStackView.distribution = .fillEqually
        persYStackView.spacing = 10
        return persYStackView
    }()
    
    func setupPersYStackView() {
        persYStackView.translatesAutoresizingMaskIntoConstraints = false
        persYStackView.topAnchor.constraint(equalTo: persTipsYStackView.topAnchor, constant: 0).isActive = true
        persYStackView.leadingAnchor.constraint(equalTo: persTipsYStackView.leadingAnchor, constant: 20).isActive = true
        persYStackView.trailingAnchor.constraint(equalTo: persTipsYStackView.trailingAnchor, constant: -200).isActive = true
        persYStackView.bottomAnchor.constraint(equalTo: persYStackView.bottomAnchor, constant: 0).isActive = true
        
        persYStackView.addArrangedSubview(persYLabel)
        persYStackView.addArrangedSubview(persYField)
    }
    
    var tipsYStackView: UIStackView = {
        let tipsYStackView = UIStackView()
        tipsYStackView.axis = .vertical
        tipsYStackView.distribution = .fillEqually
        tipsYStackView.spacing = 10
        return tipsYStackView
    }()
    
    func setupTipsYStackView() {
        tipsYStackView.translatesAutoresizingMaskIntoConstraints = false
        tipsYStackView.topAnchor.constraint(equalTo: persTipsYStackView.topAnchor, constant: 0).isActive = true
        tipsYStackView.leadingAnchor.constraint(equalTo: persTipsYStackView.leadingAnchor, constant: 200).isActive = true
        tipsYStackView.trailingAnchor.constraint(equalTo: persTipsYStackView.trailingAnchor, constant: -20).isActive = true
        tipsYStackView.bottomAnchor.constraint(equalTo: persYStackView.bottomAnchor, constant: 0).isActive = true
        
        tipsYStackView.addArrangedSubview(tipsYLabel)
        tipsYStackView.addArrangedSubview(tipsYField)
    }
    
    var persTipsYStackView: UIStackView = {
        let persTipsYStackView = UIStackView()
        persTipsYStackView.axis = .vertical
        persTipsYStackView.distribution = .fillEqually
        persTipsYStackView.spacing = 10
        return persTipsYStackView
    }()
    
    func setupPersTipsYStackView() {
        persTipsYStackView.translatesAutoresizingMaskIntoConstraints = false
        persTipsYStackView.topAnchor.constraint(equalTo:  checkStackView.bottomAnchor, constant: 10).isActive = true
        persTipsYStackView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 0).isActive = true
        persTipsYStackView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: 0).isActive = true
        persTipsYStackView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -200).isActive = true
        
        persTipsYStackView.addArrangedSubview(persYStackView)
        persTipsYStackView.addArrangedSubview(tipsYStackView)
    }
    
    
    var checkLabel: UILabel = {
        let checkLabel = UILabel()
        checkLabel.font = UIFont(name: "PressStartK", size: 30)
        checkLabel.textColor = .fontColorPix
        checkLabel.text = "Check"
        checkLabel.textAlignment = .center
        return checkLabel
    }()
    
    var persYLabel: UILabel = {
        let persYLabel = UILabel()
        persYLabel.font = UIFont(name: "PressStartK", size: 25)
        persYLabel.textColor = .fontColorPix
        persYLabel.text = "Person"
        persYLabel.textAlignment = .center
        return persYLabel
    }()
    
    var tipsYLabel: UILabel = {
        let tipsYLabel = UILabel()
        tipsYLabel.font = UIFont(name: "PressStartK", size: 25)
        tipsYLabel.textColor = .fontColorPix
        tipsYLabel.text = "Tips"
        tipsYLabel.textAlignment = .center
        return tipsYLabel
    }()
    
    var checkField: UITextField = {
        let checkField = UITextField()
        checkField.placeholder = "0"
        checkField.font = UIFont(name: "PressStartK", size: 30)
        checkField.backgroundColor = .labelColorPix
        checkField.textAlignment = .center
        checkField.keyboardType = .numberPad
        checkField.textColor = .fontColorPix
        checkField.translatesAutoresizingMaskIntoConstraints = false
        checkField.layer.cornerRadius = 20
        return checkField
    }()
    
    var persYField: UITextField = {
        let persYField = UITextField()
        persYField.placeholder = "0"
        persYField.font = UIFont(name: "PressStartK", size: 30)
        persYField.backgroundColor = .labelColorPix
        persYField.textAlignment = .center
        persYField.keyboardType = .numberPad
        persYField.textColor = .fontColorPix
        persYField.translatesAutoresizingMaskIntoConstraints = false
        persYField.layer.cornerRadius = 20
        return persYField
    }()
    
    var tipsYField: UITextField = {
        let tipsYField = UITextField()
        tipsYField.placeholder = "0"
        tipsYField.font = UIFont(name: "PressStartK", size: 30)
        tipsYField.backgroundColor = .labelColorPix
        tipsYField.textAlignment = .center
        tipsYField.keyboardType = .numberPad
        tipsYField.textColor = .fontColorPix
        tipsYField.translatesAutoresizingMaskIntoConstraints = false
        tipsYField.layer.cornerRadius = 20
        return tipsYField
    }()
    
    init() {
        super.init(frame: .zero)
        self.backgroundColor = .backgroundColorPix
        addSubviews()
        setupCheckStackView()
//        setupPersYStackView()
//        setupTipsYStackView()
//        setupPersTipsYStackView()
//        setupFriendButtonA()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews() {
        addSubview(checkLabel)
        addSubview(checkField)
//        addSubview(persYLabel)
//        addSubview(persYField)
//        addSubview(tipsYLabel)
//        addSubview(tipsYField)
//        addSubview(friendButtonA)
    }
//    
//    @objc func frndBtn(){
//        friendButtonA.setTitle("I am a best friend", for: .normal)
//    }
    
}

