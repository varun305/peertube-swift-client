//
// ServerConfigCustomTranscodingHls.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** HLS specific settings */
public struct ServerConfigCustomTranscodingHls: Sendable, Codable, JSONEncodable, Hashable {

    public var enabled: Bool?
    public var splitAudioAndVideo: Bool?

    public init(enabled: Bool? = nil, splitAudioAndVideo: Bool? = nil) {
        self.enabled = enabled
        self.splitAudioAndVideo = splitAudioAndVideo
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case enabled
        case splitAudioAndVideo
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encodeIfPresent(splitAudioAndVideo, forKey: .splitAudioAndVideo)
    }
}

