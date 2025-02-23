//
// ServerConfigInstanceSupport.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ServerConfigInstanceSupport: Sendable, Codable, JSONEncodable, Hashable {

    public var text: String?

    public init(text: String? = nil) {
        self.text = text
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case text
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(text, forKey: .text)
    }
}

