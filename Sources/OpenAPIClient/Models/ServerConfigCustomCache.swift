//
// ServerConfigCustomCache.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ServerConfigCustomCache: Sendable, Codable, JSONEncodable, Hashable {

    public var previews: ServerConfigCustomCachePreviews?
    public var captions: ServerConfigCustomCachePreviews?

    public init(previews: ServerConfigCustomCachePreviews? = nil, captions: ServerConfigCustomCachePreviews? = nil) {
        self.previews = previews
        self.captions = captions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case previews
        case captions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(previews, forKey: .previews)
        try container.encodeIfPresent(captions, forKey: .captions)
    }
}

