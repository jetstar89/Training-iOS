//
//  UIViewControllerExtension.swift
//  HelloWorldApp
//
//  Created by hnc on 12/7/17.
//

import UIKit
import MBProgressHUD

extension UIViewController {
    func alertWithTitle(_ title: String?, message: String?) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title:"Close", style: .cancel, handler: nil)
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    func alertWithTitle(_ title: String?, message: String?, completion: @escaping () -> ()) {
        let alertController = UIAlertController(title: title ?? "", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { (action) in
            completion()
        })
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }
    
    func alertConfirmWithTitle(_ title: String?, message: String?,completion: @escaping () -> ()) {
        let alertController = UIAlertController(title: title ?? "", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { (action) in
            completion()
        })
        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
        alertController.addAction(okAction)
//        alertController.addAction(cancelAction)
        present(alertController, animated: true, completion: nil)
    }
    
    class func initWithNibTemplate<T>() -> T {
        let nibName = String(describing: self)
        let viewcontroller = self.init(nibName: nibName, bundle: Bundle.main)
        viewcontroller.modalTransitionStyle = .crossDissolve
        viewcontroller.modalPresentationStyle = .overCurrentContext
        return viewcontroller as! T
    }
    
    func showHud() {
        MBProgressHUD.hide(for: view, animated: true)
        MBProgressHUD.showAdded(to: view, animated: true)
        
    }
    func hideHude() {
        MBProgressHUD.hide(for: view, animated: true)
    }
}
