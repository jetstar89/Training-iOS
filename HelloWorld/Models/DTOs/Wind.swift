//
//  Wind.swift
//
//  Created by  on 4/19/18
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public final class Wind: NSCoding {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let chill = "chill"
    static let direction = "direction"
    static let speed = "speed"
  }

  // MARK: Properties
  public var chill: String?
  public var direction: String?
  public var speed: String?

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
    chill = json[SerializationKeys.chill].string
    direction = json[SerializationKeys.direction].string
    speed = json[SerializationKeys.speed].string
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = chill { dictionary[SerializationKeys.chill] = value }
    if let value = direction { dictionary[SerializationKeys.direction] = value }
    if let value = speed { dictionary[SerializationKeys.speed] = value }
    return dictionary
  }

  // MARK: NSCoding Protocol
  required public init(coder aDecoder: NSCoder) {
    self.chill = aDecoder.decodeObject(forKey: SerializationKeys.chill) as? String
    self.direction = aDecoder.decodeObject(forKey: SerializationKeys.direction) as? String
    self.speed = aDecoder.decodeObject(forKey: SerializationKeys.speed) as? String
  }

  public func encode(with aCoder: NSCoder) {
    aCoder.encode(chill, forKey: SerializationKeys.chill)
    aCoder.encode(direction, forKey: SerializationKeys.direction)
    aCoder.encode(speed, forKey: SerializationKeys.speed)
  }

}
