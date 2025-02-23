//
// VideoCommentForOwnerOrAdmin.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct VideoCommentForOwnerOrAdmin: Sendable, Codable, JSONEncodable, Hashable {

    public static let idRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    public static let textRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public static let threadIdRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    public static let inReplyToCommentIdRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    public var id: Int?
    public var url: String?
    /** Text of the comment */
    public var text: String?
    public var heldForReview: Bool?
    public var threadId: Int?
    public var inReplyToCommentId: Int?
    public var createdAt: Date?
    public var updatedAt: Date?
    public var account: Account?
    public var video: VideoInfo?
    public var automaticTags: [String]?

    public init(id: Int? = nil, url: String? = nil, text: String? = nil, heldForReview: Bool? = nil, threadId: Int? = nil, inReplyToCommentId: Int? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, account: Account? = nil, video: VideoInfo? = nil, automaticTags: [String]? = nil) {
        self.id = id
        self.url = url
        self.text = text
        self.heldForReview = heldForReview
        self.threadId = threadId
        self.inReplyToCommentId = inReplyToCommentId
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.account = account
        self.video = video
        self.automaticTags = automaticTags
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case url
        case text
        case heldForReview
        case threadId
        case inReplyToCommentId
        case createdAt
        case updatedAt
        case account
        case video
        case automaticTags
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(heldForReview, forKey: .heldForReview)
        try container.encodeIfPresent(threadId, forKey: .threadId)
        try container.encodeIfPresent(inReplyToCommentId, forKey: .inReplyToCommentId)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(account, forKey: .account)
        try container.encodeIfPresent(video, forKey: .video)
        try container.encodeIfPresent(automaticTags, forKey: .automaticTags)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension VideoCommentForOwnerOrAdmin: Identifiable {}
