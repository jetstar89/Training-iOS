//
//  ProfileViewController.swift
//  PositiveCultureExample
//
//  Created by GEM on 4/17/18.
//  Copyright © 2018 GEM. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    let buttonEdit = UIBarButtonItem(title: "Edit", style: .plain, target: self, action: #selector(getter: UIDynamicBehavior.action));
    let buttonSetting = UIBarButtonItem(image: #imageLiteral(resourceName: "search"), style: .plain, target: self, action: #selector(setting(sender:)))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.navigationItem.title = "Properties"
        self.navigationItem.leftBarButtonItems = [buttonSetting]
        
        let settingBarButton = UIBarButtonItem(image: #imageLiteral(resourceName: "search"), style: .plain, target: self, action: #selector(setting(sender:)))
        self.navigationItem.leftBarButtonItem = settingBarButton
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @objc func setting(sender: UIBarButtonItem) {
        let settingVC = SettingViewController(nibName: "SettingViewController", bundle: nil)
        let navigationController = UINavigationController(rootViewController: settingVC)
        present(navigationController, animated: true, completion: nil)
    }

}
