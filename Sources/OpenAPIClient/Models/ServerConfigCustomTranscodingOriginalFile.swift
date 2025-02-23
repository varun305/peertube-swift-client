//
// ServerConfigCustomTranscodingOriginalFile.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ServerConfigCustomTranscodingOriginalFile: Sendable, Codable, JSONEncodable, Hashable {

    public var keep: Bool?

    public init(keep: Bool? = nil) {
        self.keep = keep
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case keep
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(keep, forKey: .keep)
    }
}

