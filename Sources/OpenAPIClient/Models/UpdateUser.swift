//
// UpdateUser.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct UpdateUser: Sendable, Codable, JSONEncodable, Hashable {

    public static let passwordRule = StringRule(minLength: 6, maxLength: 255, pattern: nil)
    /** The updated email of the user */
    public var email: String?
    /** Set the email as verified */
    public var emailVerified: Bool?
    /** The updated video quota of the user in bytes */
    public var videoQuota: Int?
    /** The updated daily video quota of the user in bytes */
    public var videoQuotaDaily: Int?
    /** The auth plugin to use to authenticate the user */
    public var pluginAuth: String?
    public var role: UserRole?
    public var adminFlags: UserAdminFlags?
    public var password: String?

    public init(email: String? = nil, emailVerified: Bool? = nil, videoQuota: Int? = nil, videoQuotaDaily: Int? = nil, pluginAuth: String? = nil, role: UserRole? = nil, adminFlags: UserAdminFlags? = nil, password: String? = nil) {
        self.email = email
        self.emailVerified = emailVerified
        self.videoQuota = videoQuota
        self.videoQuotaDaily = videoQuotaDaily
        self.pluginAuth = pluginAuth
        self.role = role
        self.adminFlags = adminFlags
        self.password = password
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case email
        case emailVerified
        case videoQuota
        case videoQuotaDaily
        case pluginAuth
        case role
        case adminFlags
        case password
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(emailVerified, forKey: .emailVerified)
        try container.encodeIfPresent(videoQuota, forKey: .videoQuota)
        try container.encodeIfPresent(videoQuotaDaily, forKey: .videoQuotaDaily)
        try container.encodeIfPresent(pluginAuth, forKey: .pluginAuth)
        try container.encodeIfPresent(role, forKey: .role)
        try container.encodeIfPresent(adminFlags, forKey: .adminFlags)
        try container.encodeIfPresent(password, forKey: .password)
    }
}

