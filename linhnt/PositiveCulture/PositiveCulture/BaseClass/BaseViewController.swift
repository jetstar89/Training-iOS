//
//  BaseViewController.swift
//  PositiveCulture
//
//  Created by NguyenTuanLinh on 4/16/18.
//  Copyright © 2018 NguyenTuanLinh. All rights reserved.
//

import UIKit

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
