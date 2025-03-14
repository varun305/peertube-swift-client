//
// ServerConfigViewsViews.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ServerConfigViewsViews: Sendable, Codable, JSONEncodable, Hashable {

    public var watchingInterval: ServerConfigViewsViewsWatchingInterval?

    public init(watchingInterval: ServerConfigViewsViewsWatchingInterval? = nil) {
        self.watchingInterval = watchingInterval
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case watchingInterval
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(watchingInterval, forKey: .watchingInterval)
    }
}

