//
// CutOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct CutOptions: Sendable, Codable, JSONEncodable, Hashable {

    public var start: Int?
    public var end: Int?

    public init(start: Int? = nil, end: Int? = nil) {
        self.start = start
        self.end = end
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case start
        case end
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(start, forKey: .start)
        try container.encodeIfPresent(end, forKey: .end)
    }
}

