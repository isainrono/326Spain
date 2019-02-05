//
//  ViewControllerSearch.swift
//  326Spain
//
//  Created by Isain Rodriguez Noreña on 05/02/2019.
//  Copyright © 2019 326Spain. All rights reserved.
//

import UIKit

class ViewControllerSearch: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    // Variable para el control de activar busqueda
    var isSearching:Bool = false
    
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
    
    // Lista de Busqueda por nombre de gafas
    var searchGList:[Glasses] = [Glasses]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return !isSearching ? gList.count : searchGList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }
    


}
