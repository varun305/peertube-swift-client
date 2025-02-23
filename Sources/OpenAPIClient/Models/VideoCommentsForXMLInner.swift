//
// VideoCommentsForXMLInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct VideoCommentsForXMLInner: Sendable, Codable, JSONEncodable, Hashable {

    public var link: String?
    public var guid: String?
    public var pubDate: Date?
    public var contentEncoded: String?
    public var dcCreator: String?

    public init(link: String? = nil, guid: String? = nil, pubDate: Date? = nil, contentEncoded: String? = nil, dcCreator: String? = nil) {
        self.link = link
        self.guid = guid
        self.pubDate = pubDate
        self.contentEncoded = contentEncoded
        self.dcCreator = dcCreator
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case link
        case guid
        case pubDate
        case contentEncoded = "content:encoded"
        case dcCreator = "dc:creator"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(link, forKey: .link)
        try container.encodeIfPresent(guid, forKey: .guid)
        try container.encodeIfPresent(pubDate, forKey: .pubDate)
        try container.encodeIfPresent(contentEncoded, forKey: .contentEncoded)
        try container.encodeIfPresent(dcCreator, forKey: .dcCreator)
    }
}

