//
//  TableViewCellSeassonCustom.swift
//  326Spain
//
//  Created by isain on 31/01/2019.
//  Copyright © 2019 326Spain. All rights reserved.
//

import UIKit

class TableViewCellSeassonCustom: UITableViewCell {
    
    @IBOutlet weak var imgGlasses: UIImageView!
    @IBOutlet weak var nameGlasses: UILabel!
    @IBOutlet weak var priceGlasses: UILabel!
    @IBOutlet weak var colorGlasses: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
