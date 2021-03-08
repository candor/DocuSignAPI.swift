//
// AccountPasswordLockoutDurationType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/**  */
public final class AccountPasswordLockoutDurationType: Content {
    /** An array of option strings supported by this setting. */
    public var options: [String]?

    public init(options: [String]? = nil) {
        self.options = options
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case options
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(options, forKey: .options)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        options = try container.decodeIfPresent([String].self, forKey: .options)
    }
}

extension AccountPasswordLockoutDurationType: Hashable {
    public static func == (lhs: AccountPasswordLockoutDurationType, rhs: AccountPasswordLockoutDurationType) -> Bool {
        lhs.options == rhs.options
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(options?.hashValue)
    }
}