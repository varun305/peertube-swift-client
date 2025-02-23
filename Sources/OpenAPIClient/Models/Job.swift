//
// Job.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct Job: Sendable, Codable, JSONEncodable, Hashable {

    public enum State: String, Sendable, Codable, CaseIterable {
        case active = "active"
        case completed = "completed"
        case failed = "failed"
        case waiting = "waiting"
        case delayed = "delayed"
    }
    public enum ModelType: String, Sendable, Codable, CaseIterable {
        case activitypubHttpUnicast = "activitypub-http-unicast"
        case activitypubHttpBroadcast = "activitypub-http-broadcast"
        case activitypubHttpFetcher = "activitypub-http-fetcher"
        case activitypubFollow = "activitypub-follow"
        case videoFileImport = "video-file-import"
        case videoTranscoding = "video-transcoding"
        case email = "email"
        case videoImport = "video-import"
        case videosViewsStats = "videos-views-stats"
        case activitypubRefresher = "activitypub-refresher"
        case videoRedundancy = "video-redundancy"
        case videoChannelImport = "video-channel-import"
    }
    public static let idRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    public var id: Int?
    public var state: State?
    public var type: ModelType?
    public var data: [String: JSONValue]?
    public var error: [String: JSONValue]?
    public var createdAt: Date?
    public var finishedOn: Date?
    public var processedOn: Date?

    public init(id: Int? = nil, state: State? = nil, type: ModelType? = nil, data: [String: JSONValue]? = nil, error: [String: JSONValue]? = nil, createdAt: Date? = nil, finishedOn: Date? = nil, processedOn: Date? = nil) {
        self.id = id
        self.state = state
        self.type = type
        self.data = data
        self.error = error
        self.createdAt = createdAt
        self.finishedOn = finishedOn
        self.processedOn = processedOn
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case state
        case type
        case data
        case error
        case createdAt
        case finishedOn
        case processedOn
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(data, forKey: .data)
        try container.encodeIfPresent(error, forKey: .error)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(finishedOn, forKey: .finishedOn)
        try container.encodeIfPresent(processedOn, forKey: .processedOn)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension Job: Identifiable {}
