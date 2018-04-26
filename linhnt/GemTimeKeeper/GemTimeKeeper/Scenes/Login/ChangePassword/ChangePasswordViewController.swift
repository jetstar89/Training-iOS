//
//  ChangePasswordViewController.swift
//  StaffManagement
//
//  Created by kemshiro on 3/23/18.
//  Copyright © 2018 GEM. All rights reserved.
//

import UIKit

class ChangePasswordViewController: BaseViewController {

    //MARK: -
    //MARK: Properties
    @IBOutlet weak var oldPassTextField: UITextField!
    
    @IBOutlet weak var newPassTextField: UITextField!
    
    @IBOutlet weak var confirmPassTextField: UITextField!
    
    //MARK: -
    //MARK: IBActions
    @IBAction func onChangePasswordClick(_ sender: Any) {
    }
    
    //MARK: -
    //MARK: Delegate
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: -
    //MARK: Function
    override func initViews() {
        //initViews
    }
    
    
}
