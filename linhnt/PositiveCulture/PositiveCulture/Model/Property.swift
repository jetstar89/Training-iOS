//
//  Property.swift
//  PositiveCulture
//
//  Created by kemshiro on 4/17/18.
//  Copyright © 2018 kemshiro. All rights reserved.
//

import Foundation
public class Property{
    var image : String
    var title : String
    var address : String
    var agent : String
    var cost : Double
    var square : String
    var status : String
    
    init(image : String!,title : String!, address : String!, agent : String!, cost : Double!, square : String!, status : String!) {
        self.image = image
        self.title = title
        self.address = address
        self.agent = agent
        self.cost = cost
        self.square = square
        self.status = status
    }
}
