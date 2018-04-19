//
//  Channel.swift
//
//  Created by  on 4/19/18
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public final class Channel: NSCoding {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let units = "units"
    static let descriptionValue = "description"
    static let language = "language"
    static let astronomy = "astronomy"
    static let link = "link"
    static let location = "location"
    static let ttl = "ttl"
    static let item = "item"
    static let image = "image"
    static let lastBuildDate = "lastBuildDate"
    static let title = "title"
    static let wind = "wind"
    static let atmosphere = "atmosphere"
  }

  // MARK: Properties
  public var units: Units?
  public var descriptionValue: String?
  public var language: String?
  public var astronomy: Astronomy?
  public var link: String?
  public var location: Location?
  public var ttl: String?
  public var item: Item?
  public var image: Image?
  public var lastBuildDate: String?
  public var title: String?
  public var wind: Wind?
  public var atmosphere: Atmosphere?

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
    units = Units(json: json[SerializationKeys.units])
    descriptionValue = json[SerializationKeys.descriptionValue].string
    language = json[SerializationKeys.language].string
    astronomy = Astronomy(json: json[SerializationKeys.astronomy])
    link = json[SerializationKeys.link].string
    location = Location(json: json[SerializationKeys.location])
    ttl = json[SerializationKeys.ttl].string
    item = Item(json: json[SerializationKeys.item])
    image = Image(json: json[SerializationKeys.image])
    lastBuildDate = json[SerializationKeys.lastBuildDate].string
    title = json[SerializationKeys.title].string
    wind = Wind(json: json[SerializationKeys.wind])
    atmosphere = Atmosphere(json: json[SerializationKeys.atmosphere])
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = units { dictionary[SerializationKeys.units] = value.dictionaryRepresentation() }
    if let value = descriptionValue { dictionary[SerializationKeys.descriptionValue] = value }
    if let value = language { dictionary[SerializationKeys.language] = value }
    if let value = astronomy { dictionary[SerializationKeys.astronomy] = value.dictionaryRepresentation() }
    if let value = link { dictionary[SerializationKeys.link] = value }
    if let value = location { dictionary[SerializationKeys.location] = value.dictionaryRepresentation() }
    if let value = ttl { dictionary[SerializationKeys.ttl] = value }
    if let value = item { dictionary[SerializationKeys.item] = value.dictionaryRepresentation() }
    if let value = image { dictionary[SerializationKeys.image] = value.dictionaryRepresentation() }
    if let value = lastBuildDate { dictionary[SerializationKeys.lastBuildDate] = value }
    if let value = title { dictionary[SerializationKeys.title] = value }
    if let value = wind { dictionary[SerializationKeys.wind] = value.dictionaryRepresentation() }
    if let value = atmosphere { dictionary[SerializationKeys.atmosphere] = value.dictionaryRepresentation() }
    return dictionary
  }

  // MARK: NSCoding Protocol
  required public init(coder aDecoder: NSCoder) {
    self.units = aDecoder.decodeObject(forKey: SerializationKeys.units) as? Units
    self.descriptionValue = aDecoder.decodeObject(forKey: SerializationKeys.descriptionValue) as? String
    self.language = aDecoder.decodeObject(forKey: SerializationKeys.language) as? String
    self.astronomy = aDecoder.decodeObject(forKey: SerializationKeys.astronomy) as? Astronomy
    self.link = aDecoder.decodeObject(forKey: SerializationKeys.link) as? String
    self.location = aDecoder.decodeObject(forKey: SerializationKeys.location) as? Location
    self.ttl = aDecoder.decodeObject(forKey: SerializationKeys.ttl) as? String
    self.item = aDecoder.decodeObject(forKey: SerializationKeys.item) as? Item
    self.image = aDecoder.decodeObject(forKey: SerializationKeys.image) as? Image
    self.lastBuildDate = aDecoder.decodeObject(forKey: SerializationKeys.lastBuildDate) as? String
    self.title = aDecoder.decodeObject(forKey: SerializationKeys.title) as? String
    self.wind = aDecoder.decodeObject(forKey: SerializationKeys.wind) as? Wind
    self.atmosphere = aDecoder.decodeObject(forKey: SerializationKeys.atmosphere) as? Atmosphere
  }

  public func encode(with aCoder: NSCoder) {
    aCoder.encode(units, forKey: SerializationKeys.units)
    aCoder.encode(descriptionValue, forKey: SerializationKeys.descriptionValue)
    aCoder.encode(language, forKey: SerializationKeys.language)
    aCoder.encode(astronomy, forKey: SerializationKeys.astronomy)
    aCoder.encode(link, forKey: SerializationKeys.link)
    aCoder.encode(location, forKey: SerializationKeys.location)
    aCoder.encode(ttl, forKey: SerializationKeys.ttl)
    aCoder.encode(item, forKey: SerializationKeys.item)
    aCoder.encode(image, forKey: SerializationKeys.image)
    aCoder.encode(lastBuildDate, forKey: SerializationKeys.lastBuildDate)
    aCoder.encode(title, forKey: SerializationKeys.title)
    aCoder.encode(wind, forKey: SerializationKeys.wind)
    aCoder.encode(atmosphere, forKey: SerializationKeys.atmosphere)
  }

}
