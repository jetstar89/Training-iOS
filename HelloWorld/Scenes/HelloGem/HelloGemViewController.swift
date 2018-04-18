//
//  HellowGemViewController.swift
//  HelloWorldApp
//
//  Created by Huy Nguyen on 4/10/18.
//  Copyright © 2018 gem. All rights reserved.
//

import UIKit

protocol MyDelegate: NSObjectProtocol {
    func onSubmit(name: String, from viewcontroller: UIViewController, sender: Any)
}

class HelloGemViewController: UIViewController {

    weak var delegate: MyDelegate?
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var comeFromLabel: UILabel!
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var sexSegment: UISegmentedControl!
    @IBOutlet weak var religiousSwitch: UISwitch!
    @IBOutlet weak var contentLabel: UILabel!
    
    @IBOutlet weak var fullNameTitleLabel: UILabel!
    
    public var comeFrom: String = ""
    
    private var fullName: String = ""
    private var age: Int = 0
    private var sex: String = "nam"
    private var religious: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        comeFromLabel.text = "Xin chào người bạn \(comeFrom)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onSexChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            sex = "nam"
        } else {
            sex = "nữ"
        }
    }
    
    @IBAction func onReligiousChanged(_ sender: UISwitch) {
        religious = sender.isOn
    }
    
    @IBAction func onSubmit(_ sender: Any) {
        fullName = fullNameTextField.text ?? ""        
        contentLabel.text = "Xin chào \(fullName) \(age) tuổi, bạn là \(sex), bạn \(religious ? "có" : "không") theo đạo Hồi"
        
        self.navigationController?.popViewController(animated: true)
        
        delegate?.onSubmit(name: fullName, from: self, sender: sender)
        
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "onSubmitNotification"),
                                        object: nil,
                                        userInfo: ["name": fullName])
    }
}

extension HelloGemViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("scrollViewDidScroll \(scrollView.contentOffset)")
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print("scrollViewDidEndDecelerating")
    }
}
