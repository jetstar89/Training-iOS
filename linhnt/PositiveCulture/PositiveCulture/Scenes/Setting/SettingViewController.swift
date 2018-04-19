//
//  SettingViewController.swift
//  PositiveCulture
//
//  Created by NguyenTuanLinh on 4/18/18.
//  Copyright © 2018 kemshiro. All rights reserved.
//

import UIKit

class SettingViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Settings"
        self.navigationController?.navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "IcBack"), style: .plain, target: self, action: nil)
    }
    
    
}
