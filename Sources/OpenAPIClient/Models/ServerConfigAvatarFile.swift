//
// ServerConfigAvatarFile.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ServerConfigAvatarFile: Sendable, Codable, JSONEncodable, Hashable {

    public var size: ServerConfigAvatarFileSize?

    public init(size: ServerConfigAvatarFileSize? = nil) {
        self.size = size
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case size
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(size, forKey: .size)
    }
}

