//
//  ClientViewController.swift
//  PositiveCulture
//
//  Created by kemshiro on 4/17/18.
//  Copyright © 2018 kemshiro. All rights reserved.
//

import UIKit

class ClientViewController: BaseViewController {
    
    var clients : [Client] = []
    let btnAdd = UIBarButtonItem(image: #imageLiteral(resourceName: "IcAdd"), style: .plain, target: self, action: nil)
    
    @IBOutlet weak var clientTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        initData()
    }
    
    override func initViews() {
        self.clientTableView.delegate = self
        self.clientTableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.title = "Clients"
        
        self.tabBarController?.navigationItem.leftBarButtonItems = []
        self.tabBarController?.navigationItem.rightBarButtonItems = [btnAdd]
    }
    
}

extension ClientViewController : UITableViewDelegate, UITableViewDataSource {
    
    func initData(){
        let client1  = Client(image: "ktx", name: "Henry Smith", property: "2 Properies")
        let client2  = Client(image: "ktx", name: "Christina Mitchell", property: "3 Properies")
        let client3  = Client(image: "ktx", name: "Effie Nunez", property: "1 Properies")
        let client4  = Client(image: "ktx", name: "Ida May", property: "2 Properies")
        let client5  = Client(image: "ktx", name: "Christina Mitchell", property: "5 Properies")
        let client6 = Client(image: "ktx", name: "Ida May", property: "4 Properies")
        let client7  = Client(image: "ktx", name: "Effie Nunez", property: "1 Properies")
        
        clients = [client1, client2,client3,client4,client5,client6,client7]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return clients.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Bundle.main.loadNibNamed("ClientTableViewCell", owner: self, options: nil)?.first as! ClientTableViewCell
        
        let client = clients[indexPath.row]
        
        cell.clientImageView.layer.cornerRadius = cell.clientImageView.frame.size.width / 2
        cell.clientImageView.clipsToBounds = true
        cell.clientImageView.image = UIImage(named: client.image)
        cell.nameLabel.text = client.name
        cell.propertyLabel.text = client.property
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 88.0
    }
    
    
}
