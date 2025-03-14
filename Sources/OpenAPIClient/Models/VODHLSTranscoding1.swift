//
// VODHLSTranscoding1.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct VODHLSTranscoding1: Sendable, Codable, JSONEncodable, Hashable {

    public var input: VODWebVideoTranscoding1Input?
    public var output: VODWebVideoTranscoding1Output?

    public init(input: VODWebVideoTranscoding1Input? = nil, output: VODWebVideoTranscoding1Output? = nil) {
        self.input = input
        self.output = output
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case input
        case output
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(input, forKey: .input)
        try container.encodeIfPresent(output, forKey: .output)
    }
}

