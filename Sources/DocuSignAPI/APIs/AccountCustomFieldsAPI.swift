//
// AccountCustomFieldsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

open class AccountCustomFieldsAPI {
    /**
     Deletes an account custom field.

     DELETE /v2.1/accounts/{accountId}/custom_fields/{customFieldId}

     This method deletes an existing account custom field.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter customFieldId: (path) The id of the custom field.
     - parameter applyToTemplates: (query)  (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func accountCustomFieldsDeleteAccountCustomFieldsRaw(accountId: String, customFieldId: String, applyToTemplates: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/custom_fields/{customFieldId}"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let customFieldIdPreEscape = String(describing: customFieldId)
        let customFieldIdPostEscape = customFieldIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{customFieldId}", with: customFieldIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.DELETE, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            struct QueryParams: Content {
                var applyToTemplates: String?
            }
            try request.query.encode(QueryParams(applyToTemplates: applyToTemplates))

            try beforeSend(&request)
        }
    }

    public enum AccountCustomFieldsDeleteAccountCustomFields {
        case http200(value: Void, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: Void, raw: ClientResponse)
    }

    /**
     Deletes an account custom field.

     DELETE /v2.1/accounts/{accountId}/custom_fields/{customFieldId}

     This method deletes an existing account custom field.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter customFieldId: (path) The id of the custom field.
     - parameter applyToTemplates: (query)  (optional)
     - returns: `EventLoopFuture` of `AccountCustomFieldsDeleteAccountCustomFields`
     */
    open class func accountCustomFieldsDeleteAccountCustomFields(accountId: String, customFieldId: String, applyToTemplates: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<AccountCustomFieldsDeleteAccountCustomFields> {
        return accountCustomFieldsDeleteAccountCustomFieldsRaw(accountId: accountId, customFieldId: customFieldId, applyToTemplates: applyToTemplates, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> AccountCustomFieldsDeleteAccountCustomFields in
            switch response.status.code {
            case 200:
                return .http200(value: (), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: (), raw: response)
            }
        }
    }

    /**
     Gets a list of custom fields.

     GET /v2.1/accounts/{accountId}/custom_fields

     This method returns a list of the envelope and document custom fields associated with an account.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func accountCustomFieldsGetAccountCustomFieldsRaw(accountId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/custom_fields"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.GET, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            try beforeSend(&request)
        }
    }

    public enum AccountCustomFieldsGetAccountCustomFields {
        case http200(value: AccountCustomFields, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: AccountCustomFields, raw: ClientResponse)
    }

    /**
     Gets a list of custom fields.

     GET /v2.1/accounts/{accountId}/custom_fields

     This method returns a list of the envelope and document custom fields associated with an account.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - returns: `EventLoopFuture` of `AccountCustomFieldsGetAccountCustomFields`
     */
    open class func accountCustomFieldsGetAccountCustomFields(accountId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<AccountCustomFieldsGetAccountCustomFields> {
        return accountCustomFieldsGetAccountCustomFieldsRaw(accountId: accountId, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> AccountCustomFieldsGetAccountCustomFields in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(AccountCustomFields.self, using: Configuration.contentConfiguration.requireDecoder(for: AccountCustomFields.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(AccountCustomFields.self, using: Configuration.contentConfiguration.requireDecoder(for: AccountCustomFields.defaultContentType)), raw: response)
            }
        }
    }

    /**
     Creates an account custom field.

     POST /v2.1/accounts/{accountId}/custom_fields

     This method creates a custom field and makes it available for all new envelopes associated with an account.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter applyToTemplates: (query) (Optional) When set to **true**, the new custom field is applied to all of the templates on the account. (optional)
     - parameter customField: (body)  (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func accountCustomFieldsPostAccountCustomFieldsRaw(accountId: String, applyToTemplates: String? = nil, customField: CustomField? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/custom_fields"
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
                var applyToTemplates: String?
            }
            try request.query.encode(QueryParams(applyToTemplates: applyToTemplates))
            if let body = customField {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }
    }

    public enum AccountCustomFieldsPostAccountCustomFields {
        case http201(value: AccountCustomFields, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: AccountCustomFields, raw: ClientResponse)
    }

    /**
     Creates an account custom field.

     POST /v2.1/accounts/{accountId}/custom_fields

     This method creates a custom field and makes it available for all new envelopes associated with an account.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter applyToTemplates: (query) (Optional) When set to **true**, the new custom field is applied to all of the templates on the account. (optional)
     - parameter customField: (body)  (optional)
     - returns: `EventLoopFuture` of `AccountCustomFieldsPostAccountCustomFields`
     */
    open class func accountCustomFieldsPostAccountCustomFields(accountId: String, applyToTemplates: String? = nil, customField: CustomField? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<AccountCustomFieldsPostAccountCustomFields> {
        return accountCustomFieldsPostAccountCustomFieldsRaw(accountId: accountId, applyToTemplates: applyToTemplates, customField: customField, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> AccountCustomFieldsPostAccountCustomFields in
            switch response.status.code {
            case 201:
                return .http201(value: try response.content.decode(AccountCustomFields.self, using: Configuration.contentConfiguration.requireDecoder(for: AccountCustomFields.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(AccountCustomFields.self, using: Configuration.contentConfiguration.requireDecoder(for: AccountCustomFields.defaultContentType)), raw: response)
            }
        }
    }

    /**
     Updates an account custom field.

     PUT /v2.1/accounts/{accountId}/custom_fields/{customFieldId}

     This method updates an existing account custom field.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter customFieldId: (path) The id of the custom field.
     - parameter applyToTemplates: (query)  (optional)
     - parameter customField: (body)  (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func accountCustomFieldsPutAccountCustomFieldsRaw(accountId: String, customFieldId: String, applyToTemplates: String? = nil, customField: CustomField? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/custom_fields/{customFieldId}"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let customFieldIdPreEscape = String(describing: customFieldId)
        let customFieldIdPostEscape = customFieldIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{customFieldId}", with: customFieldIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.PUT, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            struct QueryParams: Content {
                var applyToTemplates: String?
            }
            try request.query.encode(QueryParams(applyToTemplates: applyToTemplates))
            if let body = customField {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }
    }

    public enum AccountCustomFieldsPutAccountCustomFields {
        case http200(value: AccountCustomFields, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: AccountCustomFields, raw: ClientResponse)
    }

    /**
     Updates an account custom field.

     PUT /v2.1/accounts/{accountId}/custom_fields/{customFieldId}

     This method updates an existing account custom field.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter customFieldId: (path) The id of the custom field.
     - parameter applyToTemplates: (query)  (optional)
     - parameter customField: (body)  (optional)
     - returns: `EventLoopFuture` of `AccountCustomFieldsPutAccountCustomFields`
     */
    open class func accountCustomFieldsPutAccountCustomFields(accountId: String, customFieldId: String, applyToTemplates: String? = nil, customField: CustomField? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<AccountCustomFieldsPutAccountCustomFields> {
        return accountCustomFieldsPutAccountCustomFieldsRaw(accountId: accountId, customFieldId: customFieldId, applyToTemplates: applyToTemplates, customField: customField, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> AccountCustomFieldsPutAccountCustomFields in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(AccountCustomFields.self, using: Configuration.contentConfiguration.requireDecoder(for: AccountCustomFields.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(AccountCustomFields.self, using: Configuration.contentConfiguration.requireDecoder(for: AccountCustomFields.defaultContentType)), raw: response)
            }
        }
    }
}
