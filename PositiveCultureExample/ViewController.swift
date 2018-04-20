//
//  ViewController.swift
//  PositiveCultureExample
//
//  Created by GEM on 4/13/18.
//  Copyright © 2018 GEM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelUser: UITextField!
    @IBOutlet weak var labelPass: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func onBtnLogin(_ sender: Any) {
        var name = labelUser.text;
        var pass = labelPass.text;
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

