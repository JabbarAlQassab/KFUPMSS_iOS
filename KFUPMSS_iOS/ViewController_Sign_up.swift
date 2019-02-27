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
    
    
    
    override func viewDidAppear(_ animated: Bool) {
       
        // Move to Main View If user already Signed in 
        if let user = Auth.auth().currentUser {
            goToMainView()
            
        }
    }

  
    @IBAction func signUp(_ sender: Any) {
        print("Signup starts no problem")

        //Signing up User Data
        if let id = idField.text  , let firstName = firsNameField.text  , let lastName = lastNameField.text , let pass = passwordField.text  , let phone =  phoneField.text {
            
            Auth.auth().createUser(withEmail: id+"@kfupm.edu.sa", password: pass, completion: {user, error in if let firebaseError = error{print (firebaseError.localizedDescription)
                return
                }
               
                // Move to Main View if process sign up success
                self.goToMainView()
            })
        }
        

    }
    
    
    func goToMainView() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainView = storyboard.instantiateViewController(withIdentifier: "MainView")as! UITabBarController
        present(mainView, animated: true, completion: nil)
    }
    
}
