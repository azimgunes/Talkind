//
//  LoginVC.swift
//  Talkind
//
//  Created by Azim Güneş on 5.06.2025.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var googleButton: UIButton!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var signButton: UIButton!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        Extensions()
    }
 

    
    @objc func Extensions(){
        
        
        //Buttons
        
        
        
        signButton.layer.cornerRadius = 10
        signButton.clipsToBounds = true
        
        
        //Text Fields
        
        emailTextField.attributedPlaceholder = NSAttributedString(string: "E-mail", attributes: [NSAttributedString.Key.foregroundColor : UIColor.darkGray])
        emailTextField.layer.cornerRadius = 10
        
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.darkGray])
        passwordTextField.layer.cornerRadius = 10
    }
    
    
    @IBAction func backButtonTapped(_ sender: UIBarButtonItem) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        if let WelcomeVC = storyBoard.instantiateViewController(withIdentifier: "welcomeVC") as? WelcomeVC {
            let navController = UINavigationController(rootViewController: WelcomeVC)
            navController.modalPresentationStyle = .fullScreen
            navController.modalTransitionStyle = .coverVertical
            
            self.present(navController, animated: true)
        }
    }
    
    @IBAction func registerButton(_ sender: UIButton) {
        performSegue(withIdentifier: "toRegisterVC", sender: self)

        
    }
    
}
