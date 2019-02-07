//
//  ViewController_Chat.swift
//  KFUPMSS_iOS
//
//  Created by Mohammad on 02/06/1440 AH.
//  Copyright © 1440 Jabbar AlQassab. All rights reserved.
//

import UIKit

class ViewController_Chat: UIViewController {

    
    @IBOutlet weak var myTitle: UINavigationBar!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
    myTitle.topItem?.title = "hello"//list[myIndex]
        
    
    
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
