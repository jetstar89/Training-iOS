//
//  Image.swift
//
//  Created by  on 4/19/18
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public final class Image: NSCoding {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let link = "link"
    static let title = "title"
    static let height = "height"
    static let url = "url"
    static let width = "width"
  }

  // MARK: Properties
  public var link: String?
  public var title: String?
  public var height: String?
  public var url: String?
  public var width: String?

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
    title = json[SerializationKeys.title].string
    height = json[SerializationKeys.height].string
    url = json[SerializationKeys.url].string
    width = json[SerializationKeys.width].string
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = link { dictionary[SerializationKeys.link] = value }
    if let value = title { dictionary[SerializationKeys.title] = value }
    if let value = height { dictionary[SerializationKeys.height] = value }
    if let value = url { dictionary[SerializationKeys.url] = value }
    if let value = width { dictionary[SerializationKeys.width] = value }
    return dictionary
  }

  // MARK: NSCoding Protocol
  required public init(coder aDecoder: NSCoder) {
    self.link = aDecoder.decodeObject(forKey: SerializationKeys.link) as? String
    self.title = aDecoder.decodeObject(forKey: SerializationKeys.title) as? String
    self.height = aDecoder.decodeObject(forKey: SerializationKeys.height) as? String
    self.url = aDecoder.decodeObject(forKey: SerializationKeys.url) as? String
    self.width = aDecoder.decodeObject(forKey: SerializationKeys.width) as? String
  }

  public func encode(with aCoder: NSCoder) {
    aCoder.encode(link, forKey: SerializationKeys.link)
    aCoder.encode(title, forKey: SerializationKeys.title)
    aCoder.encode(height, forKey: SerializationKeys.height)
    aCoder.encode(url, forKey: SerializationKeys.url)
    aCoder.encode(width, forKey: SerializationKeys.width)
  }

}
