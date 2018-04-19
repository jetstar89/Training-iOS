//
//  AuditDataManager.swift
//  HelloWorld
//
//  Created by Huy Nguyen on 2/23/17.
//  Copyright © 2017 Tung Duong Thanh. All rights reserved.
//

import UIKit

final class Singleton {
    //mark: Shared Instance
    static let sharedInstance = Singleton()
    
    var userName: String = ""
    var country: String = ""
}
