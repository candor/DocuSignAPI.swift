//
// DocumentVisibilityList.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** A list of &#x60;documentVisibility&#x60; objects that specify whether documents are visible to recipients. */
public final class DocumentVisibilityList: Content {
    /** An array of `documentVisibility` objects that specifies which documents are visible to which recipients. */
    public var documentVisibility: [DocumentVisibility]?

    public init(documentVisibility: [DocumentVisibility]? = nil) {
        self.documentVisibility = documentVisibility
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case documentVisibility
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(documentVisibility, forKey: .documentVisibility)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        documentVisibility = try container.decodeIfPresent([DocumentVisibility].self, forKey: .documentVisibility)
    }
}

extension DocumentVisibilityList: Hashable {
    public static func == (lhs: DocumentVisibilityList, rhs: DocumentVisibilityList) -> Bool {
        lhs.documentVisibility == rhs.documentVisibility
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(documentVisibility?.hashValue)
    }
}