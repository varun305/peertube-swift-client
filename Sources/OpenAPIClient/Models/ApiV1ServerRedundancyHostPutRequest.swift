//
// ApiV1ServerRedundancyHostPutRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ApiV1ServerRedundancyHostPutRequest: Sendable, Codable, JSONEncodable, Hashable {

    /** allow mirroring of the host's local videos */
    public var redundancyAllowed: Bool

    public init(redundancyAllowed: Bool) {
        self.redundancyAllowed = redundancyAllowed
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case redundancyAllowed
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(redundancyAllowed, forKey: .redundancyAllowed)
    }
}

