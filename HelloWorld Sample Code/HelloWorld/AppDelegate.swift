//
//  AppDelegate.swift
//  HelloWorldApp
//
//  Created by Huy Nguyen on 4/9/18.
//  Copyright © 2018 gem. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        print("didFinishLaunchingWithOptions")
        // Override point for customization after application launch.
//        window = UIWindow(frame: UIScreen.main.bounds)
//        setupSingleView()
        setupDefaultAppearance()
        return true
    }
    
    func setupSingleView() {
        let viewcontroller = HelloWorldViewControler(nibName: "HelloWorldViewControler", bundle: nil)
        window?.rootViewController = viewcontroller
        window?.makeKeyAndVisible()
    }
    
    func setupNavigationController() {
        let viewcontroller = HelloVietNamViewController(nibName: "HelloVietNamViewController", bundle: nil)
        let rootNavigationController = UINavigationController(rootViewController: viewcontroller)
        window?.rootViewController = rootNavigationController
        window?.makeKeyAndVisible()
    }
    
    func setupTabbarController() {
        let rootTabbarController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "rootTabbarController")
        window?.rootViewController = rootTabbarController
        window?.makeKeyAndVisible()
    }
    
    func setupAuthenticationController() {
        let navigationController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "loginNavigation")
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
    
    func setupDefaultAppearance() {
        UINavigationBar.appearance().tintColor = UIColor.white
        UINavigationBar.appearance().barTintColor = UIColor.red
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        UIBarButtonItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.white], for: .normal)
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

