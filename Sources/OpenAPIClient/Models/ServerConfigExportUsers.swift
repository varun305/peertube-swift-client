//
// ServerConfigExportUsers.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ServerConfigExportUsers: Sendable, Codable, JSONEncodable, Hashable {

    public var enabled: Bool?
    /** In milliseconds */
    public var exportExpiration: Double?
    /** In bytes */
    public var maxUserVideoQuota: Double?

    public init(enabled: Bool? = nil, exportExpiration: Double? = nil, maxUserVideoQuota: Double? = nil) {
        self.enabled = enabled
        self.exportExpiration = exportExpiration
        self.maxUserVideoQuota = maxUserVideoQuota
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case enabled
        case exportExpiration
        case maxUserVideoQuota
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encodeIfPresent(exportExpiration, forKey: .exportExpiration)
        try container.encodeIfPresent(maxUserVideoQuota, forKey: .maxUserVideoQuota)
    }
}

