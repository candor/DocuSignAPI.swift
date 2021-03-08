//
// AccountPasswordExpirePasswordDays.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/**  */
public final class AccountPasswordExpirePasswordDays: Content {
    /**  */
    public var maximumDays: String?
    /**  */
    public var minimumDays: String?

    public init(maximumDays: String? = nil, minimumDays: String? = nil) {
        self.maximumDays = maximumDays
        self.minimumDays = minimumDays
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case maximumDays
        case minimumDays
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(maximumDays, forKey: .maximumDays)
        try container.encodeIfPresent(minimumDays, forKey: .minimumDays)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        maximumDays = try container.decodeIfPresent(String.self, forKey: .maximumDays)
        minimumDays = try container.decodeIfPresent(String.self, forKey: .minimumDays)
    }
}

extension AccountPasswordExpirePasswordDays: Hashable {
    public static func == (lhs: AccountPasswordExpirePasswordDays, rhs: AccountPasswordExpirePasswordDays) -> Bool {
        lhs.maximumDays == rhs.maximumDays &&
            lhs.minimumDays == rhs.minimumDays
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(maximumDays?.hashValue)
        hasher.combine(minimumDays?.hashValue)
    }
}