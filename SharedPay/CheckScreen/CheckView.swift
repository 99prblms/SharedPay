//
//  CheckView.swift
//  SharedPay
//
//  Created by Владислав Наумов on 14.03.2024.
//

import UIKit

class CheckView: UIView {
    
    var summLabelA: UILabel = {
        let summLabel = UILabel()
        summLabel.textColor = .fontColorPix
        summLabel.font = UIFont(name: "PressStartK", size: 30)
        summLabel.numberOfLines = 0
        summLabel.text = "You will pay"
        summLabel.textAlignment = .center
        return summLabel
    }()
    
    var persLabelA: UILabel = {
        let persLabel = UILabel()
        persLabel.font = UIFont(name: "PressStartK", size: 25)
        persLabel.numberOfLines = 0
        persLabel.textColor = .fontColorPix
        persLabel.text = "Your check"
        persLabel.textAlignment = .center
        return persLabel
    }()
    
    var tipsLabelA: UILabel = {
        let tipsLabel = UILabel()
        tipsLabel.font = UIFont(name: "PressStartK", size: 25)
        tipsLabel.numberOfLines = 0
        tipsLabel.textColor = .fontColorPix
        tipsLabel.text = "Your tip"
        tipsLabel.textAlignment = .center
        return tipsLabel
    }()
    
    var summFieldA: UILabel = {
        let summField = UILabel()
        summField.text = "0"
        summField.font = UIFont(name: "PressStartK", size: 40)
        summField.textAlignment = .center
        summField.textColor = .fontColorPix
        summField.translatesAutoresizingMaskIntoConstraints = false
        return summField
    }()
    
    var persFieldA: UILabel = {
        let persField = UILabel()
        persField.text = "0"
        persField.font = UIFont(name: "PressStartK", size: 30)
        persField.numberOfLines = 0
        persField.textAlignment = .center
        persField.textColor = .fontColorPix
        persField.translatesAutoresizingMaskIntoConstraints = false
        return persField
    }()
    
    var tipsFieldA: UILabel = {
        let tipsField = UILabel()
        tipsField.text = "0"
        tipsField.font = UIFont(name: "PressStartK", size: 30)
        tipsField.textAlignment = .center
        tipsField.textColor = .fontColorPix
        tipsField.translatesAutoresizingMaskIntoConstraints = false
        tipsField.layer.cornerRadius = 20
        return tipsField
    }()
    
    var friendButtonA: UIButton = {
        let friendButtonA = UIButton(type: .system)
        friendButtonA.setTitle("I am a good friend", for: .normal)
        friendButtonA.translatesAutoresizingMaskIntoConstraints = false
        friendButtonA.backgroundColor = .buttonColorPix
        friendButtonA.tintColor = .fontColorPix
        friendButtonA.titleLabel?.font = UIFont(name: "PressStartK", size: 18)
        return friendButtonA
    }()
    
    func setupSummLabelA() {
        summLabelA.translatesAutoresizingMaskIntoConstraints = false
        summLabelA.layer.masksToBounds = true
        NSLayoutConstraint.activate([
            summLabelA.topAnchor.constraint(equalTo: topAnchor, constant: 200),
            summLabelA.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            summLabelA.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -570),
            summLabelA.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
    
    func setupSummFieldA() {
        summFieldA.translatesAutoresizingMaskIntoConstraints = false
        summFieldA.layer.masksToBounds = true
        NSLayoutConstraint.activate([
            summFieldA.topAnchor.constraint(equalTo: summLabelA.topAnchor, constant: 100),
            summFieldA.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            summFieldA.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -450),
            summFieldA.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
    
    func setupPersLabelA() {
        persLabelA.translatesAutoresizingMaskIntoConstraints = false
        persLabelA.layer.masksToBounds = true
        NSLayoutConstraint.activate([
            persLabelA.topAnchor.constraint(equalTo: summFieldA.topAnchor, constant: 130),
            persLabelA.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            persLabelA.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -370),
            persLabelA.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -210)
        ])
    }
    
    func setupPersFieldA() {
        persFieldA.translatesAutoresizingMaskIntoConstraints = false
        persFieldA.layer.masksToBounds = true
        NSLayoutConstraint.activate([
            persFieldA.topAnchor.constraint(equalTo: persLabelA.topAnchor, constant: 50),
            persFieldA.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            persFieldA.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -300),
            persFieldA.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -210)
        ])
    }
    
    func setupTipsLabelA() {
        tipsLabelA.translatesAutoresizingMaskIntoConstraints = false
        tipsLabelA.layer.masksToBounds = true
        NSLayoutConstraint.activate([
            tipsLabelA.topAnchor.constraint(equalTo: summFieldA.topAnchor, constant: 130),
            tipsLabelA.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 200),
            tipsLabelA.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -370),
            tipsLabelA.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
    
    func setupTipsFieldA() {
        tipsFieldA.translatesAutoresizingMaskIntoConstraints = false
        tipsFieldA.layer.masksToBounds = true
        NSLayoutConstraint.activate([
            tipsFieldA.topAnchor.constraint(equalTo: tipsLabelA.topAnchor, constant: 50),
            tipsFieldA.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 200),
            tipsFieldA.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -300),
            tipsFieldA.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
    
    func setupFriendButtonA() {
        friendButtonA.translatesAutoresizingMaskIntoConstraints = false
        friendButtonA.layer.masksToBounds = true
        NSLayoutConstraint.activate([
            friendButtonA.topAnchor.constraint(equalTo: summFieldA.topAnchor, constant: 280),
            friendButtonA.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            friendButtonA.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -200),
            friendButtonA.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
        friendButtonA.layer.cornerRadius = 20
        friendButtonA.addTarget(self, action: #selector (frndBtn), for: .touchUpInside)
    }
    
    init() {
        super.init(frame: .zero)
        self.backgroundColor = .backgroundColorPix
        addSubviews()
        setupSummLabelA()
        setupSummFieldA()
        setupPersLabelA()
        setupPersFieldA()
        setupTipsLabelA()
        setupTipsFieldA()
        setupFriendButtonA()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews() {
        addSubview(summLabelA)
        addSubview(summFieldA)
        addSubview(persLabelA)
        addSubview(persFieldA)
        addSubview(tipsLabelA)
        addSubview(tipsFieldA)
        addSubview(friendButtonA)
        
    }
    
    @objc func frndBtn(){
        friendButtonA.setTitle("I am a best friend", for: .normal)
    }
    
}

