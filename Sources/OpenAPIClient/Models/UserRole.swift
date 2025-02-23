//
// UserRole.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct UserRole: Sendable, Codable, JSONEncodable, Hashable {

    public enum Label: String, Sendable, Codable, CaseIterable {
        case user = "User"
        case moderator = "Moderator"
        case administrator = "Administrator"
    }
    public var id: Int?
    public var label: Label?

    public init(id: Int? = nil, label: Label? = nil) {
        self.id = id
        self.label = label
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case label
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(label, forKey: .label)
    }
}

