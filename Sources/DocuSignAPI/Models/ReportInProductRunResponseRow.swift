//
// ReportInProductRunResponseRow.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/**  */
public final class ReportInProductRunResponseRow: Content, Hashable {
    /** The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec`  */
    public var envelopeId: String?
    public var fields: ReportInProductRunResponseRowFields?

    public init(envelopeId: String? = nil, fields: ReportInProductRunResponseRowFields? = nil) {
        self.envelopeId = envelopeId
        self.fields = fields
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case envelopeId
        case fields
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(envelopeId, forKey: .envelopeId)
        try container.encodeIfPresent(fields, forKey: .fields)
    }

    public static func == (lhs: ReportInProductRunResponseRow, rhs: ReportInProductRunResponseRow) -> Bool {
        lhs.envelopeId == rhs.envelopeId &&
            lhs.fields == rhs.fields
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(envelopeId?.hashValue)
        hasher.combine(fields?.hashValue)
    }
}