//
//  AppDelegate.swift
//  OnCourt
//
//  Created by Ian Anderson on 1/17/18.
//  Copyright © 2018 Ian Anderson. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //Singles Defaults
        let players = UserDefaults.standard
        let singles1 = ["singles1" : ""]
        players.register(defaults: singles1)
        let singles2 = ["singles2" : ""]
        players.register(defaults: singles2)
        let singles3 = ["singles3" : ""]
        players.register(defaults: singles3)
        
        //Doubles Defaults
        //
        //1 Doubles
        let doubles1ad = ["doubles1ad" : ""]
        players.register(defaults: doubles1ad)
        let doubles1deuce = ["doubles1deuce" : ""]
        players.register(defaults: doubles1deuce)
        //2 Doubles
        let doubles2ad = ["doubles2ad" : ""]
        players.register(defaults: doubles2ad)
        let doubles2deuce = ["doubles2deuce" : ""]
        players.register(defaults: doubles2deuce)
        //3 Doubles
        let doubles3ad = ["doubles3ad" : ""]
        players.register(defaults: doubles3ad)
        let doubles3deuce = ["doubles3deuce" : ""]
        players.register(defaults: doubles3deuce)
        //4 Doubles
        let doubles4ad = ["doubles4ad" : ""]
        players.register(defaults: doubles4ad)
        let doubles4deuce = ["doubles4deuce" : ""]
        players.register(defaults: doubles4deuce)
        //Team Name
        let teamName = ["teamName" : ""]
        players.register(defaults: teamName)
         
        
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

