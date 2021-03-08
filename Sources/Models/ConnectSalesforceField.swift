//
// ConnectSalesforceField.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** This object is used to match a DocuSign field to a Salesforce field so that Docusign can send information to your Salesforce account. */
public final class ConnectSalesforceField: Content {
    /**  */
    public var dsAttribute: String?
    /** A URL that links to the information in the DocuSign field. */
    public var dsLink: String?
    /**  */
    public var dsNode: String?
    /** A unique ID for the Salesforce object. */
    public var id: String?
    /**  */
    public var sfField: String?
    /** The name of the Salesforce field. */
    public var sfFieldName: String?
    /** The name of the Salesforce folder. */
    public var sfFolder: String?
    /**  */
    public var sfLockedValue: String?

    public init(dsAttribute: String? = nil, dsLink: String? = nil, dsNode: String? = nil, id: String? = nil, sfField: String? = nil, sfFieldName: String? = nil, sfFolder: String? = nil, sfLockedValue: String? = nil) {
        self.dsAttribute = dsAttribute
        self.dsLink = dsLink
        self.dsNode = dsNode
        self.id = id
        self.sfField = sfField
        self.sfFieldName = sfFieldName
        self.sfFolder = sfFolder
        self.sfLockedValue = sfLockedValue
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case dsAttribute
        case dsLink
        case dsNode
        case id
        case sfField
        case sfFieldName
        case sfFolder
        case sfLockedValue
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(dsAttribute, forKey: .dsAttribute)
        try container.encodeIfPresent(dsLink, forKey: .dsLink)
        try container.encodeIfPresent(dsNode, forKey: .dsNode)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(sfField, forKey: .sfField)
        try container.encodeIfPresent(sfFieldName, forKey: .sfFieldName)
        try container.encodeIfPresent(sfFolder, forKey: .sfFolder)
        try container.encodeIfPresent(sfLockedValue, forKey: .sfLockedValue)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        dsAttribute = try container.decodeIfPresent(String.self, forKey: .dsAttribute)
        dsLink = try container.decodeIfPresent(String.self, forKey: .dsLink)
        dsNode = try container.decodeIfPresent(String.self, forKey: .dsNode)
        id = try container.decodeIfPresent(String.self, forKey: .id)
        sfField = try container.decodeIfPresent(String.self, forKey: .sfField)
        sfFieldName = try container.decodeIfPresent(String.self, forKey: .sfFieldName)
        sfFolder = try container.decodeIfPresent(String.self, forKey: .sfFolder)
        sfLockedValue = try container.decodeIfPresent(String.self, forKey: .sfLockedValue)
    }
}

extension ConnectSalesforceField: Hashable {
    public static func == (lhs: ConnectSalesforceField, rhs: ConnectSalesforceField) -> Bool {
        lhs.dsAttribute == rhs.dsAttribute &&
            lhs.dsLink == rhs.dsLink &&
            lhs.dsNode == rhs.dsNode &&
            lhs.id == rhs.id &&
            lhs.sfField == rhs.sfField &&
            lhs.sfFieldName == rhs.sfFieldName &&
            lhs.sfFolder == rhs.sfFolder &&
            lhs.sfLockedValue == rhs.sfLockedValue
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(dsAttribute?.hashValue)
        hasher.combine(dsLink?.hashValue)
        hasher.combine(dsNode?.hashValue)
        hasher.combine(id?.hashValue)
        hasher.combine(sfField?.hashValue)
        hasher.combine(sfFieldName?.hashValue)
        hasher.combine(sfFolder?.hashValue)
        hasher.combine(sfLockedValue?.hashValue)
    }
}