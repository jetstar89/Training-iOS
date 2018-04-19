//
//  ProfileViewController.swift
//  PositiveCulture
//
//  Created by kemshiro on 4/17/18.
//  Copyright © 2018 kemshiro. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet weak var avatarImageView: UIImageView!
    
    let btnSetting = UIBarButtonItem(image: #imageLiteral(resourceName: "IcSetting"), style: .plain, target: self, action: nil)
    let btnEdit = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: nil)

    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.avatarImageView.layer.cornerRadius = self.avatarImageView.frame.size.width / 2
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.title = "Profile"
        
        self.tabBarController?.navigationItem.leftBarButtonItems = [btnSetting]
        self.tabBarController?.navigationItem.rightBarButtonItems = [btnEdit]
    }

}
