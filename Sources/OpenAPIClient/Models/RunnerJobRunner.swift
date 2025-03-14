//
// RunnerJobRunner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** If job is associated to a runner */
public struct RunnerJobRunner: Sendable, Codable, JSONEncodable, Hashable {

    public var id: Double?
    public var name: String?
    public var description: String?

    public init(id: Double? = nil, name: String? = nil, description: String? = nil) {
        self.id = id
        self.name = name
        self.description = description
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case description
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
    }
}

