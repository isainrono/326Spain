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
    
    var name:String
    var color:String
    var price:Int
    var glassImage:UIImage = UIImage()
    var isLiked:Bool = false
    var isHated:Bool = false
    
    init (name:String, color:String, price:Int, glassImage:UIImage) {
        self.name = name;
        self.color = color;
        self.price = price
        self.glassImage = glassImage;
    }
    
    func setIsLiked(isLiked:Bool){
        self.isLiked = isLiked
    }
}
