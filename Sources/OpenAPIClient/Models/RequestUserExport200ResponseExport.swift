//
// RequestUserExport200ResponseExport.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct RequestUserExport200ResponseExport: Sendable, Codable, JSONEncodable, Hashable {

    public var id: Int?

    public init(id: Int? = nil) {
        self.id = id
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension RequestUserExport200ResponseExport: Identifiable {}
