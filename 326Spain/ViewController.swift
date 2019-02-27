//
//  ViewController.swift
//  326Spain
//
//  Created by isain on 31/01/2019.
//  Copyright © 2019 326Spain. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableViewHome: UITableView!
    // lista de temporadas favoritas
    var favoriteList:[Season] = [Season]()
    
    // lista de gafas generica
    var gList:[Glasses] = [
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
    
    
    
    // Hago un array de Seasson que apareceran en el tableViewHome
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
    
    // Ahora relleno el tableView con las siguientes funciones
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return seassonList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let seassonCell = tableViewHome.dequeueReusableCell(withIdentifier: "seassonCell", for:indexPath) as! TableViewCellCustom
        
        seassonCell.seassonImg.image = seassonList[indexPath.row].image
        seassonCell.seassonName.text = seassonList[indexPath.row].title
        seassonCell.seassonLike.tag = indexPath.row
        seassonCell.seassonLike.addTarget(self, action: #selector(clickHeart), for: .touchUpInside)
        
        return seassonCell
    }
    
    @objc func clickHeart(sender:UIButton) -> Int{
        print("tocado el boton\(sender.tag)")
        
        if sender.image(for: .normal) == UIImage(named: "uLike") {
            sender.setImage(UIImage(named: "hLike"), for: .normal)
            favoriteList.append(seassonList[sender.tag])
            AppController.appController.favouriteSeasonList.append(seassonList[sender.tag])
        } else {
            sender.setImage(UIImage(named: "uLike"), for: .normal)
            SeasonController.deleteSeason(seasonTitle: seassonList[sender.tag].title)
        }
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let seassonDetailView = storyboard?.instantiateViewController(withIdentifier: "seassonDetail") as! ViewControllerDetail
        
        seassonDetailView.image = seassonList[indexPath.row].image
        seassonDetailView.name = seassonList[indexPath.row].title
        seassonDetailView.glassesList = seassonList[indexPath.row].glassesList
        
        self.navigationController?.pushViewController(seassonDetailView, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewHome.delegate = self
        tableViewHome.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
        // var _:[Glasses] = AppController.appController.iniLists();0
        
    }


}

