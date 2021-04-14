//
// TemplateDocumentVisibilityAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

open class TemplateDocumentVisibilityAPI {
    /**
     Returns document visibility for a template recipient

     GET /v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/document_visibility

     This method returns information about document visibility for a template recipient.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter recipientId: (path) A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
     - parameter templateId: (path) The id of the template.
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func recipientsGetTemplateRecipientDocumentVisibilityRaw(accountId: String, recipientId: String, templateId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/document_visibility"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let recipientIdPreEscape = String(describing: recipientId)
        let recipientIdPostEscape = recipientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{recipientId}", with: recipientIdPostEscape, options: .literal, range: nil)
        let templateIdPreEscape = String(describing: templateId)
        let templateIdPostEscape = templateIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{templateId}", with: templateIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.GET, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            try beforeSend(&request)
        }
    }

    public enum RecipientsGetTemplateRecipientDocumentVisibility {
        case http200(value: DocumentVisibilityList, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: DocumentVisibilityList, raw: ClientResponse)
    }

    /**
     Returns document visibility for a template recipient

     GET /v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/document_visibility

     This method returns information about document visibility for a template recipient.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter recipientId: (path) A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
     - parameter templateId: (path) The id of the template.
     - returns: `EventLoopFuture` of `RecipientsGetTemplateRecipientDocumentVisibility`
     */
    open class func recipientsGetTemplateRecipientDocumentVisibility(accountId: String, recipientId: String, templateId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<RecipientsGetTemplateRecipientDocumentVisibility> {
        return recipientsGetTemplateRecipientDocumentVisibilityRaw(accountId: accountId, recipientId: recipientId, templateId: templateId, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> RecipientsGetTemplateRecipientDocumentVisibility in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(DocumentVisibilityList.self, using: Configuration.contentConfiguration.requireDecoder(for: DocumentVisibilityList.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(DocumentVisibilityList.self, using: Configuration.contentConfiguration.requireDecoder(for: DocumentVisibilityList.defaultContentType)), raw: response)
            }
        }
    }

    /**
     Updates document visibility for a template recipient

     PUT /v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/document_visibility

     This method updates the document visibility for a template recipient.  **Note**: A document cannot be hidden from a recipient if the recipient has tabs assigned to them on the document. Carbon Copy, Certified Delivery (Needs to Sign), Editor, and Agent recipients can always see all documents.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter recipientId: (path) A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
     - parameter templateId: (path) The id of the template.
     - parameter templateDocumentVisibilityList: (body)  (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func recipientsPutTemplateRecipientDocumentVisibilityRaw(accountId: String, recipientId: String, templateId: String, templateDocumentVisibilityList: TemplateDocumentVisibilityList? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/document_visibility"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let recipientIdPreEscape = String(describing: recipientId)
        let recipientIdPostEscape = recipientIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{recipientId}", with: recipientIdPostEscape, options: .literal, range: nil)
        let templateIdPreEscape = String(describing: templateId)
        let templateIdPostEscape = templateIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{templateId}", with: templateIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.PUT, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = templateDocumentVisibilityList {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }
    }

    public enum RecipientsPutTemplateRecipientDocumentVisibility {
        case http200(value: TemplateDocumentVisibilityList, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: TemplateDocumentVisibilityList, raw: ClientResponse)
    }

    /**
     Updates document visibility for a template recipient

     PUT /v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/document_visibility

     This method updates the document visibility for a template recipient.  **Note**: A document cannot be hidden from a recipient if the recipient has tabs assigned to them on the document. Carbon Copy, Certified Delivery (Needs to Sign), Editor, and Agent recipients can always see all documents.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter recipientId: (path) A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
     - parameter templateId: (path) The id of the template.
     - parameter templateDocumentVisibilityList: (body)  (optional)
     - returns: `EventLoopFuture` of `RecipientsPutTemplateRecipientDocumentVisibility`
     */
    open class func recipientsPutTemplateRecipientDocumentVisibility(accountId: String, recipientId: String, templateId: String, templateDocumentVisibilityList: TemplateDocumentVisibilityList? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<RecipientsPutTemplateRecipientDocumentVisibility> {
        return recipientsPutTemplateRecipientDocumentVisibilityRaw(accountId: accountId, recipientId: recipientId, templateId: templateId, templateDocumentVisibilityList: templateDocumentVisibilityList, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> RecipientsPutTemplateRecipientDocumentVisibility in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(TemplateDocumentVisibilityList.self, using: Configuration.contentConfiguration.requireDecoder(for: TemplateDocumentVisibilityList.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(TemplateDocumentVisibilityList.self, using: Configuration.contentConfiguration.requireDecoder(for: TemplateDocumentVisibilityList.defaultContentType)), raw: response)
            }
        }
    }

    /**
     Updates document visibility for template recipients

     PUT /v2.1/accounts/{accountId}/templates/{templateId}/recipients/document_visibility

     This method updates document visibility for one or more template recipients based on the `recipientId` and `visible` values that you include in the request body.   **Note**: A document cannot be hidden from a recipient if the recipient has tabs assigned to them on the document. Carbon Copy, Certified Delivery (Needs to Sign), Editor, and Agent recipients can always see all documents.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter templateId: (path) The id of the template.
     - parameter templateDocumentVisibilityList: (body)  (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func recipientsPutTemplateRecipientsDocumentVisibilityRaw(accountId: String, templateId: String, templateDocumentVisibilityList: TemplateDocumentVisibilityList? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/templates/{templateId}/recipients/document_visibility"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let templateIdPreEscape = String(describing: templateId)
        let templateIdPostEscape = templateIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{templateId}", with: templateIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.PUT, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = templateDocumentVisibilityList {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }
    }

    public enum RecipientsPutTemplateRecipientsDocumentVisibility {
        case http200(value: TemplateDocumentVisibilityList, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: TemplateDocumentVisibilityList, raw: ClientResponse)
    }

    /**
     Updates document visibility for template recipients

     PUT /v2.1/accounts/{accountId}/templates/{templateId}/recipients/document_visibility

     This method updates document visibility for one or more template recipients based on the `recipientId` and `visible` values that you include in the request body.   **Note**: A document cannot be hidden from a recipient if the recipient has tabs assigned to them on the document. Carbon Copy, Certified Delivery (Needs to Sign), Editor, and Agent recipients can always see all documents.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter templateId: (path) The id of the template.
     - parameter templateDocumentVisibilityList: (body)  (optional)
     - returns: `EventLoopFuture` of `RecipientsPutTemplateRecipientsDocumentVisibility`
     */
    open class func recipientsPutTemplateRecipientsDocumentVisibility(accountId: String, templateId: String, templateDocumentVisibilityList: TemplateDocumentVisibilityList? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<RecipientsPutTemplateRecipientsDocumentVisibility> {
        return recipientsPutTemplateRecipientsDocumentVisibilityRaw(accountId: accountId, templateId: templateId, templateDocumentVisibilityList: templateDocumentVisibilityList, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> RecipientsPutTemplateRecipientsDocumentVisibility in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(TemplateDocumentVisibilityList.self, using: Configuration.contentConfiguration.requireDecoder(for: TemplateDocumentVisibilityList.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(TemplateDocumentVisibilityList.self, using: Configuration.contentConfiguration.requireDecoder(for: TemplateDocumentVisibilityList.defaultContentType)), raw: response)
            }
        }
    }
}
