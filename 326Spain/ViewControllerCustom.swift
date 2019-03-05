//
//  ViewControllerCustom.swift
//  326Spain
//
//  Created by isain on 23/02/2019.
//  Copyright © 2019 326Spain. All rights reserved.
//

import UIKit

class ViewControllerCustom: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    
    @IBOutlet weak var imgRounded: UIImageView!
    
    
    
    // lista de gafas generica
    var gList:[Glasses] = AppController.appController.glassesController.glasses.genericGlassesList()
    
    // lista de gafas favoritas

    
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

        // Convertir foto de perfil en circulo
        Functionalities.convertCirculImage(img: imgRounded)
        
        // recargo la lista de gafas favoritas
        AppController.appController.favoriteList()
        
    }
    
  
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
        
        //return UIEdgeInsets.zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
         let layout = self.collectionView.collectionViewLayout as! UICollectionViewFlowLayout
         
         //layout.sectionInset = UIEdgeInsets(top: 20, left: 0, bottom: 50, right: 0)
         //layout.itemSize = CGSize(width: 200, height: 200)
         layout.minimumInteritemSpacing = 0
         layout.minimumLineSpacing = 0
         collectionView.collectionViewLayout = layout
 
        
       /* let layout = self.collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.minimumInteritemSpacing = 5
        layout.minimumLineSpacing = 5
        collectionView.collectionViewLayout = layout
        */
 
        let yourWidth = collectionView.bounds.width/3.0 - 2
        let yourHeight = yourWidth
        
       // return CGSize(width: yourWidth, height: yourHeight)
        return CGSize(width: yourWidth, height: yourHeight)
    }



}
