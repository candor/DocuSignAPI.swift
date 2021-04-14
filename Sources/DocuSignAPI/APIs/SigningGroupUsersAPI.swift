//
// SigningGroupUsersAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

open class SigningGroupUsersAPI {
    /**
     Deletes  one or more members from a signing group.

     DELETE /v2.1/accounts/{accountId}/signing_groups/{signingGroupId}/users

     Deletes  one or more members from the specified signing group.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter signingGroupId: (path) Optional. The ID of the [signing group](https://support.docusign.com/en/guides/ndse-user-guide-signing-groups).  **Note**: When you send an envelope to a signing group, anyone in the group can open it and sign it with their own signature. For this reason, we recommend that you do not include non-signer recipients (such as carbon copy recipients) in the same signing group as signer recipients. However, you could create a second signing group for the non-signer recipients and change the default action of Needs to Sign to a different value, such as Receives a Copy.
     - parameter signingGroupUsers: (body) A complex type that contains information about users in the signing group. (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func signingGroupsDeleteSigningGroupUsersRaw(accountId: String, signingGroupId: String, signingGroupUsers: SigningGroupUsers? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/signing_groups/{signingGroupId}/users"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let signingGroupIdPreEscape = String(describing: signingGroupId)
        let signingGroupIdPostEscape = signingGroupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{signingGroupId}", with: signingGroupIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.DELETE, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = signingGroupUsers {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }
    }

    public enum SigningGroupsDeleteSigningGroupUsers {
        case http200(value: SigningGroupUsers, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: SigningGroupUsers, raw: ClientResponse)
    }

    /**
     Deletes  one or more members from a signing group.

     DELETE /v2.1/accounts/{accountId}/signing_groups/{signingGroupId}/users

     Deletes  one or more members from the specified signing group.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter signingGroupId: (path) Optional. The ID of the [signing group](https://support.docusign.com/en/guides/ndse-user-guide-signing-groups).  **Note**: When you send an envelope to a signing group, anyone in the group can open it and sign it with their own signature. For this reason, we recommend that you do not include non-signer recipients (such as carbon copy recipients) in the same signing group as signer recipients. However, you could create a second signing group for the non-signer recipients and change the default action of Needs to Sign to a different value, such as Receives a Copy.
     - parameter signingGroupUsers: (body) A complex type that contains information about users in the signing group. (optional)
     - returns: `EventLoopFuture` of `SigningGroupsDeleteSigningGroupUsers`
     */
    open class func signingGroupsDeleteSigningGroupUsers(accountId: String, signingGroupId: String, signingGroupUsers: SigningGroupUsers? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<SigningGroupsDeleteSigningGroupUsers> {
        return signingGroupsDeleteSigningGroupUsersRaw(accountId: accountId, signingGroupId: signingGroupId, signingGroupUsers: signingGroupUsers, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> SigningGroupsDeleteSigningGroupUsers in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(SigningGroupUsers.self, using: Configuration.contentConfiguration.requireDecoder(for: SigningGroupUsers.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(SigningGroupUsers.self, using: Configuration.contentConfiguration.requireDecoder(for: SigningGroupUsers.defaultContentType)), raw: response)
            }
        }
    }

    /**
     Gets a list of members in a Signing Group.

     GET /v2.1/accounts/{accountId}/signing_groups/{signingGroupId}/users

     Retrieves the list of members in the specified Signing Group.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter signingGroupId: (path) Optional. The ID of the [signing group](https://support.docusign.com/en/guides/ndse-user-guide-signing-groups).  **Note**: When you send an envelope to a signing group, anyone in the group can open it and sign it with their own signature. For this reason, we recommend that you do not include non-signer recipients (such as carbon copy recipients) in the same signing group as signer recipients. However, you could create a second signing group for the non-signer recipients and change the default action of Needs to Sign to a different value, such as Receives a Copy.
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func signingGroupsGetSigningGroupUsersRaw(accountId: String, signingGroupId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/signing_groups/{signingGroupId}/users"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let signingGroupIdPreEscape = String(describing: signingGroupId)
        let signingGroupIdPostEscape = signingGroupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{signingGroupId}", with: signingGroupIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.GET, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            try beforeSend(&request)
        }
    }

    public enum SigningGroupsGetSigningGroupUsers {
        case http200(value: SigningGroupUsers, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: SigningGroupUsers, raw: ClientResponse)
    }

    /**
     Gets a list of members in a Signing Group.

     GET /v2.1/accounts/{accountId}/signing_groups/{signingGroupId}/users

     Retrieves the list of members in the specified Signing Group.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter signingGroupId: (path) Optional. The ID of the [signing group](https://support.docusign.com/en/guides/ndse-user-guide-signing-groups).  **Note**: When you send an envelope to a signing group, anyone in the group can open it and sign it with their own signature. For this reason, we recommend that you do not include non-signer recipients (such as carbon copy recipients) in the same signing group as signer recipients. However, you could create a second signing group for the non-signer recipients and change the default action of Needs to Sign to a different value, such as Receives a Copy.
     - returns: `EventLoopFuture` of `SigningGroupsGetSigningGroupUsers`
     */
    open class func signingGroupsGetSigningGroupUsers(accountId: String, signingGroupId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<SigningGroupsGetSigningGroupUsers> {
        return signingGroupsGetSigningGroupUsersRaw(accountId: accountId, signingGroupId: signingGroupId, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> SigningGroupsGetSigningGroupUsers in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(SigningGroupUsers.self, using: Configuration.contentConfiguration.requireDecoder(for: SigningGroupUsers.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(SigningGroupUsers.self, using: Configuration.contentConfiguration.requireDecoder(for: SigningGroupUsers.defaultContentType)), raw: response)
            }
        }
    }

    /**
     Adds members to a signing group.

     PUT /v2.1/accounts/{accountId}/signing_groups/{signingGroupId}/users

     Adds one or more new members to a signing group. A signing group can have a maximum of 50 members.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter signingGroupId: (path) Optional. The ID of the [signing group](https://support.docusign.com/en/guides/ndse-user-guide-signing-groups).  **Note**: When you send an envelope to a signing group, anyone in the group can open it and sign it with their own signature. For this reason, we recommend that you do not include non-signer recipients (such as carbon copy recipients) in the same signing group as signer recipients. However, you could create a second signing group for the non-signer recipients and change the default action of Needs to Sign to a different value, such as Receives a Copy.
     - parameter signingGroupUsers: (body) A complex type that contains information about users in the signing group. (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func signingGroupsPutSigningGroupUsersRaw(accountId: String, signingGroupId: String, signingGroupUsers: SigningGroupUsers? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/signing_groups/{signingGroupId}/users"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let signingGroupIdPreEscape = String(describing: signingGroupId)
        let signingGroupIdPostEscape = signingGroupIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{signingGroupId}", with: signingGroupIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.PUT, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = signingGroupUsers {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }
    }

    public enum SigningGroupsPutSigningGroupUsers {
        case http200(value: SigningGroupUsers, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: SigningGroupUsers, raw: ClientResponse)
    }

    /**
     Adds members to a signing group.

     PUT /v2.1/accounts/{accountId}/signing_groups/{signingGroupId}/users

     Adds one or more new members to a signing group. A signing group can have a maximum of 50 members.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter signingGroupId: (path) Optional. The ID of the [signing group](https://support.docusign.com/en/guides/ndse-user-guide-signing-groups).  **Note**: When you send an envelope to a signing group, anyone in the group can open it and sign it with their own signature. For this reason, we recommend that you do not include non-signer recipients (such as carbon copy recipients) in the same signing group as signer recipients. However, you could create a second signing group for the non-signer recipients and change the default action of Needs to Sign to a different value, such as Receives a Copy.
     - parameter signingGroupUsers: (body) A complex type that contains information about users in the signing group. (optional)
     - returns: `EventLoopFuture` of `SigningGroupsPutSigningGroupUsers`
     */
    open class func signingGroupsPutSigningGroupUsers(accountId: String, signingGroupId: String, signingGroupUsers: SigningGroupUsers? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<SigningGroupsPutSigningGroupUsers> {
        return signingGroupsPutSigningGroupUsersRaw(accountId: accountId, signingGroupId: signingGroupId, signingGroupUsers: signingGroupUsers, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> SigningGroupsPutSigningGroupUsers in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(SigningGroupUsers.self, using: Configuration.contentConfiguration.requireDecoder(for: SigningGroupUsers.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(SigningGroupUsers.self, using: Configuration.contentConfiguration.requireDecoder(for: SigningGroupUsers.defaultContentType)), raw: response)
            }
        }
    }
}
