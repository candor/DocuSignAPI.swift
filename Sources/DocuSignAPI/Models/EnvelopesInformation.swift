//
// EnvelopesInformation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/** Result set for the Envelopes: listStatusChanges method */
public final class EnvelopesInformation: Content, Hashable {
    /** A token returned by an earlier API call that you can use with a new call to resume a search query at the point where it left off.  This token system enhances the performance of the API. */
    public var continuationToken: String?
    /** The last index position in the result set.  */
    public var endPosition: String?
    /** Set of envelope information */
    public var envelopes: [Envelope]?
    /** Array of envelope statuses and transaction IDs in the result set. */
    public var envelopeTransactionStatuses: [EnvelopeTransactionStatus]?
    /** A list of folder objects. */
    public var folders: [Folder]?
    /** The last time that a query was performed. */
    public var lastQueriedDateTime: String?
    /** The number of results in this response. Because you can filter which entries are included in the response, this value is always less than or equal to the `totalSetSize`. */
    public var resultSetSize: String?
    /** The starting index position of the current result set. */
    public var startPosition: String?
    /** The total number of items in the result set. This value is always greater than or equal to the value of `resultSetSize`. */
    public var totalSetSize: String?

    public init(continuationToken: String? = nil, endPosition: String? = nil, envelopes: [Envelope]? = nil, envelopeTransactionStatuses: [EnvelopeTransactionStatus]? = nil, folders: [Folder]? = nil, lastQueriedDateTime: String? = nil, resultSetSize: String? = nil, startPosition: String? = nil, totalSetSize: String? = nil) {
        self.continuationToken = continuationToken
        self.endPosition = endPosition
        self.envelopes = envelopes
        self.envelopeTransactionStatuses = envelopeTransactionStatuses
        self.folders = folders
        self.lastQueriedDateTime = lastQueriedDateTime
        self.resultSetSize = resultSetSize
        self.startPosition = startPosition
        self.totalSetSize = totalSetSize
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case continuationToken
        case endPosition
        case envelopes
        case envelopeTransactionStatuses
        case folders
        case lastQueriedDateTime
        case resultSetSize
        case startPosition
        case totalSetSize
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(continuationToken, forKey: .continuationToken)
        try container.encodeIfPresent(endPosition, forKey: .endPosition)
        try container.encodeIfPresent(envelopes, forKey: .envelopes)
        try container.encodeIfPresent(envelopeTransactionStatuses, forKey: .envelopeTransactionStatuses)
        try container.encodeIfPresent(folders, forKey: .folders)
        try container.encodeIfPresent(lastQueriedDateTime, forKey: .lastQueriedDateTime)
        try container.encodeIfPresent(resultSetSize, forKey: .resultSetSize)
        try container.encodeIfPresent(startPosition, forKey: .startPosition)
        try container.encodeIfPresent(totalSetSize, forKey: .totalSetSize)
    }

    public static func == (lhs: EnvelopesInformation, rhs: EnvelopesInformation) -> Bool {
        lhs.continuationToken == rhs.continuationToken &&
            lhs.endPosition == rhs.endPosition &&
            lhs.envelopes == rhs.envelopes &&
            lhs.envelopeTransactionStatuses == rhs.envelopeTransactionStatuses &&
            lhs.folders == rhs.folders &&
            lhs.lastQueriedDateTime == rhs.lastQueriedDateTime &&
            lhs.resultSetSize == rhs.resultSetSize &&
            lhs.startPosition == rhs.startPosition &&
            lhs.totalSetSize == rhs.totalSetSize
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(continuationToken?.hashValue)
        hasher.combine(endPosition?.hashValue)
        hasher.combine(envelopes?.hashValue)
        hasher.combine(envelopeTransactionStatuses?.hashValue)
        hasher.combine(folders?.hashValue)
        hasher.combine(lastQueriedDateTime?.hashValue)
        hasher.combine(resultSetSize?.hashValue)
        hasher.combine(startPosition?.hashValue)
        hasher.combine(totalSetSize?.hashValue)
    }
}