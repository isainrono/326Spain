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
    
    
    
    // Elimina una season de una lista de Seasons
    init (){}
    
    static func deleteSeason(seasonTitle:String){
        
        for n in 0...AppController.appController.favouriteSeasonList.count - 1{
            if AppController.appController.favouriteSeasonList[n].title == seasonTitle {
                
            }
            print(AppController.appController.favouriteSeasonList[n].title)
        }
    }
}
