//
// NotificationListResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct NotificationListResponse: Sendable, Codable, JSONEncodable, Hashable {

    public static let dataRule = ArrayRule(minItems: nil, maxItems: 100, uniqueItems: false)
    public var total: Int?
    public var data: [Notification]?

    public init(total: Int? = nil, data: [Notification]? = nil) {
        self.total = total
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case total
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(total, forKey: .total)
        try container.encodeIfPresent(data, forKey: .data)
    }
}

