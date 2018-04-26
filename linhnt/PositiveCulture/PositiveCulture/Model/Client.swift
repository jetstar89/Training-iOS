//
//  Client.swift
//  PositiveCulture
//
//  Created by kemshiro on 4/18/18.
//  Copyright © 2018 kemshiro. All rights reserved.
//

import Foundation
public class Client {
    
    var image : String
    var name  : String
    var property : String
    
    init(image : String, name : String, property : String) {
        
        self.image = image
        self.name = name
        self.property = property;
    }
}
