//
//  ViewController_Blog.swift
//  KFUPMSS_iOS
//
//  Created by Jabbar AlQassab on 2/9/19.
//  Copyright © 2019 Jabbar AlQassab. All rights reserved.
//

import UIKit
import Firebase

class ViewController_Blog: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signOut(_ sender: Any) {
        
        try! Auth.auth().signOut()
        goToSignInView()
        
    }
    
    func goToSignInView() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainView = storyboard.instantiateViewController(withIdentifier: "SignInView")as! ViewController_Sign_in
        present(mainView, animated: true, completion: nil)
    }
    
    
}
