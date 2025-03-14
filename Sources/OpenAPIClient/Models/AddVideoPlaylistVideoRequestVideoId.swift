//
// AddVideoPlaylistVideoRequestVideoId.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** Video to add in the playlist */
public enum AddVideoPlaylistVideoRequestVideoId: Sendable, Codable, JSONEncodable, Hashable {
    case typeInt(Int)
    case typeUuid(UUID)

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .typeInt(let value):
            try container.encode(value)
        case .typeUuid(let value):
            try container.encode(value)
        }
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(Int.self) {
            self = .typeInt(value)
        } else if let value = try? container.decode(UUID.self) {
            self = .typeUuid(value)
        } else {
            throw DecodingError.typeMismatch(Self.Type.self, .init(codingPath: decoder.codingPath, debugDescription: "Unable to decode instance of AddVideoPlaylistVideoRequestVideoId"))
        }
    }
}

