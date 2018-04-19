//
//  BaseNavigationViewController.swift
//  PositiveCulture
//
//  Created by NguyenTuanLinh on 4/16/18.
//  Copyright © 2018 NguyenTuanLinh. All rights reserved.
//

import UIKit

class BaseNavViewController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initViews()
    }
    
    func initViews(){
        self.navigationBar.barTintColor = AppColor.navigationBarColor()
        self.navigationBar.tintColor = UIColor.white
        self.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor : UIColor.white]
    }
}
