//
// VideoChannelEdit.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct VideoChannelEdit: Sendable, Codable, JSONEncodable, Hashable {

    /** Channel display name */
    public var displayName: JSONValue?
    /** Channel description */
    public var description: JSONValue?
    /** How to support/fund the channel */
    public var support: JSONValue?

    public init(displayName: JSONValue? = nil, description: JSONValue? = nil, support: JSONValue? = nil) {
        self.displayName = displayName
        self.description = description
        self.support = support
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case displayName
        case description
        case support
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(displayName, forKey: .displayName)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(support, forKey: .support)
    }
}

