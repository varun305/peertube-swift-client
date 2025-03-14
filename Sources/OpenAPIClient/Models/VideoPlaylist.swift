//
// VideoPlaylist.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct VideoPlaylist: Sendable, Codable, JSONEncodable, Hashable {

    public static let idRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    public static let uuidRule = StringRule(minLength: 36, maxLength: 36, pattern: "/^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/")
    public static let descriptionRule = StringRule(minLength: 3, maxLength: 1000, pattern: nil)
    public static let displayNameRule = StringRule(minLength: 1, maxLength: 120, pattern: nil)
    public static let videoLengthRule = NumericRule<Int>(minimum: 0, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    public var id: Int?
    public var uuid: UUID?
    /** translation of a uuid v4 with a bigger alphabet to have a shorter uuid */
    public var shortUUID: String?
    public var createdAt: Date?
    public var updatedAt: Date?
    public var description: String?
    public var displayName: String?
    public var isLocal: Bool?
    public var videoLength: Int?
    public var thumbnailPath: String?
    public var privacy: VideoPlaylistPrivacyConstant?
    public var type: VideoPlaylistTypeConstant?
    public var ownerAccount: AccountSummary?
    public var videoChannel: VideoChannelSummary?

    public init(id: Int? = nil, uuid: UUID? = nil, shortUUID: String? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, description: String? = nil, displayName: String? = nil, isLocal: Bool? = nil, videoLength: Int? = nil, thumbnailPath: String? = nil, privacy: VideoPlaylistPrivacyConstant? = nil, type: VideoPlaylistTypeConstant? = nil, ownerAccount: AccountSummary? = nil, videoChannel: VideoChannelSummary? = nil) {
        self.id = id
        self.uuid = uuid
        self.shortUUID = shortUUID
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.description = description
        self.displayName = displayName
        self.isLocal = isLocal
        self.videoLength = videoLength
        self.thumbnailPath = thumbnailPath
        self.privacy = privacy
        self.type = type
        self.ownerAccount = ownerAccount
        self.videoChannel = videoChannel
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case uuid
        case shortUUID
        case createdAt
        case updatedAt
        case description
        case displayName
        case isLocal
        case videoLength
        case thumbnailPath
        case privacy
        case type
        case ownerAccount
        case videoChannel
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(uuid, forKey: .uuid)
        try container.encodeIfPresent(shortUUID, forKey: .shortUUID)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(displayName, forKey: .displayName)
        try container.encodeIfPresent(isLocal, forKey: .isLocal)
        try container.encodeIfPresent(videoLength, forKey: .videoLength)
        try container.encodeIfPresent(thumbnailPath, forKey: .thumbnailPath)
        try container.encodeIfPresent(privacy, forKey: .privacy)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(ownerAccount, forKey: .ownerAccount)
        try container.encodeIfPresent(videoChannel, forKey: .videoChannel)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension VideoPlaylist: Identifiable {}
