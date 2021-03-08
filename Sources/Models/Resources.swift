//
// Resources.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** API resource information */
public final class Resources: Content {
    /**  */
    public var resources: [NameValue]?

    public init(resources: [NameValue]? = nil) {
        self.resources = resources
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case resources
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(resources, forKey: .resources)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        resources = try container.decodeIfPresent([NameValue].self, forKey: .resources)
    }
}

extension Resources: Hashable {
    public static func == (lhs: Resources, rhs: Resources) -> Bool {
        lhs.resources == rhs.resources
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(resources?.hashValue)
    }
}