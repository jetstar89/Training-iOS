//
//  Condition.swift
//
//  Created by  on 4/19/18
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public final class Condition: NSCoding {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let date = "date"
    static let temp = "temp"
    static let code = "code"
    static let text = "text"
  }

  // MARK: Properties
  public var date: String?
  public var temp: String?
  public var code: String?
  public var text: String?

  // MARK: SwiftyJSON Initializers
  /// Initiates the instance based on the object.
  ///
  /// - parameter object: The object of either Dictionary or Array kind that was passed.
  /// - returns: An initialized instance of the class.
  public convenience init(object: Any) {
    self.init(json: JSON(object))
  }

  /// Initiates the instance based on the JSON that was passed.
  ///
  /// - parameter json: JSON object from SwiftyJSON.
  public required init(json: JSON) {
    date = json[SerializationKeys.date].string
    temp = json[SerializationKeys.temp].string
    code = json[SerializationKeys.code].string
    text = json[SerializationKeys.text].string
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = date { dictionary[SerializationKeys.date] = value }
    if let value = temp { dictionary[SerializationKeys.temp] = value }
    if let value = code { dictionary[SerializationKeys.code] = value }
    if let value = text { dictionary[SerializationKeys.text] = value }
    return dictionary
  }

  // MARK: NSCoding Protocol
  required public init(coder aDecoder: NSCoder) {
    self.date = aDecoder.decodeObject(forKey: SerializationKeys.date) as? String
    self.temp = aDecoder.decodeObject(forKey: SerializationKeys.temp) as? String
    self.code = aDecoder.decodeObject(forKey: SerializationKeys.code) as? String
    self.text = aDecoder.decodeObject(forKey: SerializationKeys.text) as? String
  }

  public func encode(with aCoder: NSCoder) {
    aCoder.encode(date, forKey: SerializationKeys.date)
    aCoder.encode(temp, forKey: SerializationKeys.temp)
    aCoder.encode(code, forKey: SerializationKeys.code)
    aCoder.encode(text, forKey: SerializationKeys.text)
  }

}
