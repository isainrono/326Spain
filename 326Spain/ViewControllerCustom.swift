//
//  ViewControllerCustom.swift
//  326Spain
//
//  Created by isain on 23/02/2019.
//  Copyright © 2019 326Spain. All rights reserved.
//

import UIKit

class ViewControllerCustom: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    // lista de gafas generica
    var gList:[Glasses] = [
        Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain1")!),
        Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain2")!),
        Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain3")!),
        Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain4")!),
        Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain5")!),
        Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain6")!),
        Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain7")!),
        Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain8")!),
        Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain9")!),
        Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain1")!),
        Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain2")!),
        Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain3")!),
        Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain4")!),
        Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain5")!),
        Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain6")!),
        Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain7")!),
        Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain8")!),
        Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain9")!),
        ]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return gList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cellCustom = collectionView.dequeueReusableCell(withReuseIdentifier: "cellCollection", for: indexPath) as! CollectionViewCellCustom
        
        cellCustom.img.image = gList[indexPath.row].glassImage
        
        return cellCustom
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, canFocusItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        // Do any additional setup after loading the view.
        
    }
    



}
