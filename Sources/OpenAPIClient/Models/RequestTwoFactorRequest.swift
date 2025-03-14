//
// RequestTwoFactorRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct RequestTwoFactorRequest: Sendable, Codable, JSONEncodable, Hashable {

    /** Password of the currently authenticated user */
    public var currentPassword: String?

    public init(currentPassword: String? = nil) {
        self.currentPassword = currentPassword
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case currentPassword
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(currentPassword, forKey: .currentPassword)
    }
}

