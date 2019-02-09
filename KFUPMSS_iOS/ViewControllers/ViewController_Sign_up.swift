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
    
    var ref : DatabaseReference?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ref = Database.database().reference()
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
       
        // Move to Main View If user already Signed in 
        if Auth.auth().currentUser != nil {
            goToMainView()
            
        }
    }

  
    @IBAction func signUp(_ sender: Any) {
   
        //Signing up User Data
        if let id = idField.text  , let firstName = firsNameField.text  , let lastName = lastNameField.text , let pass = passwordField.text  , let phone =  phoneField.text {
            //try Signing up user
            Auth.auth().createUser(withEmail: id+"@kfupm.edu.sa", password: pass, completion: {user, error in if let firebaseError = error{print (firebaseError.localizedDescription)
                return
                }
                //Add user data to FireBase under User branch
                self.ref?.child("User").childByAutoId().setValue(["email": "s"+id+"@kfupm.edu.sa", "firstName":firstName, "lastName": lastName, "phone": phone ])
                
                // Move to Main View if sign up process succeeded
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
