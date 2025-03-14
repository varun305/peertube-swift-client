//
// ApiV1UsersMeVideoQuotaUsedGet200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ApiV1UsersMeVideoQuotaUsedGet200Response: Sendable, Codable, JSONEncodable, Hashable {

    /** The user video quota used so far in bytes */
    public var videoQuotaUsed: Double?
    /** The user video quota used today in bytes */
    public var videoQuotaUsedDaily: Double?

    public init(videoQuotaUsed: Double? = nil, videoQuotaUsedDaily: Double? = nil) {
        self.videoQuotaUsed = videoQuotaUsed
        self.videoQuotaUsedDaily = videoQuotaUsedDaily
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case videoQuotaUsed
        case videoQuotaUsedDaily
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(videoQuotaUsed, forKey: .videoQuotaUsed)
        try container.encodeIfPresent(videoQuotaUsedDaily, forKey: .videoQuotaUsedDaily)
    }
}

