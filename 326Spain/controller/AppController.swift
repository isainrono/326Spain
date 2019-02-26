//
//  AppController.swift
//  326Spain
//
//  Created by Isain Rodriguez on 26/02/2019.
//  Copyright © 2019 326Spain. All rights reserved.
//

import Foundation
import UIKit

class AppController {
    
    static let appController = AppController()
    
    // Lista Generica de Gafas 326Spain
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
        ]
    
    // Array de Temporadas(Gafas 326Spain)
    var seassonList:[Season] = [
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
    
    // Lista Favorita de Gafas 326Spain
    var favouriteGlassesList:[Glasses] = [Glasses]()
    
    // Lista Favorita de Temporadas 326Spain
    var favouriteSeasonList:[Season] = [Season]()
    
    
    var validate: Bool?
    
    private init() {}
    
    func deleteFavouriteSeason(seasonName:String){
        for n in 0...favouriteSeasonList.count {
            
        }
    }
    
    
    
}
