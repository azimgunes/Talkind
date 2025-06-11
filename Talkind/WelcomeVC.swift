//
//  ViewController.swift
//  Talkind
//
//  Created by Azim Güneş on 21.05.2025.
//

import UIKit
import FirebaseAuth
import FirebaseFirestore
import FirebaseCore

class WelcomeVC: UIViewController {

    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    @IBOutlet weak var infoLabel: UILabel!
    
    @IBOutlet weak var toLoginVCButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        toLoginVCButton.layer.cornerRadius = 20
        
    }

    @IBAction func toLoginVC(_ sender: UIButton) {
        performSegue(withIdentifier: "toLoginVC", sender: self)

    }
    
 

    
}

