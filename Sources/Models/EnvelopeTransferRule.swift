//
// EnvelopeTransferRule.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** This object contains details about an envelope transfer rule. */
public final class EnvelopeTransferRule: Content {
    /** When set to **true**, the original owner is added as a carbon copy recipient after envelope transfer. The default value is **false**. */
    public var carbonCopyOriginalOwner: String?
    /** When set to **true**, the envelope transfer rule is active. */
    public var enabled: String?
    /** The id of the envelope transfer rule. The system generates this id when the rule is first created. */
    public var envelopeTransferRuleId: String?
    /** The type of envelope event that triggers the transfer. Valid values are:  - `sent` - `before sent`  - `completed` */
    public var eventType: String?
    public var fromGroup: Group?
    public var fromUser: UserInformation?
    /** The UTC DateTime when the envelope transfer rule was last modified. This property is read only. */
    public var modifiedDate: String?
    public var modifiedUser: UserInformation?
    public var toFolder: Folder?
    public var toUser: UserInformation?

    public init(carbonCopyOriginalOwner: String? = nil, enabled: String? = nil, envelopeTransferRuleId: String? = nil, eventType: String? = nil, fromGroup: Group? = nil, fromUser: UserInformation? = nil, modifiedDate: String? = nil, modifiedUser: UserInformation? = nil, toFolder: Folder? = nil, toUser: UserInformation? = nil) {
        self.carbonCopyOriginalOwner = carbonCopyOriginalOwner
        self.enabled = enabled
        self.envelopeTransferRuleId = envelopeTransferRuleId
        self.eventType = eventType
        self.fromGroup = fromGroup
        self.fromUser = fromUser
        self.modifiedDate = modifiedDate
        self.modifiedUser = modifiedUser
        self.toFolder = toFolder
        self.toUser = toUser
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case carbonCopyOriginalOwner
        case enabled
        case envelopeTransferRuleId
        case eventType
        case fromGroup
        case fromUser
        case modifiedDate
        case modifiedUser
        case toFolder
        case toUser
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(carbonCopyOriginalOwner, forKey: .carbonCopyOriginalOwner)
        try container.encodeIfPresent(enabled, forKey: .enabled)
        try container.encodeIfPresent(envelopeTransferRuleId, forKey: .envelopeTransferRuleId)
        try container.encodeIfPresent(eventType, forKey: .eventType)
        try container.encodeIfPresent(fromGroup, forKey: .fromGroup)
        try container.encodeIfPresent(fromUser, forKey: .fromUser)
        try container.encodeIfPresent(modifiedDate, forKey: .modifiedDate)
        try container.encodeIfPresent(modifiedUser, forKey: .modifiedUser)
        try container.encodeIfPresent(toFolder, forKey: .toFolder)
        try container.encodeIfPresent(toUser, forKey: .toUser)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        carbonCopyOriginalOwner = try container.decodeIfPresent(String.self, forKey: .carbonCopyOriginalOwner)
        enabled = try container.decodeIfPresent(String.self, forKey: .enabled)
        envelopeTransferRuleId = try container.decodeIfPresent(String.self, forKey: .envelopeTransferRuleId)
        eventType = try container.decodeIfPresent(String.self, forKey: .eventType)
        fromGroup = try container.decodeIfPresent(Group.self, forKey: .fromGroup)
        fromUser = try container.decodeIfPresent(UserInformation.self, forKey: .fromUser)
        modifiedDate = try container.decodeIfPresent(String.self, forKey: .modifiedDate)
        modifiedUser = try container.decodeIfPresent(UserInformation.self, forKey: .modifiedUser)
        toFolder = try container.decodeIfPresent(Folder.self, forKey: .toFolder)
        toUser = try container.decodeIfPresent(UserInformation.self, forKey: .toUser)
    }
}

extension EnvelopeTransferRule: Hashable {
    public static func == (lhs: EnvelopeTransferRule, rhs: EnvelopeTransferRule) -> Bool {
        lhs.carbonCopyOriginalOwner == rhs.carbonCopyOriginalOwner &&
            lhs.enabled == rhs.enabled &&
            lhs.envelopeTransferRuleId == rhs.envelopeTransferRuleId &&
            lhs.eventType == rhs.eventType &&
            lhs.fromGroup == rhs.fromGroup &&
            lhs.fromUser == rhs.fromUser &&
            lhs.modifiedDate == rhs.modifiedDate &&
            lhs.modifiedUser == rhs.modifiedUser &&
            lhs.toFolder == rhs.toFolder &&
            lhs.toUser == rhs.toUser
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(carbonCopyOriginalOwner?.hashValue)
        hasher.combine(enabled?.hashValue)
        hasher.combine(envelopeTransferRuleId?.hashValue)
        hasher.combine(eventType?.hashValue)
        hasher.combine(fromGroup?.hashValue)
        hasher.combine(fromUser?.hashValue)
        hasher.combine(modifiedDate?.hashValue)
        hasher.combine(modifiedUser?.hashValue)
        hasher.combine(toFolder?.hashValue)
        hasher.combine(toUser?.hashValue)
    }
}