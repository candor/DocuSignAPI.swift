//
// SignatureGroupDef.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/**  */
public final class SignatureGroupDef: Content {
    /** The ID of the group being accessed. */
    public var groupId: String?
    /** Indicates whether the property is editable. Valid values are:  - `editable` - `read_only` */
    public var rights: String?

    public init(groupId: String? = nil, rights: String? = nil) {
        self.groupId = groupId
        self.rights = rights
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case groupId
        case rights
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(groupId, forKey: .groupId)
        try container.encodeIfPresent(rights, forKey: .rights)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        groupId = try container.decodeIfPresent(String.self, forKey: .groupId)
        rights = try container.decodeIfPresent(String.self, forKey: .rights)
    }
}

extension SignatureGroupDef: Hashable {
    public static func == (lhs: SignatureGroupDef, rhs: SignatureGroupDef) -> Bool {
        lhs.groupId == rhs.groupId &&
            lhs.rights == rhs.rights
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(groupId?.hashValue)
        hasher.combine(rights?.hashValue)
    }
}