//
// AddPluginRequestOneOf1.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct AddPluginRequestOneOf1: Sendable, Codable, JSONEncodable, Hashable {

    public var path: String

    public init(path: String) {
        self.path = path
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case path
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(path, forKey: .path)
    }
}

