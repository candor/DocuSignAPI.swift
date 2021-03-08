//
// AccountNotification.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** A complex element that specifies notifications (expirations and reminders) for the envelope. */
public final class AccountNotification: Content {
    public var expirations: Expirations?
    public var reminders: Reminders?
    /** When **true**, the user can override envelope expirations. */
    public var userOverrideEnabled: String?

    public init(expirations: Expirations? = nil, reminders: Reminders? = nil, userOverrideEnabled: String? = nil) {
        self.expirations = expirations
        self.reminders = reminders
        self.userOverrideEnabled = userOverrideEnabled
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case expirations
        case reminders
        case userOverrideEnabled
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(expirations, forKey: .expirations)
        try container.encodeIfPresent(reminders, forKey: .reminders)
        try container.encodeIfPresent(userOverrideEnabled, forKey: .userOverrideEnabled)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        expirations = try container.decodeIfPresent(Expirations.self, forKey: .expirations)
        reminders = try container.decodeIfPresent(Reminders.self, forKey: .reminders)
        userOverrideEnabled = try container.decodeIfPresent(String.self, forKey: .userOverrideEnabled)
    }
}

extension AccountNotification: Hashable {
    public static func == (lhs: AccountNotification, rhs: AccountNotification) -> Bool {
        lhs.expirations == rhs.expirations &&
            lhs.reminders == rhs.reminders &&
            lhs.userOverrideEnabled == rhs.userOverrideEnabled
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(expirations?.hashValue)
        hasher.combine(reminders?.hashValue)
        hasher.combine(userOverrideEnabled?.hashValue)
    }
}