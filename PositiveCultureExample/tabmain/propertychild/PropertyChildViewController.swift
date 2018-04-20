//
//  PropertyChildViewController.swift
//  PositiveCultureExample
//
//  Created by GEM on 4/19/18.
//  Copyright © 2018 GEM. All rights reserved.
//

import UIKit
import Parchment

class PropertyChildViewController: UIViewController {

    @IBOutlet weak var tableProperty: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        tableProperty.tableFooterView = UIView(frame: .zero)
        tableProperty.estimatedRowHeight = 150
        tableProperty.rowHeight = UITableViewAutomaticDimension
        tableProperty.dataSource = self
        tableProperty.delegate = self
        
        tableProperty.register(UINib(nibName: "PropertyTableViewCell", bundle: nil), forCellReuseIdentifier: "PropertyTableViewCell")

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

}

extension PropertyChildViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3;
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableProperty.dequeueReusableCell(withIdentifier: "PropertyTableViewCell")
        
        return cell!;
    }
    
    //func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {<#code#>
    //}
    
}

extension PropertyChildViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
    }
}
