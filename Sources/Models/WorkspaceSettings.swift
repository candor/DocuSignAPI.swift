//
// WorkspaceSettings.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** This object provides information about the settings for the workspace. */
public final class WorkspaceSettings: Content {
    /** When **true**, commenting on the documents in the workspace is allowed. */
    public var commentsAllowed: String?

    public init(commentsAllowed: String? = nil) {
        self.commentsAllowed = commentsAllowed
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case commentsAllowed
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(commentsAllowed, forKey: .commentsAllowed)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        commentsAllowed = try container.decodeIfPresent(String.self, forKey: .commentsAllowed)
    }
}

extension WorkspaceSettings: Hashable {
    public static func == (lhs: WorkspaceSettings, rhs: WorkspaceSettings) -> Bool {
        lhs.commentsAllowed == rhs.commentsAllowed
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(commentsAllowed?.hashValue)
    }
}