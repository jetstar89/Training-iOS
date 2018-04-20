//
//  HelloWorldViewControler.swift
//  HelloWorldApp
//
//  Created by Huy Nguyen on 4/9/18.
//  Copyright © 2018 gem. All rights reserved.
//

import UIKit

class HelloWorldViewControler: UIViewController {

    var y = 20
    var x = 20
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done,
                                                                target: self,
                                                                action: #selector(onDismiss(_:)))
        print(x)
    }

    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        
    }
    
    deinit {
        // print release
        
    }
    
    @objc func onDismiss(_ sender: Any) -> Void {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
