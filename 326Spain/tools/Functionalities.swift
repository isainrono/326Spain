//
//  Functionalities.swift
//  326Spain
//
//  Created by isain on 27/02/2019.
//  Copyright © 2019 326Spain. All rights reserved.
//

import Foundation
import UIKit

class Functionalities {
    
    static func convertCirculImage(img: UIImageView) {
        img.layer.borderWidth = 1
        img.layer.masksToBounds = false
        //imgRounded.layer.borderColor = UIColor.black.cgColor
        img.layer.cornerRadius = img.frame.height/2
        img.clipsToBounds = true
    }
    
    
}
