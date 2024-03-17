//
//  CheckView.swift
//  SharedPay
//
//  Created by Владислав Наумов on 14.03.2024.
//

import UIKit

protocol CheckViewDelegate {
    func dontPressX2 (SummCheckX2: String, YCheckX2: String, YTipsX2: String)
}

class CheckView: UIView {
    
    var delegate: CheckViewDelegate?
    
    var checkStackView: UIStackView = {
        let checkStackView = UIStackView()
        checkStackView.axis = .vertical
        checkStackView.distribution = .fillEqually
        checkStackView.spacing = 10
        return checkStackView
    }()
    
    var checkLabel: UILabel = {
        let checkLabel = UILabel()
        checkLabel.textColor = .fontColorPix
        checkLabel.font = UIFont(name: "PressStartK", size: 30)
        checkLabel.numberOfLines = 0
        checkLabel.text = "You will pay"
        checkLabel.textAlignment = .center
        return checkLabel
    }()
    
    var checkField: UILabel = {
        let checkField = UILabel()
        checkField.text = "0"
        checkField.font = UIFont(name: "PressStartK", size: 40)
        checkField.textAlignment = .center
        checkField.textColor = .fontColorPix
        checkField.translatesAutoresizingMaskIntoConstraints = false
        return checkField
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
    
    var persYLabel: UILabel = {
        let persYLabel = UILabel()
        persYLabel.font = UIFont(name: "PressStartK", size: 25)
        persYLabel.numberOfLines = 0
        persYLabel.textColor = .fontColorPix
        persYLabel.text = "Your check"
        persYLabel.textAlignment = .center
        return persYLabel
    }()
    
    var persYField: UILabel = {
        let persYField = UILabel()
        persYField.text = "0"
        persYField.font = UIFont(name: "PressStartK", size: 30)
        persYField.numberOfLines = 0
        persYField.textAlignment = .center
        persYField.textColor = .fontColorPix
        persYField.translatesAutoresizingMaskIntoConstraints = false
        return persYField
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
    
    var tipsYLabel: UILabel = {
        let tipsYLabel = UILabel()
        tipsYLabel.font = UIFont(name: "PressStartK", size: 25)
        tipsYLabel.numberOfLines = 0
        tipsYLabel.textColor = .fontColorPix
        tipsYLabel.text = "Your tip"
        tipsYLabel.textAlignment = .center
        return tipsYLabel
    }()
    
    var tipsYField: UILabel = {
        let tipsYField = UILabel()
        tipsYField.text = "0"
        tipsYField.font = UIFont(name: "PressStartK", size: 30)
        tipsYField.textAlignment = .center
        tipsYField.textColor = .fontColorPix
        tipsYField.translatesAutoresizingMaskIntoConstraints = false
        tipsYField.layer.cornerRadius = 20
        return tipsYField
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
    
    var friendButtonA: UIButton = {
        let friendButtonA = UIButton(type: .system)
        friendButtonA.setTitle("don't press", for: .normal)
        friendButtonA.translatesAutoresizingMaskIntoConstraints = false
        friendButtonA.backgroundColor = .buttonColorPix
        friendButtonA.tintColor = .fontColorPix
        friendButtonA.titleLabel?.font = UIFont(name: "PressStartK", size: 18)
        return friendButtonA
    }()
    
    func setupFriendButtonA() {
        friendButtonA.translatesAutoresizingMaskIntoConstraints = false
        friendButtonA.topAnchor.constraint(equalTo: persTipsYStackView.bottomAnchor, constant: 50).isActive = true
        friendButtonA.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        friendButtonA.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        friendButtonA.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -50).isActive = true
        
        friendButtonA.layer.cornerRadius = 20
        friendButtonA.addTarget(self, action: #selector (frndBtn), for: .touchUpInside)
    }
    
    init(delegate: CheckViewDelegate) {
        self.delegate = delegate
        super.init(frame: .zero)
        self.backgroundColor = .backgroundColorPix
        addSubviews()
        setupCheckStackView()
        setupPersYStackView()
        setupTipsYStackView()
        setupPersTipsYStackView()
        setupFriendButtonA()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews() {
        addSubview(checkStackView)
        addSubview(persYStackView)
        addSubview(tipsYStackView)
        addSubview(persTipsYStackView)
        addSubview(friendButtonA)
    }
    
    @objc func frndBtn(){
        self.delegate?.dontPressX2(SummCheckX2: checkField.text!, YCheckX2: tipsYField.text!, YTipsX2: persYField.text!)
        friendButtonA.setTitle("You will pay x2 T_T", for: .normal)
        
    }
    
    func updateView(with data: StructSumm) {
        checkField.text = String(data.yourWP)
        tipsYField.text = String(data.yourTips)
        persYField.text = String(data.yourCheck)
       }
    
    func updateViewX2(with data: StructSumm) {
        checkField.text = String(data.yourWP)
        tipsYField.text = String(data.yourTips)
        persYField.text = String(data.yourCheck)
       }
    
}

