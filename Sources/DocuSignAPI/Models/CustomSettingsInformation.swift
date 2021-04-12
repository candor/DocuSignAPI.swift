//
// CustomSettingsInformation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/**  */
public final class CustomSettingsInformation: Content, Hashable {
    /** The name/value pair information for the user custom setting. */
    public var customSettings: [NameValue]?

    public init(customSettings: [NameValue]? = nil) {
        self.customSettings = customSettings
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case customSettings
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(customSettings, forKey: .customSettings)
    }

    public static func == (lhs: CustomSettingsInformation, rhs: CustomSettingsInformation) -> Bool {
        lhs.customSettings == rhs.customSettings
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(customSettings?.hashValue)
    }
}