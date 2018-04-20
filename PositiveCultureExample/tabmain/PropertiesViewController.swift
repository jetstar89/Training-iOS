//
//  PropertiesViewController.swift
//  PositiveCultureExample
//
//  Created by GEM on 4/16/18.
//  Copyright © 2018 GEM. All rights reserved.
//

import UIKit
import Parchment

class PropertiesViewController: UIViewController {

    let buttonSearch = UIBarButtonItem(image: #imageLiteral(resourceName: "search"), style: .plain, target: self, action: #selector(getter: UIDynamicBehavior.action))
    let buttonAdd = UIBarButtonItem(image: #imageLiteral(resourceName: "add"), style: .plain, target: self, action: #selector(getter: UIDynamicBehavior.action))
    let buttonPay = UIBarButtonItem(image: #imageLiteral(resourceName: "payed"), style: .plain, target: self, action: #selector(getter: UIDynamicBehavior.action))
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Properties"
        self.navigationItem.leftBarButtonItems = [buttonSearch]
        self.navigationItem.rightBarButtonItems = [buttonAdd, buttonPay]
        
        // Do any additional setup after loading the view.
        let propertyChild =  PropertyChildViewController(nibName: "PropertyChildViewController", bundle: nil)
        let propertyChild2 =  PropertyChildViewController(nibName: "PropertyChildViewController", bundle: nil)
        let propertyChild3 =  PropertyChildViewController(nibName: "PropertyChildViewController", bundle: nil)
        let viewControllers = [propertyChild, propertyChild2, propertyChild3]
        let pagingViewController = FixedPagingViewController(viewControllers: viewControllers)

        // Make sure you add the PagingViewController as a child view
        // controller and constrain it to the edges of the view.
        addChildViewController(pagingViewController)
        view.addSubview(pagingViewController.view)
        pagingViewController.didMove(toParentViewController: self)
        pagingViewController.view.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            pagingViewController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            pagingViewController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            pagingViewController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            pagingViewController.view.topAnchor.constraint(equalTo: view.topAnchor)
            ])
        
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
