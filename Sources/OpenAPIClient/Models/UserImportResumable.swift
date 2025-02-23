//
// UserImportResumable.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct UserImportResumable: Sendable, Codable, JSONEncodable, Hashable {

    /** Archive filename including extension */
    public var filename: String?

    public init(filename: String? = nil) {
        self.filename = filename
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case filename
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(filename, forKey: .filename)
    }
}

