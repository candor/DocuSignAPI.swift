//
// EventResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** Information about the result of an event. */
public final class EventResult: Content {
    /** Date/time of the event. */
    public var eventTimestamp: String?
    /** Reason for failure, if the event failed. */
    public var failureDescription: String?
    /** Event status. */
    public var status: String?
    /** Failure status code, if the event failed. */
    public var vendorFailureStatusCode: String?

    public init(eventTimestamp: String? = nil, failureDescription: String? = nil, status: String? = nil, vendorFailureStatusCode: String? = nil) {
        self.eventTimestamp = eventTimestamp
        self.failureDescription = failureDescription
        self.status = status
        self.vendorFailureStatusCode = vendorFailureStatusCode
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case eventTimestamp
        case failureDescription
        case status
        case vendorFailureStatusCode
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(eventTimestamp, forKey: .eventTimestamp)
        try container.encodeIfPresent(failureDescription, forKey: .failureDescription)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(vendorFailureStatusCode, forKey: .vendorFailureStatusCode)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        eventTimestamp = try container.decodeIfPresent(String.self, forKey: .eventTimestamp)
        failureDescription = try container.decodeIfPresent(String.self, forKey: .failureDescription)
        status = try container.decodeIfPresent(String.self, forKey: .status)
        vendorFailureStatusCode = try container.decodeIfPresent(String.self, forKey: .vendorFailureStatusCode)
    }
}

extension EventResult: Hashable {
    public static func == (lhs: EventResult, rhs: EventResult) -> Bool {
        lhs.eventTimestamp == rhs.eventTimestamp &&
            lhs.failureDescription == rhs.failureDescription &&
            lhs.status == rhs.status &&
            lhs.vendorFailureStatusCode == rhs.vendorFailureStatusCode
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(eventTimestamp?.hashValue)
        hasher.combine(failureDescription?.hashValue)
        hasher.combine(status?.hashValue)
        hasher.combine(vendorFailureStatusCode?.hashValue)
    }
}