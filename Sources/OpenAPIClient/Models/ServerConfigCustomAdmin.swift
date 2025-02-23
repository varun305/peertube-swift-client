//
// ServerConfigCustomAdmin.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ServerConfigCustomAdmin: Sendable, Codable, JSONEncodable, Hashable {

    public var email: String?

    public init(email: String? = nil) {
        self.email = email
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case email
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(email, forKey: .email)
    }
}

