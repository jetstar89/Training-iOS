//
//  Query.swift
//
//  Created by  on 4/19/18
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public final class Query: NSCoding {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let created = "created"
    static let results = "results"
    static let lang = "lang"
    static let count = "count"
  }

  // MARK: Properties
  public var created: String?
  public var results: Results?
  public var lang: String?
  public var count: Int?

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
    created = json[SerializationKeys.created].string
    results = Results(json: json[SerializationKeys.results])
    lang = json[SerializationKeys.lang].string
    count = json[SerializationKeys.count].int
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = created { dictionary[SerializationKeys.created] = value }
    if let value = results { dictionary[SerializationKeys.results] = value.dictionaryRepresentation() }
    if let value = lang { dictionary[SerializationKeys.lang] = value }
    if let value = count { dictionary[SerializationKeys.count] = value }
    return dictionary
  }

  // MARK: NSCoding Protocol
  required public init(coder aDecoder: NSCoder) {
    self.created = aDecoder.decodeObject(forKey: SerializationKeys.created) as? String
    self.results = aDecoder.decodeObject(forKey: SerializationKeys.results) as? Results
    self.lang = aDecoder.decodeObject(forKey: SerializationKeys.lang) as? String
    self.count = aDecoder.decodeObject(forKey: SerializationKeys.count) as? Int
  }

  public func encode(with aCoder: NSCoder) {
    aCoder.encode(created, forKey: SerializationKeys.created)
    aCoder.encode(results, forKey: SerializationKeys.results)
    aCoder.encode(lang, forKey: SerializationKeys.lang)
    aCoder.encode(count, forKey: SerializationKeys.count)
  }

}
