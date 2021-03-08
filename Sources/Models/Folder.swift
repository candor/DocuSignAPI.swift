//
// Folder.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** This object contains details about a folder. */
public final class Folder: Content {
    public var errorDetails: ErrorDetails?
    public var filter: Filter?
    /** The id of the folder. */
    public var folderId: String?
    /** A list of envelopes and templates that the folder contains. */
    public var folderItems: [FolderItemV2]?
    /** A list of folder objects. */
    public var folders: [Folder]?
    /** When set to **true**, the current user has access to the folder. */
    public var hasAccess: String?
    /** When set to **true**, the folder has subfolders. */
    public var hasSubFolders: String?
    /** The number of items in the folder. */
    public var itemCount: String?
    /** The name of the folder. */
    public var name: String?
    public var owner: UserInfo?
    /** The id of the parent folder, or the special value `root` for the root folder. */
    public var parentFolderId: String?
    /** The URI of the parent folder. */
    public var parentFolderUri: String?
    /** The number of subfolders. */
    public var subFolderCount: String?
    /** The type of folder. Possible values include:  - `draft` - `inbox` - `normal` (a system-generated folder) - `recyclebin` - `sentitems` - `custom` (a custom folder created by a user) */
    public var type: String?
    /** The URI for the folder. */
    public var uri: String?

    public init(errorDetails: ErrorDetails? = nil, filter: Filter? = nil, folderId: String? = nil, folderItems: [FolderItemV2]? = nil, folders: [Folder]? = nil, hasAccess: String? = nil, hasSubFolders: String? = nil, itemCount: String? = nil, name: String? = nil, owner: UserInfo? = nil, parentFolderId: String? = nil, parentFolderUri: String? = nil, subFolderCount: String? = nil, type: String? = nil, uri: String? = nil) {
        self.errorDetails = errorDetails
        self.filter = filter
        self.folderId = folderId
        self.folderItems = folderItems
        self.folders = folders
        self.hasAccess = hasAccess
        self.hasSubFolders = hasSubFolders
        self.itemCount = itemCount
        self.name = name
        self.owner = owner
        self.parentFolderId = parentFolderId
        self.parentFolderUri = parentFolderUri
        self.subFolderCount = subFolderCount
        self.type = type
        self.uri = uri
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case errorDetails
        case filter
        case folderId
        case folderItems
        case folders
        case hasAccess
        case hasSubFolders
        case itemCount
        case name
        case owner
        case parentFolderId
        case parentFolderUri
        case subFolderCount
        case type
        case uri
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(errorDetails, forKey: .errorDetails)
        try container.encodeIfPresent(filter, forKey: .filter)
        try container.encodeIfPresent(folderId, forKey: .folderId)
        try container.encodeIfPresent(folderItems, forKey: .folderItems)
        try container.encodeIfPresent(folders, forKey: .folders)
        try container.encodeIfPresent(hasAccess, forKey: .hasAccess)
        try container.encodeIfPresent(hasSubFolders, forKey: .hasSubFolders)
        try container.encodeIfPresent(itemCount, forKey: .itemCount)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(owner, forKey: .owner)
        try container.encodeIfPresent(parentFolderId, forKey: .parentFolderId)
        try container.encodeIfPresent(parentFolderUri, forKey: .parentFolderUri)
        try container.encodeIfPresent(subFolderCount, forKey: .subFolderCount)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(uri, forKey: .uri)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        errorDetails = try container.decodeIfPresent(ErrorDetails.self, forKey: .errorDetails)
        filter = try container.decodeIfPresent(Filter.self, forKey: .filter)
        folderId = try container.decodeIfPresent(String.self, forKey: .folderId)
        folderItems = try container.decodeIfPresent([FolderItemV2].self, forKey: .folderItems)
        folders = try container.decodeIfPresent([Folder].self, forKey: .folders)
        hasAccess = try container.decodeIfPresent(String.self, forKey: .hasAccess)
        hasSubFolders = try container.decodeIfPresent(String.self, forKey: .hasSubFolders)
        itemCount = try container.decodeIfPresent(String.self, forKey: .itemCount)
        name = try container.decodeIfPresent(String.self, forKey: .name)
        owner = try container.decodeIfPresent(UserInfo.self, forKey: .owner)
        parentFolderId = try container.decodeIfPresent(String.self, forKey: .parentFolderId)
        parentFolderUri = try container.decodeIfPresent(String.self, forKey: .parentFolderUri)
        subFolderCount = try container.decodeIfPresent(String.self, forKey: .subFolderCount)
        type = try container.decodeIfPresent(String.self, forKey: .type)
        uri = try container.decodeIfPresent(String.self, forKey: .uri)
    }
}

extension Folder: Hashable {
    public static func == (lhs: Folder, rhs: Folder) -> Bool {
        lhs.errorDetails == rhs.errorDetails &&
            lhs.filter == rhs.filter &&
            lhs.folderId == rhs.folderId &&
            lhs.folderItems == rhs.folderItems &&
            lhs.folders == rhs.folders &&
            lhs.hasAccess == rhs.hasAccess &&
            lhs.hasSubFolders == rhs.hasSubFolders &&
            lhs.itemCount == rhs.itemCount &&
            lhs.name == rhs.name &&
            lhs.owner == rhs.owner &&
            lhs.parentFolderId == rhs.parentFolderId &&
            lhs.parentFolderUri == rhs.parentFolderUri &&
            lhs.subFolderCount == rhs.subFolderCount &&
            lhs.type == rhs.type &&
            lhs.uri == rhs.uri
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(errorDetails?.hashValue)
        hasher.combine(filter?.hashValue)
        hasher.combine(folderId?.hashValue)
        hasher.combine(folderItems?.hashValue)
        hasher.combine(folders?.hashValue)
        hasher.combine(hasAccess?.hashValue)
        hasher.combine(hasSubFolders?.hashValue)
        hasher.combine(itemCount?.hashValue)
        hasher.combine(name?.hashValue)
        hasher.combine(owner?.hashValue)
        hasher.combine(parentFolderId?.hashValue)
        hasher.combine(parentFolderUri?.hashValue)
        hasher.combine(subFolderCount?.hashValue)
        hasher.combine(type?.hashValue)
        hasher.combine(uri?.hashValue)
    }
}