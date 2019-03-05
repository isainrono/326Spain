//
//  Season.swift
//  326Spain
//
//  Created by isain on 31/01/2019.
//  Copyright © 2019 326Spain. All rights reserved.
//

import Foundation
import UIKit

class Season {
    
    var title:String = ""
    var image:UIImage = UIImage()
    var glassesList:[Glasses] = [Glasses]()
    
    init(){}
    
    init(title:String, image:UIImage, glassesList:[Glasses]) {
        self.title = title
        self.image = image
        self.glassesList = glassesList
    }
    
    func seasonList() -> [Season] {
        let seassonList:[Season] = [
            Season(title: "Summer", image: UIImage(named:"summer")!, glassesList:[
                Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain1")!),
                Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain2")!),
                Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain3")!),
                Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain4")!),
                Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain5")!),
                ]),
            Season(title: "Winter", image: UIImage(named:"winter")!, glassesList:[
                Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain6")!),
                Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain7")!),
                Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain8")!),
                Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain9")!),
                Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain1")!),
                ]),
            Season(title: "fall", image: UIImage(named:"fall")!, glassesList:[
                Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain1")!),
                Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain2")!),
                Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain3")!),
                Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain4")!),
                Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain5")!),
                ]),
            Season(title: "spring", image: UIImage(named:"spring")!, glassesList:[
                Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain6")!),
                Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain7")!),
                Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain8")!),
                Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain9")!),
                Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain1")!),
                ])
        ]
        
        return seassonList
    }
}
