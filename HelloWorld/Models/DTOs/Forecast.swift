//
//  Forecast.swift
//
//  Created by  on 4/19/18
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public final class Forecast: NSCoding {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let high = "high"
    static let date = "date"
    static let low = "low"
    static let text = "text"
    static let day = "day"
    static let code = "code"
  }

  // MARK: Properties
  public var high: String?
  public var date: String?
  public var low: String?
  public var text: String?
  public var day: String?
  public var code: String?

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
    high = json[SerializationKeys.high].string
    date = json[SerializationKeys.date].string
    low = json[SerializationKeys.low].string
    text = json[SerializationKeys.text].string
    day = json[SerializationKeys.day].string
    code = json[SerializationKeys.code].string
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = high { dictionary[SerializationKeys.high] = value }
    if let value = date { dictionary[SerializationKeys.date] = value }
    if let value = low { dictionary[SerializationKeys.low] = value }
    if let value = text { dictionary[SerializationKeys.text] = value }
    if let value = day { dictionary[SerializationKeys.day] = value }
    if let value = code { dictionary[SerializationKeys.code] = value }
    return dictionary
  }

  // MARK: NSCoding Protocol
  required public init(coder aDecoder: NSCoder) {
    self.high = aDecoder.decodeObject(forKey: SerializationKeys.high) as? String
    self.date = aDecoder.decodeObject(forKey: SerializationKeys.date) as? String
    self.low = aDecoder.decodeObject(forKey: SerializationKeys.low) as? String
    self.text = aDecoder.decodeObject(forKey: SerializationKeys.text) as? String
    self.day = aDecoder.decodeObject(forKey: SerializationKeys.day) as? String
    self.code = aDecoder.decodeObject(forKey: SerializationKeys.code) as? String
  }

  public func encode(with aCoder: NSCoder) {
    aCoder.encode(high, forKey: SerializationKeys.high)
    aCoder.encode(date, forKey: SerializationKeys.date)
    aCoder.encode(low, forKey: SerializationKeys.low)
    aCoder.encode(text, forKey: SerializationKeys.text)
    aCoder.encode(day, forKey: SerializationKeys.day)
    aCoder.encode(code, forKey: SerializationKeys.code)
  }

}
