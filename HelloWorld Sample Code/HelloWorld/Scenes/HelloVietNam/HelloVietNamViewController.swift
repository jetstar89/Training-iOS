//
//  HelloVietNameViewController.swift
//  HelloWorldApp
//
//  Created by Huy Nguyen on 4/10/18.
//  Copyright © 2018 gem. All rights reserved.
//

import UIKit

class HelloVietNamViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.title = "Viet Nam"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action,
                                                                 target: self,
                                                                 action: #selector(gotoMoon))
        self.view.backgroundColor = UIColor.orange
        
        NotificationCenter.default.addObserver(self, selector: #selector(onSubmit(_:)),
                                               name: NSNotification.Name(rawValue: "onSubmitNotification"),
                                               object: nil)
    }

    @objc func onSubmit(_ notify: Notification) {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func gotoGem(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewcontroller = storyboard.instantiateViewController(withIdentifier: "HelloGemViewController")
            as! HelloGemViewController
        viewcontroller.comeFrom = "Viet Nam"
        viewcontroller.delegate = self
        self.navigationController?.pushViewController(viewcontroller, animated: true)
    }
    
    @objc func gotoMoon() {
        let viewcontroller = HelloWorldViewControler(nibName: "HelloWorldViewControler", bundle: nil)
        let nav = UINavigationController(rootViewController: viewcontroller)
        self.present(nav, animated: true, completion: nil)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}

extension HelloVietNamViewController: MyDelegate {
    func onSubmit(name: String, from viewcontroller: UIViewController, sender: Any) {
        print(name)
        nameLabel.text = name
    }
}
