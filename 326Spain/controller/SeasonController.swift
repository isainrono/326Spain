//
//  SeasonController.swift
//  326Spain
//
//  Created by Isain Rodriguez on 26/02/2019.
//  Copyright © 2019 326Spain. All rights reserved.
//

import Foundation
import UIKit

class SeasonController{
    
    var season:Season = Season.init()
    
    init(){}
    
    // Elimina una season de una lista de Seasons
    static func deleteSeason(seasonTitle:String){
        
        for n in 0...AppController.appController.favouriteSeasonList.count - 1{
            print(n)
            if AppController.appController.favouriteSeasonList[n].title == seasonTitle {
                AppController.appController.favouriteSeasonList.remove(at: n)
            }
        }
    }
}
