//
// VideoStateConstant.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct VideoStateConstant: Sendable, Codable, JSONEncodable, Hashable {

    public enum Id: Int, Sendable, Codable, CaseIterable {
        case _1 = 1
        case _2 = 2
        case _3 = 3
        case _4 = 4
        case _5 = 5
        case _6 = 6
        case _7 = 7
        case _8 = 8
        case _9 = 9
    }
    /** The video state: - `1`: Published - `2`: To transcode - `3`: To import - `4`: Waiting for live stream - `5`: Live ended - `6`: To move to an external storage (object storage...) - `7`: Transcoding failed - `8`: Moving to an external storage failed - `9`: To edit using studio edition feature  */
    public var id: Id?
    public var label: String?

    public init(id: Id? = nil, label: String? = nil) {
        self.id = id
        self.label = label
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case label
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(label, forKey: .label)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension VideoStateConstant: Identifiable {}
