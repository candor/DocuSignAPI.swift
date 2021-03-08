//
// BulkSendingList.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** This object contains the details for the bulk send list. */
public final class BulkSendingList: Content {
    /** An array of `bulkCopy` objects. Each object represents an instance or copy of an envelope and contains details such as the recipient, custom fields, tabs, and other information. */
    public var bulkCopies: [BulkSendingCopy]?
    /** The GUID of the bulk send list. */
    public var listId: String?
    /** The name of the bulk send list. */
    public var name: String?

    public init(bulkCopies: [BulkSendingCopy]? = nil, listId: String? = nil, name: String? = nil) {
        self.bulkCopies = bulkCopies
        self.listId = listId
        self.name = name
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case bulkCopies
        case listId
        case name
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(bulkCopies, forKey: .bulkCopies)
        try container.encodeIfPresent(listId, forKey: .listId)
        try container.encodeIfPresent(name, forKey: .name)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        bulkCopies = try container.decodeIfPresent([BulkSendingCopy].self, forKey: .bulkCopies)
        listId = try container.decodeIfPresent(String.self, forKey: .listId)
        name = try container.decodeIfPresent(String.self, forKey: .name)
    }
}

extension BulkSendingList: Hashable {
    public static func == (lhs: BulkSendingList, rhs: BulkSendingList) -> Bool {
        lhs.bulkCopies == rhs.bulkCopies &&
            lhs.listId == rhs.listId &&
            lhs.name == rhs.name
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(bulkCopies?.hashValue)
        hasher.combine(listId?.hashValue)
        hasher.combine(name?.hashValue)
    }
}