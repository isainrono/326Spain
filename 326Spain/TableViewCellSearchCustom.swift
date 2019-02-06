//
//  TableViewCellSearchCustom.swift
//  326Spain
//
//  Created by Isain Rodriguez Noreña on 05/02/2019.
//  Copyright © 2019 326Spain. All rights reserved.
//

import UIKit

class TableViewCellSearchCustom: UITableViewCell {
    
    @IBOutlet weak var glassesImage: UIImageView!
    @IBOutlet weak var glassesName: UILabel!
    @IBOutlet weak var glassesPrice: UILabel!
    @IBOutlet weak var glassesColor: UILabel!
    @IBOutlet weak var glaassesLike: UIImageView!
    @IBOutlet weak var glassesDisLike: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
