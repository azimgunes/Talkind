//
//  User.swift
//  Talkind
//
//  Created by Azim Güneş on 13.07.2025.
//

import Foundation
import Firebase
import FirebaseFirestore
import FirebaseAuth

struct User: Codable, Equatable {
    
    //Properties

    var id = ""
    var username: String
    var email: String
    var senderId = ""
    var avatarImage = ""
    var status: String
    
    static var currentId: String {
        return Auth.auth().currentUser!.uid
    }
    static var currentUser: User? {
        if Auth.auth().currentUser != nil {
            if let dict = UserDefaults.standard.data(forKey: curentUserKey) {
                
                let decoder = JSONDecoder()
                
                do {
                    let userObject = try decoder.decode(User.self, from: dict)
                    return userObject
                } catch {
                    print("Decoding Error!", error.localizedDescription)
                }
                
            }
        }
        return nil
    }
    
    static func == (lhs: User, rhs: User) -> Bool {
        lhs.id == rhs.id
    }
}
