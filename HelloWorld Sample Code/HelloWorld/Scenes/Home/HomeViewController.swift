//
//  HomeViewController.swift
//  HelloWorld
//
//  Created by hnc on 7/24/18.
//  Copyright © 2018 hnc. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationItem.title = "Home"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(showSettings))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func showSettings() {
        self.tabBarController?.selectedIndex = 1
    }
}
