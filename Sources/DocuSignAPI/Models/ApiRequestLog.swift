//
// ApiRequestLog.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/** Contains API request log information. */
public final class ApiRequestLog: Content, Hashable {
    /** The UTC DateTime when the item was created. */
    public var createdDateTime: String?
    /** A sender-defined description of the line item.  */
    public var description: String?
    /**  */
    public var requestLogId: String?
    /** The status of the item. */
    public var status: String?

    public init(createdDateTime: String? = nil, description: String? = nil, requestLogId: String? = nil, status: String? = nil) {
        self.createdDateTime = createdDateTime
        self.description = description
        self.requestLogId = requestLogId
        self.status = status
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case createdDateTime
        case description
        case requestLogId
        case status
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(createdDateTime, forKey: .createdDateTime)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(requestLogId, forKey: .requestLogId)
        try container.encodeIfPresent(status, forKey: .status)
    }

    public static func == (lhs: ApiRequestLog, rhs: ApiRequestLog) -> Bool {
        lhs.createdDateTime == rhs.createdDateTime &&
            lhs.description == rhs.description &&
            lhs.requestLogId == rhs.requestLogId &&
            lhs.status == rhs.status
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(createdDateTime?.hashValue)
        hasher.combine(description?.hashValue)
        hasher.combine(requestLogId?.hashValue)
        hasher.combine(status?.hashValue)
    }
}