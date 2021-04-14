//
// ContactsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

open class ContactsAPI {
    /**
     Deletes a contact.

     DELETE /v2.1/accounts/{accountId}/contacts/{contactId}

     This method deletes a contact associated with an account.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter contactId: (path) The id of a contact person in the account's address book.
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func contactsDeleteContactWithIdRaw(accountId: String, contactId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/contacts/{contactId}"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let contactIdPreEscape = String(describing: contactId)
        let contactIdPostEscape = contactIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{contactId}", with: contactIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.DELETE, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            try beforeSend(&request)
        }
    }

    public enum ContactsDeleteContactWithId {
        case http200(value: ContactUpdateResponse, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: ContactUpdateResponse, raw: ClientResponse)
    }

    /**
     Deletes a contact.

     DELETE /v2.1/accounts/{accountId}/contacts/{contactId}

     This method deletes a contact associated with an account.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter contactId: (path) The id of a contact person in the account's address book.
     - returns: `EventLoopFuture` of `ContactsDeleteContactWithId`
     */
    open class func contactsDeleteContactWithId(accountId: String, contactId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ContactsDeleteContactWithId> {
        return contactsDeleteContactWithIdRaw(accountId: accountId, contactId: contactId, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> ContactsDeleteContactWithId in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(ContactUpdateResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: ContactUpdateResponse.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(ContactUpdateResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: ContactUpdateResponse.defaultContentType)), raw: response)
            }
        }
    }

    /**
     Deletes multiple contacts from an account.

     DELETE /v2.1/accounts/{accountId}/contacts

     This method deletes multiple contacts associated with an account.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter contactModRequest: (body)  (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func contactsDeleteContactsRaw(accountId: String, contactModRequest: ContactModRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/contacts"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.DELETE, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = contactModRequest {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }
    }

    public enum ContactsDeleteContacts {
        case http200(value: ContactUpdateResponse, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: ContactUpdateResponse, raw: ClientResponse)
    }

    /**
     Deletes multiple contacts from an account.

     DELETE /v2.1/accounts/{accountId}/contacts

     This method deletes multiple contacts associated with an account.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter contactModRequest: (body)  (optional)
     - returns: `EventLoopFuture` of `ContactsDeleteContacts`
     */
    open class func contactsDeleteContacts(accountId: String, contactModRequest: ContactModRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ContactsDeleteContacts> {
        return contactsDeleteContactsRaw(accountId: accountId, contactModRequest: contactModRequest, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> ContactsDeleteContacts in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(ContactUpdateResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: ContactUpdateResponse.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(ContactUpdateResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: ContactUpdateResponse.defaultContentType)), raw: response)
            }
        }
    }

    /**
     Gets one or more contacts.

     GET /v2.1/accounts/{accountId}/contacts/{contactId}

     This method returns one or more contacts associated with a DocuSign account. You can also retrieve contacts from connected [cloud storage][CloudStorage] providers by using the `cloud_provider` query parameter. By default, contacts are retrieved from the DocuSign account's default address book.  To return a specific contact, use the `contactId` query parameter. To return all contacts associated with an account, omit this parameter.  [CloudStorage]: /esign-rest-api/reference/CloudStorage/

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter contactId: (path) The id of a contact person in the account's address book.
     - parameter cloudProvider: (query) (Optional) The cloud provider from which to retrieve the contacts. Valid values are:  - `rooms` - `docusignCore` (default) (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func contactsGetContactByIdRaw(accountId: String, contactId: String, cloudProvider: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/contacts/{contactId}"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let contactIdPreEscape = String(describing: contactId)
        let contactIdPostEscape = contactIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{contactId}", with: contactIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.GET, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            struct QueryParams: Content {
                var cloudProvider: String?
            }
            try request.query.encode(QueryParams(cloudProvider: cloudProvider))

            try beforeSend(&request)
        }
    }

    public enum ContactsGetContactById {
        case http200(value: ContactGetResponse, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: ContactGetResponse, raw: ClientResponse)
    }

    /**
     Gets one or more contacts.

     GET /v2.1/accounts/{accountId}/contacts/{contactId}

     This method returns one or more contacts associated with a DocuSign account. You can also retrieve contacts from connected [cloud storage][CloudStorage] providers by using the `cloud_provider` query parameter. By default, contacts are retrieved from the DocuSign account's default address book.  To return a specific contact, use the `contactId` query parameter. To return all contacts associated with an account, omit this parameter.  [CloudStorage]: /esign-rest-api/reference/CloudStorage/

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter contactId: (path) The id of a contact person in the account's address book.
     - parameter cloudProvider: (query) (Optional) The cloud provider from which to retrieve the contacts. Valid values are:  - `rooms` - `docusignCore` (default) (optional)
     - returns: `EventLoopFuture` of `ContactsGetContactById`
     */
    open class func contactsGetContactById(accountId: String, contactId: String, cloudProvider: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ContactsGetContactById> {
        return contactsGetContactByIdRaw(accountId: accountId, contactId: contactId, cloudProvider: cloudProvider, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> ContactsGetContactById in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(ContactGetResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: ContactGetResponse.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(ContactGetResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: ContactGetResponse.defaultContentType)), raw: response)
            }
        }
    }

    /**
     Imports new contacts into a contacts list.

     POST /v2.1/accounts/{accountId}/contacts

     This method imports multiple new contacts into a contact list from a CSV, JSON, or XML file.  To use this method, you must provide a request body in one of the supported formats and include a `content-type` header with the appropriate value.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter contactModRequest: (body)  (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func contactsPostContactsRaw(accountId: String, contactModRequest: ContactModRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/contacts"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.POST, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = contactModRequest {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }
    }

    public enum ContactsPostContacts {
        case http201(value: ContactUpdateResponse, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: ContactUpdateResponse, raw: ClientResponse)
    }

    /**
     Imports new contacts into a contacts list.

     POST /v2.1/accounts/{accountId}/contacts

     This method imports multiple new contacts into a contact list from a CSV, JSON, or XML file.  To use this method, you must provide a request body in one of the supported formats and include a `content-type` header with the appropriate value.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter contactModRequest: (body)  (optional)
     - returns: `EventLoopFuture` of `ContactsPostContacts`
     */
    open class func contactsPostContacts(accountId: String, contactModRequest: ContactModRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ContactsPostContacts> {
        return contactsPostContactsRaw(accountId: accountId, contactModRequest: contactModRequest, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> ContactsPostContacts in
            switch response.status.code {
            case 201:
                return .http201(value: try response.content.decode(ContactUpdateResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: ContactUpdateResponse.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(ContactUpdateResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: ContactUpdateResponse.defaultContentType)), raw: response)
            }
        }
    }

    /**
     Updates one or more contacts.

     PUT /v2.1/accounts/{accountId}/contacts

     This method updates one or more contacts associated with an account.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter contactModRequest: (body)  (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func contactsPutContactsRaw(accountId: String, contactModRequest: ContactModRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/contacts"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.PUT, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = contactModRequest {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }
    }

    public enum ContactsPutContacts {
        case http200(value: ContactUpdateResponse, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: ContactUpdateResponse, raw: ClientResponse)
    }

    /**
     Updates one or more contacts.

     PUT /v2.1/accounts/{accountId}/contacts

     This method updates one or more contacts associated with an account.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter contactModRequest: (body)  (optional)
     - returns: `EventLoopFuture` of `ContactsPutContacts`
     */
    open class func contactsPutContacts(accountId: String, contactModRequest: ContactModRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ContactsPutContacts> {
        return contactsPutContactsRaw(accountId: accountId, contactModRequest: contactModRequest, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> ContactsPutContacts in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(ContactUpdateResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: ContactUpdateResponse.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(ContactUpdateResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: ContactUpdateResponse.defaultContentType)), raw: response)
            }
        }
    }
}
