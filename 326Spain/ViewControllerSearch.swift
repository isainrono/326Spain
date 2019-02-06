//
//  ViewControllerSearch.swift
//  326Spain
//
//  Created by Isain Rodriguez Noreña on 05/02/2019.
//  Copyright © 2019 326Spain. All rights reserved.
//

import UIKit

class ViewControllerSearch: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate{
    
    // Variable para el control de activar busqueda
    var isSearching:Bool = false
    
    // lista de gafas generica
    var gList:[Glasses] = [
        Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain1")!),
        Glasses(name: "barcelona", color: "blue", price: 40, glassImage: UIImage(named:"326Spain2")!),
        Glasses(name: "miami", color: "blue", price: 40, glassImage: UIImage(named:"326Spain3")!),
        Glasses(name: "londres", color: "blue", price: 40, glassImage: UIImage(named:"326Spain4")!),
        Glasses(name: "angles", color: "blue", price: 40, glassImage: UIImage(named:"326Spain5")!),
        Glasses(name: "california", color: "blue", price: 40, glassImage: UIImage(named:"326Spain6")!),
        Glasses(name: "cancun", color: "blue", price: 40, glassImage: UIImage(named:"326Spain7")!),
        Glasses(name: "toronto", color: "blue", price: 40, glassImage: UIImage(named:"326Spain8")!),
        Glasses(name: "cali", color: "blue", price: 40, glassImage: UIImage(named:"326Spain9")!),
        ]
    
    // Lista de Busqueda por nombre de gafas
    var searchGList:[Glasses] = [Glasses]()
    
    // Desde aqui empieza enlace a tableView y sus funciones
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return !isSearching ? gList.count : searchGList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let glassesViewCell = tableView.dequeueReusableCell(withIdentifier: "sGlassesView", for: indexPath) as! TableViewCellSearchCustom
        
        if isSearching {
            glassesViewCell.glassesImage.image = searchGList[indexPath.row].glassImage
            glassesViewCell.glassesName.text = searchGList[indexPath.row].name
            glassesViewCell.glassesPrice.text = String(searchGList[indexPath.row].price)
            glassesViewCell.glassesColor.text = searchGList[indexPath.row].color
        } else {
            glassesViewCell.glassesImage.image = gList[indexPath.row].glassImage
            glassesViewCell.glassesName.text = gList[indexPath.row].name
            glassesViewCell.glassesPrice.text = String(gList[indexPath.row].price)
            glassesViewCell.glassesColor.text = gList[indexPath.row].color
        }
        return glassesViewCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    // Desde aqui empieza search bar y sus funciones
    @IBOutlet weak var searchBar: UISearchBar!
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchGList = gList.filter({(Glasses) -> Bool in
            return Glasses.name.lowercased().contains(searchText.lowercased())
        })
        isSearching = searchText != "" ? true : false
        
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        searchBar.delegate = self
    }
    


}
