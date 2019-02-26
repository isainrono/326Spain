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
    
    var title:String
    var image:UIImage = UIImage()
    var glassesList:[Glasses] = [Glasses]()
    
    init(title:String, image:UIImage, glassesList:[Glasses]) {
        self.title = title
        self.image = image
        self.glassesList = glassesList
    }
}
