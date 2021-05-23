//
//  AppDelegate.swift
//  enumUICorrd
//
//  Created by aoka on 2021/05/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let winsow = UIWindow(frame:UIScreen.main.bounds)
       
        let vc = UIStoryboard.init(name: "First", bundle: nil).instantiateInitialViewController() as! FirstViewController
        winsow.makeKeyAndVisible()
        winsow.rootViewController = vc
        self.window = winsow
        return true
    }
}

