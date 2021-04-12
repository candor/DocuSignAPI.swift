//
// AccountPermissionProfilesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

open class AccountPermissionProfilesAPI {
    public enum PermissionProfilesDeletePermissionProfiles {
        case http200(value: Void?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: Void?, raw: ClientResponse)
    }

    /**
     Deletes a permission profile from an account.

     DELETE /v2.1/accounts/{accountId}/permission_profiles/{permissionProfileId}

     This method deletes a permission profile from an account.  To delete a permission profile, it must not have any users associated with it. When you use this method to delete a permission profile, you can reassign the users associated with it to a new permission profile at the same time by using the `move_users_to` query parameter.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter permissionProfileId: (path) The ID of the permission profile. Possible values include:  - `2301416` (for the `DocuSign Viewer` profile) - `2301415` (for the `DocuSign Sender` profile) - `2301414` (for the `Account Administrator` profile)  In addition, any custom permission profiles associated with your account will have an automatically generated `permissionProfileId`.
     - parameter moveUsersTo: (query)  (optional)
     - returns: `EventLoopFuture` of `PermissionProfilesDeletePermissionProfiles`
     */
    open class func permissionProfilesDeletePermissionProfiles(accountId: String, permissionProfileId: String, moveUsersTo: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<PermissionProfilesDeletePermissionProfiles> {
        var path = "/v2.1/accounts/{accountId}/permission_profiles/{permissionProfileId}"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let permissionProfileIdPreEscape = String(describing: permissionProfileId)
        let permissionProfileIdPostEscape = permissionProfileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{permissionProfileId}", with: permissionProfileIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.DELETE, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            struct QueryParams: Content {
                var moveUsersTo: String?
            }
            try request.query.encode(QueryParams(moveUsersTo: moveUsersTo))

            try beforeSend(&request)
        }.flatMapThrowing { response -> PermissionProfilesDeletePermissionProfiles in
            switch response.status.code {
            case 200:
                return .http200(value: (), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: (), raw: response)
            }
        }
    }

    public enum PermissionProfilesGetPermissionProfile {
        case http200(value: PermissionProfile?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: PermissionProfile?, raw: ClientResponse)
    }

    /**
     Returns a permission profile for an account.

     GET /v2.1/accounts/{accountId}/permission_profiles/{permissionProfileId}

     This method returns information about a specific permission profile that is associated with an account.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter permissionProfileId: (path) The ID of the permission profile. Possible values include:  - `2301416` (for the `DocuSign Viewer` profile) - `2301415` (for the `DocuSign Sender` profile) - `2301414` (for the `Account Administrator` profile)  In addition, any custom permission profiles associated with your account will have an automatically generated `permissionProfileId`.
     - parameter include: (query) A comma-separated list of additional properties to return in the response. The only valid value for this request is `metadata`, which returns metadata indicating whether the properties associated with the account permission profile are editable. (optional)
     - returns: `EventLoopFuture` of `PermissionProfilesGetPermissionProfile`
     */
    open class func permissionProfilesGetPermissionProfile(accountId: String, permissionProfileId: String, include: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<PermissionProfilesGetPermissionProfile> {
        var path = "/v2.1/accounts/{accountId}/permission_profiles/{permissionProfileId}"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let permissionProfileIdPreEscape = String(describing: permissionProfileId)
        let permissionProfileIdPostEscape = permissionProfileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{permissionProfileId}", with: permissionProfileIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.GET, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            struct QueryParams: Content {
                var include: String?
            }
            try request.query.encode(QueryParams(include: include))

            try beforeSend(&request)
        }.flatMapThrowing { response -> PermissionProfilesGetPermissionProfile in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(PermissionProfile.self, using: Configuration.contentConfiguration.requireDecoder(for: PermissionProfile.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try? response.content.decode(PermissionProfile.self, using: Configuration.contentConfiguration.requireDecoder(for: PermissionProfile.defaultContentType)), raw: response)
            }
        }
    }

    public enum PermissionProfilesGetPermissionProfiles {
        case http200(value: PermissionProfileInformation?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: PermissionProfileInformation?, raw: ClientResponse)
    }

    /**
     Gets a list of permission profiles.

     GET /v2.1/accounts/{accountId}/permission_profiles

     This method returns a list of permission profiles that are associated with an account.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter include: (query) A comma-separated list of additional properties to return in the response. Valid values are:  - `user_count`: The total number of users associated with the permission profile. - `closed_users`: Includes closed users in the `user_count`. - `account_management`: The account management settings. - `metadata`: Metadata indicating whether the properties associated with the account permission profile are editable.  Example: `user_count,closed_users`  (optional)
     - returns: `EventLoopFuture` of `PermissionProfilesGetPermissionProfiles`
     */
    open class func permissionProfilesGetPermissionProfiles(accountId: String, include: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<PermissionProfilesGetPermissionProfiles> {
        var path = "/v2.1/accounts/{accountId}/permission_profiles"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.GET, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            struct QueryParams: Content {
                var include: String?
            }
            try request.query.encode(QueryParams(include: include))

            try beforeSend(&request)
        }.flatMapThrowing { response -> PermissionProfilesGetPermissionProfiles in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(PermissionProfileInformation.self, using: Configuration.contentConfiguration.requireDecoder(for: PermissionProfileInformation.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try? response.content.decode(PermissionProfileInformation.self, using: Configuration.contentConfiguration.requireDecoder(for: PermissionProfileInformation.defaultContentType)), raw: response)
            }
        }
    }

    public enum PermissionProfilesPostPermissionProfiles {
        case http201(value: PermissionProfile?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: PermissionProfile?, raw: ClientResponse)
    }

    /**
     Creates a new permission profile for an account.

     POST /v2.1/accounts/{accountId}/permission_profiles

     This method creates a new permission profile for an account.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter include: (query) A comma-separated list of additional properties to return in the response. The only valid value for this request is `metadata`, which returns metadata indicating whether the properties associated with the account permission profile are editable. (optional)
     - parameter permissionProfile: (body)  (optional)
     - returns: `EventLoopFuture` of `PermissionProfilesPostPermissionProfiles`
     */
    open class func permissionProfilesPostPermissionProfiles(accountId: String, include: String? = nil, permissionProfile: PermissionProfile? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<PermissionProfilesPostPermissionProfiles> {
        var path = "/v2.1/accounts/{accountId}/permission_profiles"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.POST, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            struct QueryParams: Content {
                var include: String?
            }
            try request.query.encode(QueryParams(include: include))
            if let body = permissionProfile {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }.flatMapThrowing { response -> PermissionProfilesPostPermissionProfiles in
            switch response.status.code {
            case 201:
                return .http201(value: try? response.content.decode(PermissionProfile.self, using: Configuration.contentConfiguration.requireDecoder(for: PermissionProfile.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try? response.content.decode(PermissionProfile.self, using: Configuration.contentConfiguration.requireDecoder(for: PermissionProfile.defaultContentType)), raw: response)
            }
        }
    }

    public enum PermissionProfilesPutPermissionProfiles {
        case http200(value: PermissionProfile?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: PermissionProfile?, raw: ClientResponse)
    }

    /**
     Updates a permission profile.

     PUT /v2.1/accounts/{accountId}/permission_profiles/{permissionProfileId}

     This method updates an account permission profile.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter permissionProfileId: (path) The ID of the permission profile. Possible values include:  - `2301416` (for the `DocuSign Viewer` profile) - `2301415` (for the `DocuSign Sender` profile) - `2301414` (for the `Account Administrator` profile)  In addition, any custom permission profiles associated with your account will have an automatically generated `permissionProfileId`.
     - parameter include: (query) A comma-separated list of additional properties to return in the response. The only valid value for this request is `metadata`, which returns metadata indicating whether the properties associated with the account permission profile are editable. (optional)
     - parameter permissionProfile: (body)  (optional)
     - returns: `EventLoopFuture` of `PermissionProfilesPutPermissionProfiles`
     */
    open class func permissionProfilesPutPermissionProfiles(accountId: String, permissionProfileId: String, include: String? = nil, permissionProfile: PermissionProfile? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<PermissionProfilesPutPermissionProfiles> {
        var path = "/v2.1/accounts/{accountId}/permission_profiles/{permissionProfileId}"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let permissionProfileIdPreEscape = String(describing: permissionProfileId)
        let permissionProfileIdPostEscape = permissionProfileIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{permissionProfileId}", with: permissionProfileIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.PUT, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            struct QueryParams: Content {
                var include: String?
            }
            try request.query.encode(QueryParams(include: include))
            if let body = permissionProfile {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }.flatMapThrowing { response -> PermissionProfilesPutPermissionProfiles in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(PermissionProfile.self, using: Configuration.contentConfiguration.requireDecoder(for: PermissionProfile.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try? response.content.decode(PermissionProfile.self, using: Configuration.contentConfiguration.requireDecoder(for: PermissionProfile.defaultContentType)), raw: response)
            }
        }
    }
}