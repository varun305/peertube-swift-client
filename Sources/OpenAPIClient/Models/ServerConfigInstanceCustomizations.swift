//
// ServerConfigInstanceCustomizations.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ServerConfigInstanceCustomizations: Sendable, Codable, JSONEncodable, Hashable {

    public var javascript: String?
    public var css: String?

    public init(javascript: String? = nil, css: String? = nil) {
        self.javascript = javascript
        self.css = css
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case javascript
        case css
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(javascript, forKey: .javascript)
        try container.encodeIfPresent(css, forKey: .css)
    }
}

