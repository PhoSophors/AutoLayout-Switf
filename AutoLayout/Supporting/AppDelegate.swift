//
//  AppDelegate.swift
//  AutoLayout
//
//  Created by Apple on 5/5/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
             
         // Create an instance of Layout2ViewController
         let layout2ViewController = Layout2ViewController()
         
         // Wrap Layout2ViewController in a navigation controller
         let navigationController = UINavigationController(rootViewController: layout2ViewController)
         
         // Set the navigation controller as the root view controller
         window?.rootViewController = navigationController
         window?.makeKeyAndVisible()
        
        return true
    }

    // MARK: UISceneSession Lifecycle


}

