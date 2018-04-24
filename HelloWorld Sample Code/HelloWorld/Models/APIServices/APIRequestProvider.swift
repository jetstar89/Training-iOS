//
//  APIRequestProvider.swift
//  HandShake-PSA-Agent
//
//  Created by hnc on 12/7/17.
//

import UIKit
import Alamofire
import SwiftyJSON

let kClientVersionHeaderField = "CLIENT-VERSION"
let kClientOSHeaderField = "DEVICE-TYPE"
let kClientDeviceTokenHeaderField = "DEVICE-TOKEN"
let baseURL = Bundle.main.object(forInfoDictionaryKey: "APP_API_URL") as! String

class APIRequestProvider: NSObject {
    // MARK: SINGLETON
    static var shareInstance: APIRequestProvider = {
        let instance = APIRequestProvider()
        return instance
    }()
    
    // MARK: DEFAULT HEADER & REQUEST URL
    private var _headers: HTTPHeaders = [:]
    var headers: HTTPHeaders {
        set {
            _headers = headers
        }
        get {
            let version = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as! String
            let deviceOS = "ios"
            
            var headers: HTTPHeaders = [
                "Accept": "application/json",
                "Content-Type": "application/json",
                kClientVersionHeaderField: version,
                kClientOSHeaderField: deviceOS
            ]
            return headers
        }
    }
    
    private var _requestURL: String = baseURL
    var requestURL: String {
        set {
            _requestURL = requestURL
        }
        get {
            return _requestURL
        }
    }
    
    var alamoFireManager: SessionManager
    override init() {
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForResource = 60 // seconds for testing
        alamoFireManager = Alamofire.SessionManager(configuration: configuration)
    }
    
    func loginRequest(username: String, password: String) ->DataRequest {
        let params = ["username": username, "password": password]
        let url = URL(string: requestURL.appending("user/auth/login"))
        let request = Alamofire.request(url!,
                                        method: .post,
                                        parameters: params,
                                        encoding: JSONEncoding.default,
                                        headers: headers)
        return request
    }
}
