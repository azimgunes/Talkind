//
//  Extensions.swift
//  Talkind
//
//  Created by Azim Güneş on 6.07.2025.
//

import UIKit

extension UIViewController {
    func dismissKeyboard(){
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKey))
        tapGesture.cancelsTouchesInView = false
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func dismissKey(){
        view.endEditing(false)
    }

    
    func keyboardObserver(){
        NotificationCenter.default.addObserver(self, selector: #selector(KeyboardWillUp), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillDown), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc private func KeyboardWillUp(_ notification: Notification){
        guard let frame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else {return}
        view.frame.origin.y = -frame.height / 2
        
    }
    @objc private func keyboardWillDown(_ notification: Notification){
        view.frame.origin.y = 0
        
    }
}
