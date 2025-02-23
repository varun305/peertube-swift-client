//
// ApiV1AbusesPostRequestVideo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ApiV1AbusesPostRequestVideo: Sendable, Codable, JSONEncodable, Hashable {

    public static let idRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    public static let startAtRule = NumericRule<Int>(minimum: 0, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    public static let endAtRule = NumericRule<Int>(minimum: 0, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    /** Video id to report */
    public var id: Int?
    /** Timestamp in the video that marks the beginning of the report */
    public var startAt: Int?
    /** Timestamp in the video that marks the ending of the report */
    public var endAt: Int?

    public init(id: Int? = nil, startAt: Int? = nil, endAt: Int? = nil) {
        self.id = id
        self.startAt = startAt
        self.endAt = endAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case startAt
        case endAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(startAt, forKey: .startAt)
        try container.encodeIfPresent(endAt, forKey: .endAt)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension ApiV1AbusesPostRequestVideo: Identifiable {}
