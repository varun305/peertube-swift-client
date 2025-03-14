//
// Notification.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct Notification: Sendable, Codable, JSONEncodable, Hashable {

    public static let idRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    public var id: Int?
    public var type: NotificationType?
    public var read: Bool?
    public var video: NotificationVideo?
    public var videoImport: NotificationVideoImport?
    public var comment: NotificationComment?
    public var videoAbuse: NotificationVideoAbuse?
    public var videoBlacklist: NotificationVideoAbuse?
    public var account: ActorInfo?
    public var actorFollow: NotificationActorFollow?
    public var createdAt: Date?
    public var updatedAt: Date?

    public init(id: Int? = nil, type: NotificationType? = nil, read: Bool? = nil, video: NotificationVideo? = nil, videoImport: NotificationVideoImport? = nil, comment: NotificationComment? = nil, videoAbuse: NotificationVideoAbuse? = nil, videoBlacklist: NotificationVideoAbuse? = nil, account: ActorInfo? = nil, actorFollow: NotificationActorFollow? = nil, createdAt: Date? = nil, updatedAt: Date? = nil) {
        self.id = id
        self.type = type
        self.read = read
        self.video = video
        self.videoImport = videoImport
        self.comment = comment
        self.videoAbuse = videoAbuse
        self.videoBlacklist = videoBlacklist
        self.account = account
        self.actorFollow = actorFollow
        self.createdAt = createdAt
        self.updatedAt = updatedAt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case type
        case read
        case video
        case videoImport
        case comment
        case videoAbuse
        case videoBlacklist
        case account
        case actorFollow
        case createdAt
        case updatedAt
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(read, forKey: .read)
        try container.encodeIfPresent(video, forKey: .video)
        try container.encodeIfPresent(videoImport, forKey: .videoImport)
        try container.encodeIfPresent(comment, forKey: .comment)
        try container.encodeIfPresent(videoAbuse, forKey: .videoAbuse)
        try container.encodeIfPresent(videoBlacklist, forKey: .videoBlacklist)
        try container.encodeIfPresent(account, forKey: .account)
        try container.encodeIfPresent(actorFollow, forKey: .actorFollow)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension Notification: Identifiable {}
