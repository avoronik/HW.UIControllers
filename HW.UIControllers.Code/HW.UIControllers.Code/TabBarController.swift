//
//  TabBarController.swift
//  HW.UIControllers.Code
//
//  Created by Anastasia on 01/03/24.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let home = ViewController()
        let navigationVC = NavigationController(rootViewController: home)
        let camera = ForthViewController()
        
        navigationVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 0)
        camera.tabBarItem = UITabBarItem(title: "Camera", image: UIImage(systemName: "camera"), tag: 1)
        
        viewControllers = [navigationVC, camera]
        
    }
}
