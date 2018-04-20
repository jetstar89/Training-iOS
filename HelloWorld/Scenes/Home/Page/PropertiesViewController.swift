//
//  PropertiesViewController.swift
//  HelloWorld
//
//  Created by bavv on 4/20/18.
//  Copyright © 2018 hnc. All rights reserved.
//

import UIKit
import Parchment

class PropertiesViewCell: UIViewController {

    fileprivate let cities = [
        "Property",
        "Seller",
        "Buyer",
        "Complete"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let pageviewController = PagingViewController<PagingIndexItem>()
        pageviewController.dataSource = self
        addChildViewController(pageviewController)
        view.addSubview(pageviewController.view)
        view.constrainToEdges(pageviewController.view)
        pageviewController.didMove(toParentViewController: self)
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

extension PropertiesViewController: PagingViewControllerDataSource {
    func pagingViewController<T>(_ pagingViewController: PagingViewController<T>, pagingItemForIndex index: Int) -> T {
        return PagingIndexItem(index: index, title: cities[index]) as! T
    }
    
    func pagingViewController<T>(_ pagingViewController: PagingViewController<T>, viewControllerForIndex index: Int) -> UIViewController {
        return PropertiesViewController(title: cities[index])
    }
    
    func numberOfViewControllers<T>(in: PagingViewController<T>) -> Int {
        return cities.count
    }
}
