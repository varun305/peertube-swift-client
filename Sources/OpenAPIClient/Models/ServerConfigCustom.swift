//
// ServerConfigCustom.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ServerConfigCustom: Sendable, Codable, JSONEncodable, Hashable {

    public var instance: ServerConfigCustomInstance?
    public var theme: ServerConfigCustomTheme?
    public var services: ServerConfigCustomServices?
    public var cache: ServerConfigCustomCache?
    public var signup: ServerConfigCustomSignup?
    public var admin: ServerConfigCustomAdmin?
    public var contactForm: ServerConfigEmail?
    public var user: ServerConfigCustomUser?
    public var transcoding: ServerConfigCustomTranscoding?
    public var _import: ServerConfigCustomImport?
    public var autoBlacklist: ServerConfigAutoBlacklist?
    public var followers: ServerConfigCustomFollowers?

    public init(instance: ServerConfigCustomInstance? = nil, theme: ServerConfigCustomTheme? = nil, services: ServerConfigCustomServices? = nil, cache: ServerConfigCustomCache? = nil, signup: ServerConfigCustomSignup? = nil, admin: ServerConfigCustomAdmin? = nil, contactForm: ServerConfigEmail? = nil, user: ServerConfigCustomUser? = nil, transcoding: ServerConfigCustomTranscoding? = nil, _import: ServerConfigCustomImport? = nil, autoBlacklist: ServerConfigAutoBlacklist? = nil, followers: ServerConfigCustomFollowers? = nil) {
        self.instance = instance
        self.theme = theme
        self.services = services
        self.cache = cache
        self.signup = signup
        self.admin = admin
        self.contactForm = contactForm
        self.user = user
        self.transcoding = transcoding
        self._import = _import
        self.autoBlacklist = autoBlacklist
        self.followers = followers
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case instance
        case theme
        case services
        case cache
        case signup
        case admin
        case contactForm
        case user
        case transcoding
        case _import = "import"
        case autoBlacklist
        case followers
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(instance, forKey: .instance)
        try container.encodeIfPresent(theme, forKey: .theme)
        try container.encodeIfPresent(services, forKey: .services)
        try container.encodeIfPresent(cache, forKey: .cache)
        try container.encodeIfPresent(signup, forKey: .signup)
        try container.encodeIfPresent(admin, forKey: .admin)
        try container.encodeIfPresent(contactForm, forKey: .contactForm)
        try container.encodeIfPresent(user, forKey: .user)
        try container.encodeIfPresent(transcoding, forKey: .transcoding)
        try container.encodeIfPresent(_import, forKey: ._import)
        try container.encodeIfPresent(autoBlacklist, forKey: .autoBlacklist)
        try container.encodeIfPresent(followers, forKey: .followers)
    }
}

