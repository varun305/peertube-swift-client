//
// AutomaticTagAvailable.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AutomaticTagAvailable: Sendable, Codable, JSONEncodable, Hashable {

    /** Available auto tags that can be used to filter objects or set a comment in review state */
    public var available: [AutomaticTagAvailableAvailableInner]?

    public init(available: [AutomaticTagAvailableAvailableInner]? = nil) {
        self.available = available
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case available
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(available, forKey: .available)
    }
}

