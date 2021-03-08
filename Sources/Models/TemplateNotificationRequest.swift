//
// TemplateNotificationRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/**  */
public final class TemplateNotificationRequest: Content {
    public var expirations: Expirations?
    /** The user's encrypted password hash. */
    public var password: String?
    public var reminders: Reminders?
    /** When set to **true**, the account default notification settings are used for the envelope, overriding the reminders and expirations settings. When set to **false**, the reminders and expirations settings specified in this request are used. */
    public var useAccountDefaults: String?

    public init(expirations: Expirations? = nil, password: String? = nil, reminders: Reminders? = nil, useAccountDefaults: String? = nil) {
        self.expirations = expirations
        self.password = password
        self.reminders = reminders
        self.useAccountDefaults = useAccountDefaults
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case expirations
        case password
        case reminders
        case useAccountDefaults
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(expirations, forKey: .expirations)
        try container.encodeIfPresent(password, forKey: .password)
        try container.encodeIfPresent(reminders, forKey: .reminders)
        try container.encodeIfPresent(useAccountDefaults, forKey: .useAccountDefaults)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        expirations = try container.decodeIfPresent(Expirations.self, forKey: .expirations)
        password = try container.decodeIfPresent(String.self, forKey: .password)
        reminders = try container.decodeIfPresent(Reminders.self, forKey: .reminders)
        useAccountDefaults = try container.decodeIfPresent(String.self, forKey: .useAccountDefaults)
    }
}

extension TemplateNotificationRequest: Hashable {
    public static func == (lhs: TemplateNotificationRequest, rhs: TemplateNotificationRequest) -> Bool {
        lhs.expirations == rhs.expirations &&
            lhs.password == rhs.password &&
            lhs.reminders == rhs.reminders &&
            lhs.useAccountDefaults == rhs.useAccountDefaults
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(expirations?.hashValue)
        hasher.combine(password?.hashValue)
        hasher.combine(reminders?.hashValue)
        hasher.combine(useAccountDefaults?.hashValue)
    }
}