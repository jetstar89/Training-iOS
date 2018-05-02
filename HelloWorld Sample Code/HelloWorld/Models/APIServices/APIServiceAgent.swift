//
//  APIServiceAgent.swift
//  HandShake-PSA-Agent
//
//  Created by hnc on 12/7/17.
//

import UIKit
import Alamofire
import SwiftyJSON

/*
 *  APIServiceAgent takes responsible for
 *  - Convert DataResponse<Any> to JSON object
 *  - Detect and handle application errors such as: token expired, version not support...
 */

let responseCodeSuccess = 0
let errorCodeNoData     = 404

let statusCodeSuccess = "SUCCESS"
let statusCodeFail = "FAIL"

class APIServiceAgent: NSObject {
    /*
     *  perform request
     *  param:
     Add a comment to this line
     *  - request: DataRequest
     *  - completion block (JSON, NSError?)
     */
   
    func startRequest(_ request: DataRequest, completion: @escaping(JSON?, NSError?) -> Void) {
        request
            .validate()
            .responseJSON { (_ response: DataResponse<Any>) in
                print(request.debugDescription)
                switch response.result {
                case .success:
                    if let responseData = response.result.value {
                        let json            = JSON(responseData)
                        let error = json["is_error"].boolValue
                        let message = json["message_code"]
                        let statusCode = json["status_code"].intValue
                        print(json)
                        if error {
                            completion(JSON.null, NSError(domain: "",
                                                          code: statusCode,
                                                          userInfo: [NSLocalizedDescriptionKey: message]))
                        } else {
                            completion(json["data"], nil)
                        }
                    }
                case .failure(let error as NSError):                    
                    completion(JSON.null, error)
                default:
                    break
                }
        }
    }
}

