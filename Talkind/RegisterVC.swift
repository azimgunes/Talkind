//
//  RegisterVC.swift
//  Talkind
//
//  Created by Azim Güneş on 11.06.2025.
//

import UIKit
import ProgressHUD

class RegisterVC: UIViewController {
    
    
    @IBOutlet weak var registerLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var mailTextField: UITextField!

    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Extensions()
        
        dismissKeyboard()
        
        keyboardObserver()
    
    }
    

    @IBAction func backButtonTapped(_ sender: UIBarButtonItem) {

        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        if let loginVC = storyBoard.instantiateViewController(withIdentifier: "loginVC") as? LoginVC {
            let navController = UINavigationController(rootViewController: loginVC)
            navController.modalPresentationStyle = .fullScreen
            navController.modalTransitionStyle = .coverVertical
            
            self.present(navController, animated: true)
        }
    }
    
    
    @objc func Extensions() {
        
        registerButton.layer.cornerRadius = 15
        registerButton.clipsToBounds = true
        
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.darkGray])
        passwordTextField.layer.cornerRadius = 10
        
        
        usernameTextField.attributedPlaceholder = NSAttributedString(string: "Username", attributes: [NSAttributedString.Key.foregroundColor : UIColor.darkGray])
        usernameTextField.layer.cornerRadius = 10
        
        nameTextField.attributedPlaceholder = NSAttributedString(string: "Full Name", attributes: [NSAttributedString.Key.foregroundColor : UIColor.darkGray])
        nameTextField.layer.cornerRadius = 10
        
        
        mailTextField.attributedPlaceholder = NSAttributedString(string: "Mail", attributes: [NSAttributedString.Key.foregroundColor : UIColor.darkGray])
        mailTextField.layer.cornerRadius = 10
        
    }
    
    @IBAction func registerButtonTapped(_ sender: UIButton) {
        
        guard let name = nameTextField.text, !name.isEmpty else {
            ProgressHUD.failed("Name is empty!")
            return
        }
        guard let username = usernameTextField.text, !username.isEmpty else {
            ProgressHUD.failed("Username is empty!")
            return
        }
        guard let mail = mailTextField.text, !mail.isEmpty else {
            ProgressHUD.failed("Mail is empty!")
            return
        }
        guard let password = passwordTextField.text, !password.isEmpty else {
            ProgressHUD.failed("Password is empty!")
            return
        }
        ProgressHUD.animate("Loading..")
        ProgressHUD.colorHUD = .clear
        ProgressHUD.colorAnimation = .black
        ProgressHUD.colorStatus = .black
    }
}
