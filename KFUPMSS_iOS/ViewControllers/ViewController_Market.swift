//
//  ViewController_Market.swift
//  KFUPMSS_iOS
//
//  Created by Jabbar AlQassab on 2/9/19.
//  Copyright © 2019 Jabbar AlQassab. All rights reserved.
//

import UIKit

class ViewController_Market: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    let dataArray = ["aa","bb","cc", "dd","ff","hh","jj","kk","ll"]
    let dataArray2 = ["30 SAR","24 SAR","43 SAR", "55 SAR","74 SAR","90 SAR","23 SAR","42 SAR","32 SAR"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.delegate =  self
        self.collectionView.dataSource = self
        
        self.collectionView.register(UINib(nibName: "Market_Item", bundle: nil), forCellWithReuseIdentifier: "Market_Item")
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.dataArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Market_Item", for: indexPath) as! Market_Item
        cell.setData(text: self.dataArray[indexPath.row], price:self.dataArray2[indexPath.row])
        
        return cell
    }
    
}

