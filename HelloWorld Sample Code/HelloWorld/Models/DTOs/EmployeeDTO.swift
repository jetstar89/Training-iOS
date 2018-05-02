//
//  EmployeeDTO.swift
//  HelloWorld
//
//  Created by Huy Nguyen on 4/27/18.
//  Copyright © 2018 hnc. All rights reserved.
//

import UIKit
import SwiftyJSON

class EmployeeDTO: NSObject {
    var id: Int
    var employee_code: String
    var full_name: String
    var status: String
    var birthday: String
    var gender: String
    var address: String
    var phone: String
    var department: DepartmentDTO
    
    init(_ json: JSON) {
        id = json["id"].intValue
        employee_code = json["employee_code"].stringValue
        full_name = json["full_name"].stringValue
        status = json["status"].stringValue
        birthday = json["birthday"].stringValue
        gender = json["gender"].stringValue
        address = json["address"].stringValue
        phone = json["phone"].stringValue
        department = DepartmentDTO(json["department"])
    }
}
