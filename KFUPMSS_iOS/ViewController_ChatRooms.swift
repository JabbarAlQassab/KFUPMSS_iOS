//
//  ViewController_ChatRooms.swift
//  
//
//  Created by Mohammad on 01/06/1440 AH.
//

import UIKit

class ViewController_ChatRooms: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var list = ["ICS343","SWE316"]
    
     var myIndex = 0
    
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(list.count)
    }
    
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "chatRoom")
        cell.textLabel?.text = list[indexPath.row]
        
       return(cell)
   }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        
        performSegue(withIdentifier: "toChat", sender: self)
        
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
