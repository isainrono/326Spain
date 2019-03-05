//
//  TabBarControllerCustom.swift
//  326Spain
//
//  Created by isain on 31/01/2019.
//  Copyright © 2019 326Spain. All rights reserved.
//

import UIKit

class TabBarControllerCustom: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.red], for: .selected)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor.gray], for: .normal)
        
        tabBarItem = self.tabBar.items?[0]
        tabBarItem.image = UIImage(named: "home")?.withRenderingMode(.alwaysOriginal)
        tabBarItem.selectedImage = UIImage(named:"homeS")?.withRenderingMode(.alwaysOriginal)
        tabBarItem.title = ""
        
        tabBarItem = self.tabBar.items?[1]
        tabBarItem.image = UIImage(named: "search")?.withRenderingMode(.alwaysOriginal)
        tabBarItem.selectedImage = UIImage(named:"searchS")?.withRenderingMode(.alwaysOriginal)
        tabBarItem.title = ""
        
        tabBarItem = self.tabBar.items?[2]
        tabBarItem.image = UIImage(named: "user")?.withRenderingMode(.alwaysOriginal)
        tabBarItem.selectedImage = UIImage(named:"userS")?.withRenderingMode(.alwaysOriginal)
        tabBarItem.title = ""
        
        tabBarItem = self.tabBar.items?[3]
        tabBarItem.image = UIImage(named: "infoS")?.withRenderingMode(.alwaysOriginal)
        tabBarItem.selectedImage = UIImage(named:"info")?.withRenderingMode(.alwaysOriginal)
        tabBarItem.title = ""
        
        for index in 0...tabBar.items!.count - 1{
            tabBarItem = self.tabBar.items?[index]
            tabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        }
        
        self.selectedIndex = 0
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
