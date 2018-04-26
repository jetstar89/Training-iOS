//
//  ForgotPassViewController.swift
//  StaffManagement
//
//  Created by kemshiro on 3/23/18.
//  Copyright © 2018 GEM. All rights reserved.
//

import UIKit

class ForgotPassViewController: BaseViewController {

    //MARK: -
    //MARK: Properties
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var emailLine: UIImageView!
    //MARK: -
    //MARK: IBActions
    @IBAction func onSendRequestClick(_ sender: Any) {
    }
    
    //MARK: -
    //MARK: Delegate
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func initViews() {
        self.title = "Quên mật khẩu"
    }
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
