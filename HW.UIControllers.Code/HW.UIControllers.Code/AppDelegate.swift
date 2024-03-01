//
//  AppDelegate.swift
//  HW.UIControllers.Code
//
//  Created by Anastasia on 01/03/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds) // создаем окно и задаем размеры соответсвенно выбранного девайса
        
        let viewController = TabBarController() // создаем контроллер
        
        window?.rootViewController = viewController // делаем наше окно начальным экраном
        window?.makeKeyAndVisible() // делаем его видимым
        
                return true
    }
}

