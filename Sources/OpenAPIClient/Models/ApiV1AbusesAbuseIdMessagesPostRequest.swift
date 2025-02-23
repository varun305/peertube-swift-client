//
// ApiV1AbusesAbuseIdMessagesPostRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ApiV1AbusesAbuseIdMessagesPostRequest: Sendable, Codable, JSONEncodable, Hashable {

    public static let messageRule = StringRule(minLength: 2, maxLength: 3000, pattern: nil)
    /** Message to send */
    public var message: String

    public init(message: String) {
        self.message = message
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case message
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(message, forKey: .message)
    }
}

