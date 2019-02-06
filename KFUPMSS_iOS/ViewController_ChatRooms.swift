//
//  ViewController_ChatRooms.swift
//  
//
//  Created by Mohammad on 01/06/1440 AH.
//

import UIKit

class ViewController_ChatRooms: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let list = ["ICS343","SWE316"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(list.count)
    }
    
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     //   let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "chatRoom")
       // cell.textLabel?.text = list[indexPath.row]
        
    //   return()
   }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
