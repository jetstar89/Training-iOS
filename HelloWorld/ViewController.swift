//
//  ViewController.swift
//  HelloWorldApp
//
//  Created by Huy Nguyen on 4/16/18.
//  Copyright © 2018 gem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Singleton.sharedInstance.country = "Viet Nam"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
