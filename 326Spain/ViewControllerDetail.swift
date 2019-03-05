//
//  ViewControllerDetail.swift
//  326Spain
//
//  Created by isain on 31/01/2019.
//  Copyright © 2019 326Spain. All rights reserved.
//

import UIKit

class ViewControllerDetail: UIViewController, UITableViewDelegate, UITableViewDataSource{
    

    @IBOutlet weak var tableViewSeasson: UITableView!
    
    @IBOutlet weak var seassonImg: UIImageView!
    @IBOutlet weak var seassonName: UILabel!
    var image:UIImage = UIImage()
    var name:String = ""
    var glassesList:[Glasses] = [Glasses]()
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return glassesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let glassesCell = tableViewSeasson.dequeueReusableCell(withIdentifier: "detailsCell", for:indexPath) as! TableViewCellSeassonCustom
        
        glassesCell.imgGlasses.image = glassesList[indexPath.row].glassImage
        glassesCell.nameGlasses.text = glassesList[indexPath.row].name
        glassesCell.priceGlasses.text = String(glassesList[indexPath.row].price)
        
        return glassesCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewSeasson.delegate = self
        tableViewSeasson.dataSource = self
        
        seassonImg.image = image
        seassonName.text = name

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
