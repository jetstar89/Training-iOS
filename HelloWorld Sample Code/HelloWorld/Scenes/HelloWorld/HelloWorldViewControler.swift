//
//  HelloWorldViewControler.swift
//  HelloWorldApp
//
//  Created by Huy Nguyen on 4/9/18.
//  Copyright © 2018 gem. All rights reserved.
//

import UIKit
import CoreLocation

class HelloWorldViewControler: UIViewController {

    let locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
    
    func openBookDetails(_ bookId: Int) {
        let viewcontroller = BookDetailsViewController(nibName: "BookDetailsViewController", bundle: nil)
        viewcontroller.bookId = bookId
        self.navigationController?.pushViewController(viewcontroller, animated: true)
    }
    
    deinit {
        print("deinit")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
