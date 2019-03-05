//
//  Glasses.swift
//  326Spain
//
//  Created by isain on 31/01/2019.
//  Copyright © 2019 326Spain. All rights reserved.
//

import Foundation
import UIKit

class Glasses {
    
    var name:String = ""
    var color:String = ""
    var price:Int = 0
    var glassImage:UIImage = UIImage()
    var isLiked:Bool = false
    var isHated:Bool = false
    
    init (name:String, color:String, price:Int, glassImage:UIImage) {
        self.name = name;
        self.color = color;
        self.price = price
        self.glassImage = glassImage;
    }
    
    init(){
    }
    
    func setIsLiked(isLiked:Bool){
        self.isLiked = isLiked
    }
    
    func genericGlassesList() -> [Glasses]{
        // Lista Generica de Gafas 326Spain
        // Falta traer desde la APY
        let gList:[Glasses] = [
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
        
        return gList
    }
    
   
}
