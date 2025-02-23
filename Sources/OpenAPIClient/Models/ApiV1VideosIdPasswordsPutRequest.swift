//
// ApiV1VideosIdPasswordsPutRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ApiV1VideosIdPasswordsPutRequest: Sendable, Codable, JSONEncodable, Hashable {

    public static let passwordsRule = ArrayRule(minItems: nil, maxItems: nil, uniqueItems: true)
    public var passwords: Set<String>?

    public init(passwords: Set<String>? = nil) {
        self.passwords = passwords
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case passwords
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(passwords, forKey: .passwords)
    }
}

