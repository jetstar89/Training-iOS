//
//  PropertyChildViewController.swift
//  HelloWorld
//
//  Created by bavv on 4/21/18.
//  Copyright © 2018 hnc. All rights reserved.
//

import UIKit

class PropertyChildViewController: UIViewController {

    @IBOutlet weak var properyTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        properyTableView.tableFooterView = UIView(frame: .zero)
        properyTableView.estimatedRowHeight = 150
        properyTableView.rowHeight = UITableViewAutomaticDimension
        properyTableView.dataSource = self
        
        let nib = UINib(nibName: "PropertiesViewCell", bundle: nil)
        properyTableView.register(nib, forCellReuseIdentifier: "propertiesCell")
        
    }
}

extension PropertyChildViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "propertiesCell") as! PropertiesViewCell
        return cell
    }
    
}

