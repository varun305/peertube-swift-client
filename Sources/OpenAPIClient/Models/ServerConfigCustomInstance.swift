//
// ServerConfigCustomInstance.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ServerConfigCustomInstance: Sendable, Codable, JSONEncodable, Hashable {

    public var name: String?
    public var shortDescription: String?
    public var description: String?
    public var terms: String?
    public var codeOfConduct: String?
    public var creationReason: String?
    public var moderationInformation: String?
    public var administrator: String?
    public var maintenanceLifetime: String?
    public var businessModel: String?
    public var hardwareInformation: String?
    public var languages: [String]?
    public var categories: [Double]?
    public var isNSFW: Bool?
    public var defaultNSFWPolicy: String?
    public var serverCountry: String?
    public var support: ServerConfigInstanceSupport?
    public var social: ServerConfigInstanceSocial?
    public var defaultClientRoute: String?
    public var customizations: ServerConfigInstanceCustomizations?

    public init(name: String? = nil, shortDescription: String? = nil, description: String? = nil, terms: String? = nil, codeOfConduct: String? = nil, creationReason: String? = nil, moderationInformation: String? = nil, administrator: String? = nil, maintenanceLifetime: String? = nil, businessModel: String? = nil, hardwareInformation: String? = nil, languages: [String]? = nil, categories: [Double]? = nil, isNSFW: Bool? = nil, defaultNSFWPolicy: String? = nil, serverCountry: String? = nil, support: ServerConfigInstanceSupport? = nil, social: ServerConfigInstanceSocial? = nil, defaultClientRoute: String? = nil, customizations: ServerConfigInstanceCustomizations? = nil) {
        self.name = name
        self.shortDescription = shortDescription
        self.description = description
        self.terms = terms
        self.codeOfConduct = codeOfConduct
        self.creationReason = creationReason
        self.moderationInformation = moderationInformation
        self.administrator = administrator
        self.maintenanceLifetime = maintenanceLifetime
        self.businessModel = businessModel
        self.hardwareInformation = hardwareInformation
        self.languages = languages
        self.categories = categories
        self.isNSFW = isNSFW
        self.defaultNSFWPolicy = defaultNSFWPolicy
        self.serverCountry = serverCountry
        self.support = support
        self.social = social
        self.defaultClientRoute = defaultClientRoute
        self.customizations = customizations
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case shortDescription
        case description
        case terms
        case codeOfConduct
        case creationReason
        case moderationInformation
        case administrator
        case maintenanceLifetime
        case businessModel
        case hardwareInformation
        case languages
        case categories
        case isNSFW
        case defaultNSFWPolicy
        case serverCountry
        case support
        case social
        case defaultClientRoute
        case customizations
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(shortDescription, forKey: .shortDescription)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(terms, forKey: .terms)
        try container.encodeIfPresent(codeOfConduct, forKey: .codeOfConduct)
        try container.encodeIfPresent(creationReason, forKey: .creationReason)
        try container.encodeIfPresent(moderationInformation, forKey: .moderationInformation)
        try container.encodeIfPresent(administrator, forKey: .administrator)
        try container.encodeIfPresent(maintenanceLifetime, forKey: .maintenanceLifetime)
        try container.encodeIfPresent(businessModel, forKey: .businessModel)
        try container.encodeIfPresent(hardwareInformation, forKey: .hardwareInformation)
        try container.encodeIfPresent(languages, forKey: .languages)
        try container.encodeIfPresent(categories, forKey: .categories)
        try container.encodeIfPresent(isNSFW, forKey: .isNSFW)
        try container.encodeIfPresent(defaultNSFWPolicy, forKey: .defaultNSFWPolicy)
        try container.encodeIfPresent(serverCountry, forKey: .serverCountry)
        try container.encodeIfPresent(support, forKey: .support)
        try container.encodeIfPresent(social, forKey: .social)
        try container.encodeIfPresent(defaultClientRoute, forKey: .defaultClientRoute)
        try container.encodeIfPresent(customizations, forKey: .customizations)
    }
}

