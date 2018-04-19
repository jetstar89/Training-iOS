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
    
    func forecastRequest(_ place: String = "Hanoi, VN") -> DataRequest {
        let url = URL(string: "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22hanoi%2C%20vn%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys")
        let request = Alamofire.request(url!,
                                        method: .get,
                                        parameters: nil,
                                        encoding: JSONEncoding.default,
                                        headers: headers)
        return request
    }
}
