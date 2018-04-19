//
//  Units.swift
//
//  Created by  on 4/19/18
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public final class Units: NSCoding {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let pressure = "pressure"
    static let temperature = "temperature"
    static let speed = "speed"
    static let distance = "distance"
  }

  // MARK: Properties
  public var pressure: String?
  public var temperature: String?
  public var speed: String?
  public var distance: String?

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
    pressure = json[SerializationKeys.pressure].string
    temperature = json[SerializationKeys.temperature].string
    speed = json[SerializationKeys.speed].string
    distance = json[SerializationKeys.distance].string
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = pressure { dictionary[SerializationKeys.pressure] = value }
    if let value = temperature { dictionary[SerializationKeys.temperature] = value }
    if let value = speed { dictionary[SerializationKeys.speed] = value }
    if let value = distance { dictionary[SerializationKeys.distance] = value }
    return dictionary
  }

  // MARK: NSCoding Protocol
  required public init(coder aDecoder: NSCoder) {
    self.pressure = aDecoder.decodeObject(forKey: SerializationKeys.pressure) as? String
    self.temperature = aDecoder.decodeObject(forKey: SerializationKeys.temperature) as? String
    self.speed = aDecoder.decodeObject(forKey: SerializationKeys.speed) as? String
    self.distance = aDecoder.decodeObject(forKey: SerializationKeys.distance) as? String
  }

  public func encode(with aCoder: NSCoder) {
    aCoder.encode(pressure, forKey: SerializationKeys.pressure)
    aCoder.encode(temperature, forKey: SerializationKeys.temperature)
    aCoder.encode(speed, forKey: SerializationKeys.speed)
    aCoder.encode(distance, forKey: SerializationKeys.distance)
  }

}
