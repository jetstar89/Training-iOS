//
//  DepartmentDTO.swift
//  HelloWorld
//
//  Created by Huy Nguyen on 4/27/18.
//  Copyright © 2018 hnc. All rights reserved.
//

import UIKit
import SwiftyJSON

class DepartmentDTO: NSObject {
    var departmentId: String
    var code: String
    var title: String
    var manager_id: String
    
    init(_ json: JSON) {
        departmentId = json["id"].stringValue
        code = json["code"].stringValue
        title = json["title"].stringValue
        manager_id = json["manager_id"].stringValue
    }
}
