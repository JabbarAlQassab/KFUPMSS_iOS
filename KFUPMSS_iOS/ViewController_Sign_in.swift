//
//  ViewController_Sign_in.swift
//  KFUPMSS_iOS
//
//  Created by Jabbar AlQassab on 2/7/19.
//  Copyright © 2019 Jabbar AlQassab. All rights reserved.
//

import UIKit
import Firebase


class ViewController_Sign_in: UIViewController {

    
    @IBOutlet weak var idField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
      
        // Move to Main View If user already Signed in
        if Auth.auth().currentUser != nil {
            goToMainView()
            
        }
    }
    

    @IBAction func signIn(_ sender: Any) {
       
        if let id = idField.text , let pass = passwordField.text {
            //try signing in
            Auth.auth().signIn(withEmail: "s"+id+"@kfupm.edu.sa", password: pass) { (user, error) in if let firebaseError = error{print (firebaseError.localizedDescription)
                return
                }
                // Move to Main View if sign in process succeeeded
                 self.goToMainView()
            }
        }
        
        
    }
    
    
    
    func goToMainView() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainView = storyboard.instantiateViewController(withIdentifier: "MainView")as! UITabBarController
        present(mainView, animated: true, completion: nil)
    }
    
    
    
    
  
}
