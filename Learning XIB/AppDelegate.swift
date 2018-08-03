//
//  AppDelegate.swift
//  Learning XIB
//
//  Created by David Cornelius on 30/07/18.
//  Copyright © 2018 David Cornelius. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let rootView = ViewController()


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        //1. Configure Window for the first time, screen neet to have Window as their interface foundation
        window = UIWindow.init(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        
        //2. Set up who's became parent view controller / root view controller
        let rootVC = ViewController()
        
        //3. Set up nativation controller to rootViewController
        let navController = UINavigationController(rootViewController: rootVC) //Optional
        
        //4. Connecting window to rootViewController
        window?.rootViewController = navController
        
        //5. Make our window became real
        window?.makeKeyAndVisible()
        
        
        
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

