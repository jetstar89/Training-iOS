//
//  UserServices.swift
//  HelloWorld
//
//  Created by hnc on 4/20/18.
//  Copyright © 2018 hnc. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire

class UserServices: APIServiceObject {
    func login(with username: String, and password: String, completion: @escaping (Result<Any>) -> Void) {
        let request = APIRequestProvider.shareInstance.loginRequest(username: username, password: password)
        serviceAgent.startRequest(request) { (json, error) in
            if let err = error {
                completion(Result.failure(err))
            } else {
                let employee = EmployeeDTO(json!)
                completion(Result.success(employee))
            }
        }
    }
}
