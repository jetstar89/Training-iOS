//
//  BaseNavViewController.swift
//  StaffManagement
//
//  Created by kemshiro on 3/23/18.
//  Copyright © 2018 GEM. All rights reserved.
//

import UIKit

class BaseNavViewController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.initViews()
    }
    
    func initViews(){
        self.navigationBar.barTintColor = ColorProvider.navigationBarColor()
        self.navigationBar.tintColor = UIColor.white
        self.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor : UIColor.white]
    }
}


