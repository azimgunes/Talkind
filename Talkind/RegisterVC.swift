//
//  RegisterVC.swift
//  Talkind
//
//  Created by Azim Güneş on 11.06.2025.
//

import UIKit

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
    
}
