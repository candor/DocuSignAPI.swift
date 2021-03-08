//
// NewUser.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** Object representing a new user. */
public final class NewUser: Content {
    /** Contains a token that can be used for authentication in API calls instead of using the user name and password. */
    public var apiPassword: String?
    /** The UTC DateTime when the item was created. */
    public var createdDateTime: String?
    /** The user's email address. */
    public var email: String?
    public var errorDetails: ErrorDetails?
    /** The user's membership ID. */
    public var membershipId: String?
    /** The ID of the permission profile. Possible values include:  - `2301416` (for the `DocuSign Viewer` profile) - `2301415` (for the `DocuSign Sender` profile) - `2301414` (for the `Account Administrator` profile)  In addition, any custom permission profiles associated with your account will have an automatically generated `permissionProfileId`. */
    public var permissionProfileId: String?
    /** The name of the account permission profile.   Example: `Account Administrator` */
    public var permissionProfileName: String?
    /** A URI containing the user ID. */
    public var uri: String?
    /** Specifies the user ID for the new user. */
    public var userId: String?
    /** The name of the user. */
    public var userName: String?
    /** Status of the user's account. One of:  - `ActivationRequired` - `ActivationSent` - `Active` - `Closed` - `Disabled`  */
    public var userStatus: String?

    public init(apiPassword: String? = nil, createdDateTime: String? = nil, email: String? = nil, errorDetails: ErrorDetails? = nil, membershipId: String? = nil, permissionProfileId: String? = nil, permissionProfileName: String? = nil, uri: String? = nil, userId: String? = nil, userName: String? = nil, userStatus: String? = nil) {
        self.apiPassword = apiPassword
        self.createdDateTime = createdDateTime
        self.email = email
        self.errorDetails = errorDetails
        self.membershipId = membershipId
        self.permissionProfileId = permissionProfileId
        self.permissionProfileName = permissionProfileName
        self.uri = uri
        self.userId = userId
        self.userName = userName
        self.userStatus = userStatus
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case apiPassword
        case createdDateTime
        case email
        case errorDetails
        case membershipId
        case permissionProfileId
        case permissionProfileName
        case uri
        case userId
        case userName
        case userStatus
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(apiPassword, forKey: .apiPassword)
        try container.encodeIfPresent(createdDateTime, forKey: .createdDateTime)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(errorDetails, forKey: .errorDetails)
        try container.encodeIfPresent(membershipId, forKey: .membershipId)
        try container.encodeIfPresent(permissionProfileId, forKey: .permissionProfileId)
        try container.encodeIfPresent(permissionProfileName, forKey: .permissionProfileName)
        try container.encodeIfPresent(uri, forKey: .uri)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(userName, forKey: .userName)
        try container.encodeIfPresent(userStatus, forKey: .userStatus)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        apiPassword = try container.decodeIfPresent(String.self, forKey: .apiPassword)
        createdDateTime = try container.decodeIfPresent(String.self, forKey: .createdDateTime)
        email = try container.decodeIfPresent(String.self, forKey: .email)
        errorDetails = try container.decodeIfPresent(ErrorDetails.self, forKey: .errorDetails)
        membershipId = try container.decodeIfPresent(String.self, forKey: .membershipId)
        permissionProfileId = try container.decodeIfPresent(String.self, forKey: .permissionProfileId)
        permissionProfileName = try container.decodeIfPresent(String.self, forKey: .permissionProfileName)
        uri = try container.decodeIfPresent(String.self, forKey: .uri)
        userId = try container.decodeIfPresent(String.self, forKey: .userId)
        userName = try container.decodeIfPresent(String.self, forKey: .userName)
        userStatus = try container.decodeIfPresent(String.self, forKey: .userStatus)
    }
}

extension NewUser: Hashable {
    public static func == (lhs: NewUser, rhs: NewUser) -> Bool {
        lhs.apiPassword == rhs.apiPassword &&
            lhs.createdDateTime == rhs.createdDateTime &&
            lhs.email == rhs.email &&
            lhs.errorDetails == rhs.errorDetails &&
            lhs.membershipId == rhs.membershipId &&
            lhs.permissionProfileId == rhs.permissionProfileId &&
            lhs.permissionProfileName == rhs.permissionProfileName &&
            lhs.uri == rhs.uri &&
            lhs.userId == rhs.userId &&
            lhs.userName == rhs.userName &&
            lhs.userStatus == rhs.userStatus
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(apiPassword?.hashValue)
        hasher.combine(createdDateTime?.hashValue)
        hasher.combine(email?.hashValue)
        hasher.combine(errorDetails?.hashValue)
        hasher.combine(membershipId?.hashValue)
        hasher.combine(permissionProfileId?.hashValue)
        hasher.combine(permissionProfileName?.hashValue)
        hasher.combine(uri?.hashValue)
        hasher.combine(userId?.hashValue)
        hasher.combine(userName?.hashValue)
        hasher.combine(userStatus?.hashValue)
    }
}