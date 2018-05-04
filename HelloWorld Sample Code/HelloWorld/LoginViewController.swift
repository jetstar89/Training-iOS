//
//  ViewController.swift
//  HelloWorldApp
//
//  Created by Huy Nguyen on 4/16/18.
//  Copyright © 2018 gem. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        usernameTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onLogin(_ sender: Any) {
        let username = usernameTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        let service = UserServices()
        
        self.showHud()
        service.login(with: username, and: password) { (result) in
            self.hideHude()
            switch result {
            case .success(let response):
                print(response)
                if let employee = response as? EmployeeDTO {
                    Constant.appDelegate.setupTabbarController()
                    print(employee.full_name)
                }
            case .failure(let error):
                self.alertWithTitle("Login failed", message: error.localizedDescription)
            }
        }
    }
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField == usernameTextField {
            
        }
        print("textFieldDidBeginEditing")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEditing")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
