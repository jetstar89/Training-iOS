//
//  APIServiceObject.swift
//  HandShake-PSA-Agent
//
//  Created by hnc on 12/7/17.
//

import UIKit
import Alamofire

class APIServiceObject: NSObject {
    var requests = [DataRequest]()
    var serviceAgent = APIServiceAgent()
    
    /*
     * cancel all request for the certain service object
     * and remove all request from requests
     */
    func cancelAllRequests() {
        for request in requests {
            request.cancel()
        }
        requests.removeAll()
    }
    
    /*
     *  add request to request array
     *  @param request  DataRequest
     */
    
    func addToQueue(_ request: DataRequest) {
        requests.append(request)
    }
}
