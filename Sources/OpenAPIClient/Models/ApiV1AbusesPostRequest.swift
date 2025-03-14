//
// ApiV1AbusesPostRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ApiV1AbusesPostRequest: Sendable, Codable, JSONEncodable, Hashable {

    public enum PredefinedReasons: String, Sendable, Codable, CaseIterable {
        case violentorabusive = "violentOrAbusive"
        case hatefulorabusive = "hatefulOrAbusive"
        case spamormisleading = "spamOrMisleading"
        case privacy = "privacy"
        case rights = "rights"
        case serverrules = "serverRules"
        case thumbnails = "thumbnails"
        case captions = "captions"
    }
    public static let reasonRule = StringRule(minLength: 2, maxLength: 3000, pattern: nil)
    public static let predefinedReasonsRule = ArrayRule(minItems: nil, maxItems: 8, uniqueItems: false)
    /** Reason why the user reports this video */
    public var reason: String
    /** Reason categories that help triage reports */
    public var predefinedReasons: [PredefinedReasons]?
    public var video: ApiV1AbusesPostRequestVideo?
    public var comment: ApiV1AbusesPostRequestComment?
    public var account: ApiV1AbusesPostRequestAccount?

    public init(reason: String, predefinedReasons: [PredefinedReasons]? = nil, video: ApiV1AbusesPostRequestVideo? = nil, comment: ApiV1AbusesPostRequestComment? = nil, account: ApiV1AbusesPostRequestAccount? = nil) {
        self.reason = reason
        self.predefinedReasons = predefinedReasons
        self.video = video
        self.comment = comment
        self.account = account
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case reason
        case predefinedReasons
        case video
        case comment
        case account
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(reason, forKey: .reason)
        try container.encodeIfPresent(predefinedReasons, forKey: .predefinedReasons)
        try container.encodeIfPresent(video, forKey: .video)
        try container.encodeIfPresent(comment, forKey: .comment)
        try container.encodeIfPresent(account, forKey: .account)
    }
}

