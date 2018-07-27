//
//  SettingsViewController.swift
//  HelloWorld
//
//  Created by hnc on 7/24/18.
//  Copyright © 2018 hnc. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var employeeIdLabel: UILabel!
    @IBOutlet weak var logoutButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        logoutButton.layer.cornerRadius = 4
        logoutButton.layer.borderColor = UIColor.blue.cgColor
        logoutButton.layer.borderWidth = 1.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onLogout(_ sender: Any) {
        (UIApplication.shared.delegate as? AppDelegate)?.setupAuthenticationController()
    }
}
