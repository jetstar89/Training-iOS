//
//  AppDelegate.swift
//  TimeKeeper
//
//  Created by hnc on 4/20/18.
//  Copyright © 2018 hnc. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let loginViewController = LoginViewController(nibName: "LoginViewController", bundle: nil)
        let rootNavigationController = UINavigationController(rootViewController: loginViewController)
        window?.rootViewController = rootNavigationController
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }

}
