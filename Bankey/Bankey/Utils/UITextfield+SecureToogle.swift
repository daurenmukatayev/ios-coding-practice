//
//  UITextfield+SecureToogle.swift
//  Bankey
//
//  Created by Educon IT on 31.01.2026.
//

import Foundation
import UIKit

extension UITextField {
    func enablePasswordToogle() {
        let passwordToogleButton = UIButton(type: .custom)
        passwordToogleButton.setImage(UIImage(systemName: "eye.fill"), for: .normal)
        passwordToogleButton.setImage(UIImage(systemName: "eye.slash.fill"), for: .selected)
        passwordToogleButton.addTarget(self, action: #selector(tooglePasswordView), for: .touchUpInside)
        rightView = passwordToogleButton
        rightViewMode = .always
    }
    @objc func tooglePasswordView(_ sender: UIButton) {
        isSecureTextEntry.toggle()
        sender.isSelected.toggle()
    }
}
