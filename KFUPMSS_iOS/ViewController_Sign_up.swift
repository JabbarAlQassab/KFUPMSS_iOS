//
//  ViewController_Sign_up.swift
//  KFUPMSS_iOS
//
//  Created by Jabbar AlQassab on 2/7/19.
//  Copyright © 2019 Jabbar AlQassab. All rights reserved.
//


import UIKit
import Firebase
import FirebaseAuth

class ViewController_Sign_up: UIViewController {

    
    @IBOutlet weak var idField: UITextField!
    @IBOutlet weak var firsNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var phoneField: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

  
    @IBAction func signUp(_ sender: Any) {
        print("Signup starts no problem")

        //Signing up User Data
        
        if let id = idField.text  , let firstName = firsNameField.text  , let lastName = lastNameField.text , let pass = passwordField.text  , let phone =  phoneField.text {
            
            
            Auth.auth().createUser(withEmail: id+"@kfupm.edu.sa", password: pass, completion: {user, error in if let firebaseError = error{print (firebaseError.localizedDescription)
                return
                }
                print("success!22")
            })
        }

        
        
        
        print("Signup Ends no problem")
    }
    
}
