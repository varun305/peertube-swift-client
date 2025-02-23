//
// MRSSPeerLink.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct MRSSPeerLink: Sendable, Codable, JSONEncodable, Hashable {

    public enum ModelType: String, Sendable, Codable, CaseIterable {
        case applicationSlashXBittorrent = "application/x-bittorrent"
    }
    public var href: String?
    public var type: ModelType?

    public init(href: String? = nil, type: ModelType? = nil) {
        self.href = href
        self.type = type
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case href
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(href, forKey: .href)
        try container.encodeIfPresent(type, forKey: .type)
    }
}

