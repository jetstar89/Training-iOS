//
//  Location.swift
//
//  Created by  on 4/19/18
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public final class Location: NSCoding {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let city = "city"
    static let region = "region"
    static let country = "country"
  }

  // MARK: Properties
  public var city: String?
  public var region: String?
  public var country: String?

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
    city = json[SerializationKeys.city].string
    region = json[SerializationKeys.region].string
    country = json[SerializationKeys.country].string
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = city { dictionary[SerializationKeys.city] = value }
    if let value = region { dictionary[SerializationKeys.region] = value }
    if let value = country { dictionary[SerializationKeys.country] = value }
    return dictionary
  }

  // MARK: NSCoding Protocol
  required public init(coder aDecoder: NSCoder) {
    self.city = aDecoder.decodeObject(forKey: SerializationKeys.city) as? String
    self.region = aDecoder.decodeObject(forKey: SerializationKeys.region) as? String
    self.country = aDecoder.decodeObject(forKey: SerializationKeys.country) as? String
  }

  public func encode(with aCoder: NSCoder) {
    aCoder.encode(city, forKey: SerializationKeys.city)
    aCoder.encode(region, forKey: SerializationKeys.region)
    aCoder.encode(country, forKey: SerializationKeys.country)
  }

}
