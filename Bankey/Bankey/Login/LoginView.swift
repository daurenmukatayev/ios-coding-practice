//
//  LoginView.swift
//  Bankey
//
//  Created by Educon IT on 25.01.2026.
//

import Foundation
import UIKit

class LoginView: UIView {
    
    let stackView = UIStackView()
    let usernameTextField = UITextField()
    let passwordTextField = UITextField()
    let dividerView = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

 extension LoginView {
    
     private func setup() {
        style()
        layout()
    }
    
     private func style() {
        translatesAutoresizingMaskIntoConstraints = false
         backgroundColor = .secondarySystemBackground
        
         stackView.translatesAutoresizingMaskIntoConstraints = false
         stackView.axis = .vertical
         stackView.spacing = 8
          
         layer.cornerRadius = 5
         clipsToBounds = true
         
         usernameTextField.translatesAutoresizingMaskIntoConstraints = false
         usernameTextField.placeholder = "Username"
         usernameTextField.delegate = self
         
         passwordTextField.translatesAutoresizingMaskIntoConstraints = false
         passwordTextField.placeholder = "Password"
         passwordTextField.isSecureTextEntry = true
         passwordTextField.enablePasswordToogle()
         passwordTextField.delegate = self
         
         dividerView.translatesAutoresizingMaskIntoConstraints = false
         dividerView.backgroundColor = .secondarySystemFill
    }
    
     private func layout() {
         addSubview(stackView)
         stackView.addArrangedSubview(usernameTextField)
         stackView.addArrangedSubview(dividerView)
         stackView.addArrangedSubview(passwordTextField)
         
         NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 1),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1),
            trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 1),
            bottomAnchor.constraint(equalToSystemSpacingBelow: stackView.bottomAnchor, multiplier: 1),
            
         ])
         dividerView.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
}

extension LoginView: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        usernameTextField.endEditing(true)
        passwordTextField.endEditing(true)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
    
    }
}
