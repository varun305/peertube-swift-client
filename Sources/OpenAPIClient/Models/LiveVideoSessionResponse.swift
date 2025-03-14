//
// LiveVideoSessionResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct LiveVideoSessionResponse: Sendable, Codable, JSONEncodable, Hashable {

    public enum ModelError: Int, Sendable, Codable, CaseIterable {
        case _1 = 1
        case _2 = 2
        case _3 = 3
        case _4 = 4
        case _5 = 5
    }
    public var id: Int?
    /** Start date of the live session */
    public var startDate: Date?
    /** End date of the live session */
    public var endDate: Date?
    /** Error type if an error occurred during the live session:   - `1`: Bad socket health (transcoding is too slow)   - `2`: Max duration exceeded   - `3`: Quota exceeded   - `4`: Quota FFmpeg error   - `5`: Video has been blacklisted during the live  */
    public var error: ModelError?
    public var replayVideo: LiveVideoSessionResponseReplayVideo?

    public init(id: Int? = nil, startDate: Date? = nil, endDate: Date? = nil, error: ModelError? = nil, replayVideo: LiveVideoSessionResponseReplayVideo? = nil) {
        self.id = id
        self.startDate = startDate
        self.endDate = endDate
        self.error = error
        self.replayVideo = replayVideo
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case startDate
        case endDate
        case error
        case replayVideo
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(startDate, forKey: .startDate)
        try container.encodeIfPresent(endDate, forKey: .endDate)
        try container.encodeIfPresent(error, forKey: .error)
        try container.encodeIfPresent(replayVideo, forKey: .replayVideo)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension LiveVideoSessionResponse: Identifiable {}
