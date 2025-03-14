//
// ServerConfigExport.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ServerConfigExport: Sendable, Codable, JSONEncodable, Hashable {

    public var users: ServerConfigExportUsers?

    public init(users: ServerConfigExportUsers? = nil) {
        self.users = users
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case users
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(users, forKey: .users)
    }
}

