//
//  LoginViewController.swift
//  GemTimeKeeper
//
//  Created by kemshiro on 4/24/18.
//  Copyright © 2018 kemshiro. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController {
    
    //MARK: -
    //MARK: Outlets

    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var usernameLine: UIImageView!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var passwordLine: UIImageView!
    
    let btnShowHidePass = UIButton(type: .custom)
    
    //MARK: -
    //MARK: IBActions
    @IBAction func onForgotPasswordClick(_ sender: Any) {
        let forgotPasswordViewController = ForgotPassViewController(nibName: "ForgotPassViewController", bundle: nil)
        navigationController?.pushViewController(forgotPasswordViewController, animated: true)
    }
    
    
    @IBAction func onLoginClick(_ sender: Any) {
        
    }
    
    @IBAction func showHidePass(_ sender: UIButton){
        if sender.isSelected == false {
            sender.isSelected = true
            passwordTextField.isSecureTextEntry = false
        } else {
            sender.isSelected = false
            passwordTextField.isSecureTextEntry = true
        }
    }
    
    //MARK: -
    //MARK: ViewController Delegates
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: true)
    }

    override func initViews() {
        initShowHideButton()
    }
    
    //MARK: -
    //MARK: Functions
    func initShowHideButton(){
        btnShowHidePass.setImage(#imageLiteral(resourceName: "IcShowPass"), for: UIControlState.normal)
        btnShowHidePass.setImage(#imageLiteral(resourceName: "IcHidePass"), for: UIControlState.selected)
        btnShowHidePass.imageEdgeInsets = UIEdgeInsetsMake(0, -16, 0, 0)
        btnShowHidePass.frame = CGRect(x: CGFloat(passwordTextField.frame.size.width - 25), y: CGFloat(5), width: CGFloat(25), height: CGFloat(25))
        btnShowHidePass.addTarget(self, action: #selector(showHidePass), for: .touchUpInside)
        passwordTextField.rightView = btnShowHidePass
        passwordTextField.rightViewMode = .always
    }

}
