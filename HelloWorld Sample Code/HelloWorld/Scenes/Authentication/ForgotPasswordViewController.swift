//
//  ForgotPasswordViewController.swift
//  HelloWorld
//
//  Created by hnc on 7/24/18.
//  Copyright © 2018 hnc. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.title = "Quên Mật Khẩu"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onSendRequest(_ sender: Any) {
        let email = emailTextField.text ?? ""
        if email.isEmpty {
            alertWithTitle("Email Empty", message: "Please enter your email address");
            return;
        }
        let alertController = UIAlertController(title: "Request Sent",
                                                message: "An email with request password link has been sent to your email",
                                                preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { (_) in
            _ = self.navigationController?.popViewController(animated: true)
        }
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }

}
