//
// VideoRedundancyRedundancies.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct VideoRedundancyRedundancies: Sendable, Codable, JSONEncodable, Hashable {

    public var streamingPlaylists: [FileRedundancyInformation]?

    public init(streamingPlaylists: [FileRedundancyInformation]? = nil) {
        self.streamingPlaylists = streamingPlaylists
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case streamingPlaylists
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(streamingPlaylists, forKey: .streamingPlaylists)
    }
}

