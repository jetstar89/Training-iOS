//
//  BaseViewController.swift
//  StaffManagement
//
//  Created by kemshiro on 3/23/18.
//  Copyright © 2018 GEM. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController, BaseVCProtocol{
    
    func initViews() {
        // Please InitViews
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

protocol BaseVCProtocol {
    func initViews()
}
