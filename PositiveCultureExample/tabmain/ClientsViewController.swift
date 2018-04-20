//
//  ClientsViewController.swift
//  PositiveCultureExample
//
//  Created by GEM on 4/17/18.
//  Copyright © 2018 GEM. All rights reserved.
//

import UIKit

class ClientsViewController: UIViewController {

    @IBOutlet weak var tableClients: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        tableClients.tableFooterView = UIView(frame: .zero)
        tableClients.estimatedRowHeight = 150
        tableClients.rowHeight = UITableViewAutomaticDimension
        tableClients.dataSource = self
        tableClients.delegate = self
        
        tableClients.register(UINib(nibName: "TestCell", bundle: nil), forCellReuseIdentifier: "TestCell")
        tableClients.register(UINib(nibName: "ClientPendingTableViewCell", bundle: nil), forCellReuseIdentifier: "ClientPendingTableViewCell")
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

extension ClientsViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3;
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (indexPath.row == 1 || indexPath.row == 3){
            let cell = tableClients.dequeueReusableCell(withIdentifier: "ClientPendingTableViewCell")
            return cell!
        } else {
            let cell = tableClients.dequeueReusableCell(withIdentifier: "TestCell")
            return cell!
        }
    }
    
    //func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {<#code#>
    //}
    
}

extension ClientsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let alertController = UIAlertController(title: "didSelectRowAt", message: "item", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .cancel){ (_) in
           
        }
        alertController.addAction(okAction)
        present(alertController, animated: true,completion:  nil)
    }
}
