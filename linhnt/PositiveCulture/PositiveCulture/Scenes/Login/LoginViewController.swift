//
//  LoginViewController.swift
//  PositiveCulture
//
//  Created by kemshiro on 4/17/18.
//  Copyright © 2018 kemshiro. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController {

    @IBAction func onButtonLoginClicked(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.showHome();
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func initViews() {
        self.title = "Login"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "IcBack"),
                                                                style: .plain,
                                                                target: self,
                                                                action: nil)
    }

}
