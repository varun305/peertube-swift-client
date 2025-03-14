//
// AddPluginRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public enum AddPluginRequest: Sendable, Codable, JSONEncodable, Hashable {
    case typeAddPluginRequestOneOf(AddPluginRequestOneOf)
    case typeAddPluginRequestOneOf1(AddPluginRequestOneOf1)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeAddPluginRequestOneOf(let value):
            try container.encode(value)
        case .typeAddPluginRequestOneOf1(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(AddPluginRequestOneOf.self) {
            self = .typeAddPluginRequestOneOf(value)
        } else if let value = try? container.decode(AddPluginRequestOneOf1.self) {
            self = .typeAddPluginRequestOneOf1(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of AddPluginRequest"))
        }
    }
}

