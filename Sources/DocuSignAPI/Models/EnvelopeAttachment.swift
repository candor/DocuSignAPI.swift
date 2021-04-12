//
// EnvelopeAttachment.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/**  */
public final class EnvelopeAttachment: Content, Hashable {
    /** Valid values are `sender` and `senderAndAllRecipients`. */
    public var accessControl: String?
    /** The unique identifier for the attachment. */
    public var attachmentId: String?
    /** Specifies the type of the attachment for the recipient. Possible values are:  - `.htm` - `.xml` */
    public var attachmentType: String?
    public var errorDetails: ErrorDetails?
    /**  */
    public var label: String?
    /**  */
    public var name: String?

    public init(accessControl: String? = nil, attachmentId: String? = nil, attachmentType: String? = nil, errorDetails: ErrorDetails? = nil, label: String? = nil, name: String? = nil) {
        self.accessControl = accessControl
        self.attachmentId = attachmentId
        self.attachmentType = attachmentType
        self.errorDetails = errorDetails
        self.label = label
        self.name = name
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case accessControl
        case attachmentId
        case attachmentType
        case errorDetails
        case label
        case name
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(accessControl, forKey: .accessControl)
        try container.encodeIfPresent(attachmentId, forKey: .attachmentId)
        try container.encodeIfPresent(attachmentType, forKey: .attachmentType)
        try container.encodeIfPresent(errorDetails, forKey: .errorDetails)
        try container.encodeIfPresent(label, forKey: .label)
        try container.encodeIfPresent(name, forKey: .name)
    }

    public static func == (lhs: EnvelopeAttachment, rhs: EnvelopeAttachment) -> Bool {
        lhs.accessControl == rhs.accessControl &&
            lhs.attachmentId == rhs.attachmentId &&
            lhs.attachmentType == rhs.attachmentType &&
            lhs.errorDetails == rhs.errorDetails &&
            lhs.label == rhs.label &&
            lhs.name == rhs.name
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(accessControl?.hashValue)
        hasher.combine(attachmentId?.hashValue)
        hasher.combine(attachmentType?.hashValue)
        hasher.combine(errorDetails?.hashValue)
        hasher.combine(label?.hashValue)
        hasher.combine(name?.hashValue)
    }
}