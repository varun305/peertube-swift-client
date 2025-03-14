//
// VODWebVideoTranscoding1Output.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct VODWebVideoTranscoding1Output: Sendable, Codable, JSONEncodable, Hashable {

    public var resolution: Double?
    public var fps: Double?

    public init(resolution: Double? = nil, fps: Double? = nil) {
        self.resolution = resolution
        self.fps = fps
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case resolution
        case fps
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(resolution, forKey: .resolution)
        try container.encodeIfPresent(fps, forKey: .fps)
    }
}

