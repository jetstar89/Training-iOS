//
//  PropertiesViewController.swift
//  PositiveCulture
//
//  Created by kemshiro on 4/17/18.
//  Copyright © 2018 kemshiro. All rights reserved.
//

import UIKit

class PropertiesViewController: BaseViewController {
    
    let btnSearch = UIBarButtonItem(image: #imageLiteral(resourceName: "IcSearch"), style: .plain, target: self, action: nil)
    let btnAdd = UIBarButtonItem(image: #imageLiteral(resourceName: "IcAdd"), style: .plain, target: self, action: nil)
    let btnPay = UIBarButtonItem(image: #imageLiteral(resourceName: "IcMoney"), style: .plain, target: self, action: nil)
    
    var properties : [Property]  = []
    
    @IBOutlet weak var propertiesTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.title = "Properties"
        self.tabBarController?.navigationItem.leftBarButtonItems = [btnSearch]
        self.tabBarController?.navigationItem.rightBarButtonItems = [btnPay, btnAdd]
        
    }
    
    override func initViews() {
        propertiesTableView.dataSource = self
        propertiesTableView.delegate = self

        propertiesTableView.estimatedRowHeight = 44
        propertiesTableView.rowHeight = UITableViewAutomaticDimension

    }
}

extension PropertiesViewController : UITableViewDelegate, UITableViewDataSource{
    
    func initData(){
        let property1 = Property(image : "iv1",title: "145 Deveonshire Road", address: "01-01", agent: "Agent: Elaine Onge", cost: 1200000, square: "807 sqft", status: "Complete")
        
        let property2 = Property(image : "iv2",title: "Hilbre 28", address: "65 Hillside Drive", agent: "Agent: Joanne Ang", cost: 899999, square: "924 sqft", status: "Complete")
        
        let property3 = Property(image : "iv3",title: "Onze @ Tanjong Pagar", address: "Onze @ Tanjong Pagar", agent: "Agent: Joanne Ang", cost: 1350000, square: "924 sqft", status: "Complete")
        
        let property4 = Property(image : "iv1",title: "145 Deveonshire Road", address: "01-01", agent: "Agent: Elaine Onge", cost: 1200000, square: "807 sqft", status: "Complete")
        
        let property5 = Property(image : "iv2",title: "Hilbre 28", address: "65 Hillside Drive", agent: "Agent: Joanne Ang", cost: 899999, square: "924 sqft", status: "Complete")
        
        let property6 = Property(image : "iv3",title: "Onze @ Tanjong Pagar", address: "Onze @ Tanjong Pagar", agent: "Agent: Joanne Ang", cost: 1350000, square: "924 sqft", status: "Complete")
        
        
        properties = [property1, property2, property3, property4, property5, property6]
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return properties.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let itemPropertiesViewCell = Bundle.main.loadNibNamed("ItemPropertiesViewCell", owner: self, options: nil)?.first as! ItemPropertiesViewCell
        let property = properties[indexPath.row]
        
        itemPropertiesViewCell.itemImageView.image = UIImage(named: property.image)
        itemPropertiesViewCell.titleLabel.text = property.title
        itemPropertiesViewCell.addressLabel.text = property.address
        itemPropertiesViewCell.costLabel.text = String(format:"S$ %.f", property.cost)
        itemPropertiesViewCell.agentLabel.text = property.agent
        itemPropertiesViewCell.squareLabel.text = property.square
        itemPropertiesViewCell.statusLabel.text = property.status
        
        
        return itemPropertiesViewCell
    }
    
    
}
