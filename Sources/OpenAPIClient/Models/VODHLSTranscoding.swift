//
// VODHLSTranscoding.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct VODHLSTranscoding: Sendable, Codable, JSONEncodable, Hashable {

    public var videoFile: URL?
    public var resolutionPlaylistFile: URL?

    public init(videoFile: URL? = nil, resolutionPlaylistFile: URL? = nil) {
        self.videoFile = videoFile
        self.resolutionPlaylistFile = resolutionPlaylistFile
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case videoFile
        case resolutionPlaylistFile
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(videoFile, forKey: .videoFile)
        try container.encodeIfPresent(resolutionPlaylistFile, forKey: .resolutionPlaylistFile)
    }
}

