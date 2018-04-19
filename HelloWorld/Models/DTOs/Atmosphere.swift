//
//  Atmosphere.swift
//
//  Created by  on 4/19/18
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public final class Atmosphere: NSCoding {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let humidity = "humidity"
    static let visibility = "visibility"
    static let rising = "rising"
    static let pressure = "pressure"
  }

  // MARK: Properties
  public var humidity: String?
  public var visibility: String?
  public var rising: String?
  public var pressure: String?

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
    humidity = json[SerializationKeys.humidity].string
    visibility = json[SerializationKeys.visibility].string
    rising = json[SerializationKeys.rising].string
    pressure = json[SerializationKeys.pressure].string
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = humidity { dictionary[SerializationKeys.humidity] = value }
    if let value = visibility { dictionary[SerializationKeys.visibility] = value }
    if let value = rising { dictionary[SerializationKeys.rising] = value }
    if let value = pressure { dictionary[SerializationKeys.pressure] = value }
    return dictionary
  }

  // MARK: NSCoding Protocol
  required public init(coder aDecoder: NSCoder) {
    self.humidity = aDecoder.decodeObject(forKey: SerializationKeys.humidity) as? String
    self.visibility = aDecoder.decodeObject(forKey: SerializationKeys.visibility) as? String
    self.rising = aDecoder.decodeObject(forKey: SerializationKeys.rising) as? String
    self.pressure = aDecoder.decodeObject(forKey: SerializationKeys.pressure) as? String
  }

  public func encode(with aCoder: NSCoder) {
    aCoder.encode(humidity, forKey: SerializationKeys.humidity)
    aCoder.encode(visibility, forKey: SerializationKeys.visibility)
    aCoder.encode(rising, forKey: SerializationKeys.rising)
    aCoder.encode(pressure, forKey: SerializationKeys.pressure)
  }

}
