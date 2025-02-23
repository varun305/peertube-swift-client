//
// ApiV1VideosIdRatePutRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ApiV1VideosIdRatePutRequest: Sendable, Codable, JSONEncodable, Hashable {

    public enum Rating: String, Sendable, Codable, CaseIterable {
        case like = "like"
        case dislike = "dislike"
    }
    public var rating: Rating

    public init(rating: Rating) {
        self.rating = rating
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case rating
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(rating, forKey: .rating)
    }
}

