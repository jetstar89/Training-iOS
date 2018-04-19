//
//  Item.swift
//
//  Created by  on 4/19/18
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public final class Item: NSCoding {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let link = "link"
    static let long = "long"
    static let forecast = "forecast"
    static let descriptionValue = "description"
    static let title = "title"
    static let guid = "guid"
    static let lat = "lat"
    static let condition = "condition"
    static let pubDate = "pubDate"
  }

  // MARK: Properties
  public var link: String?
  public var long: String?
  public var forecast: [Forecast]?
  public var descriptionValue: String?
  public var title: String?
  public var guid: Guid?
  public var lat: String?
  public var condition: Condition?
  public var pubDate: String?

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
    link = json[SerializationKeys.link].string
    long = json[SerializationKeys.long].string
    if let items = json[SerializationKeys.forecast].array { forecast = items.map { Forecast(json: $0) } }
    descriptionValue = json[SerializationKeys.descriptionValue].string
    title = json[SerializationKeys.title].string
    guid = Guid(json: json[SerializationKeys.guid])
    lat = json[SerializationKeys.lat].string
    condition = Condition(json: json[SerializationKeys.condition])
    pubDate = json[SerializationKeys.pubDate].string
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = link { dictionary[SerializationKeys.link] = value }
    if let value = long { dictionary[SerializationKeys.long] = value }
    if let value = forecast { dictionary[SerializationKeys.forecast] = value.map { $0.dictionaryRepresentation() } }
    if let value = descriptionValue { dictionary[SerializationKeys.descriptionValue] = value }
    if let value = title { dictionary[SerializationKeys.title] = value }
    if let value = guid { dictionary[SerializationKeys.guid] = value.dictionaryRepresentation() }
    if let value = lat { dictionary[SerializationKeys.lat] = value }
    if let value = condition { dictionary[SerializationKeys.condition] = value.dictionaryRepresentation() }
    if let value = pubDate { dictionary[SerializationKeys.pubDate] = value }
    return dictionary
  }

  // MARK: NSCoding Protocol
  required public init(coder aDecoder: NSCoder) {
    self.link = aDecoder.decodeObject(forKey: SerializationKeys.link) as? String
    self.long = aDecoder.decodeObject(forKey: SerializationKeys.long) as? String
    self.forecast = aDecoder.decodeObject(forKey: SerializationKeys.forecast) as? [Forecast]
    self.descriptionValue = aDecoder.decodeObject(forKey: SerializationKeys.descriptionValue) as? String
    self.title = aDecoder.decodeObject(forKey: SerializationKeys.title) as? String
    self.guid = aDecoder.decodeObject(forKey: SerializationKeys.guid) as? Guid
    self.lat = aDecoder.decodeObject(forKey: SerializationKeys.lat) as? String
    self.condition = aDecoder.decodeObject(forKey: SerializationKeys.condition) as? Condition
    self.pubDate = aDecoder.decodeObject(forKey: SerializationKeys.pubDate) as? String
  }

  public func encode(with aCoder: NSCoder) {
    aCoder.encode(link, forKey: SerializationKeys.link)
    aCoder.encode(long, forKey: SerializationKeys.long)
    aCoder.encode(forecast, forKey: SerializationKeys.forecast)
    aCoder.encode(descriptionValue, forKey: SerializationKeys.descriptionValue)
    aCoder.encode(title, forKey: SerializationKeys.title)
    aCoder.encode(guid, forKey: SerializationKeys.guid)
    aCoder.encode(lat, forKey: SerializationKeys.lat)
    aCoder.encode(condition, forKey: SerializationKeys.condition)
    aCoder.encode(pubDate, forKey: SerializationKeys.pubDate)
  }

}
