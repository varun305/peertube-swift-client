//
// UserRegistrationUser.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

/** If the registration has been accepted, this is a partial user object created by the registration */
public struct UserRegistrationUser: Sendable, Codable, JSONEncodable, Hashable {

    public static let idRule = NumericRule<Int>(minimum: 1, exclusiveMinimum: false, maximum: nil, exclusiveMaximum: false, multipleOf: nil)
    public var id: Int?

    public init(id: Int? = nil) {
        self.id = id
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension UserRegistrationUser: Identifiable {}
