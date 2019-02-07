//
//  ViewController_Sign_in.swift
//  KFUPMSS_iOS
//
//  Created by Jabbar AlQassab on 2/7/19.
//  Copyright © 2019 Jabbar AlQassab. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class ViewController_Sign_in: UIViewController {

    @IBOutlet weak var idField: UITextField!
    @IBOutlet weak var passField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FirebaseApp.configure()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func signIn(_ sender: Any) {
        
        if let id = idField.text , let pass = passField.text {
            
            Auth.auth().signIn(withEmail: id+"@kfupm.edu.sa", password: pass) { (user, error) in if let firebaseError = error{print (firebaseError.localizedDescription)
                return
                }
                print("success!22")
            }
        }
        
    }
    
    
    
    
    func signedInSucssusfuly(){
       // let storyboard:UIStoryboard = UIStoryboard(name: Main, bundle: nil)
     //   let signInView:
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
