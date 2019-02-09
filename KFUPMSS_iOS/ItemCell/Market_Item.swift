//
//  Market_Item.swift
//  KFUPMSS_iOS
//
//  Created by Jabbar AlQassab on 2/9/19.
//  Copyright © 2019 Jabbar AlQassab. All rights reserved.
//

import UIKit

class Market_Item: UICollectionViewCell {
    
    @IBOutlet weak var itemLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setData(text: String){
        self.itemLabel.text = text
    }

}
