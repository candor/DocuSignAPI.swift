//
// AccountSignaturesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

open class AccountSignaturesAPI {
    /**

     DELETE /v2.1/accounts/{accountId}/signatures/{signatureId}

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter signatureId: (path) The ID of the signature being accessed.
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func accountSignaturesDeleteAccountSignatureRaw(accountId: String, signatureId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/signatures/{signatureId}"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let signatureIdPreEscape = String(describing: signatureId)
        let signatureIdPostEscape = signatureIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{signatureId}", with: signatureIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.DELETE, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            try beforeSend(&request)
        }
    }

    public enum AccountSignaturesDeleteAccountSignature {
        case http200(value: Void, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: Void, raw: ClientResponse)
    }

    /**

     DELETE /v2.1/accounts/{accountId}/signatures/{signatureId}

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter signatureId: (path) The ID of the signature being accessed.
     - returns: `EventLoopFuture` of `AccountSignaturesDeleteAccountSignature`
     */
    open class func accountSignaturesDeleteAccountSignature(accountId: String, signatureId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<AccountSignaturesDeleteAccountSignature> {
        return accountSignaturesDeleteAccountSignatureRaw(accountId: accountId, signatureId: signatureId, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> AccountSignaturesDeleteAccountSignature in
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

     DELETE /v2.1/accounts/{accountId}/signatures/{signatureId}/{imageType}

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter imageType: (path) Specificies the type of image. Valid values are:  - `signature_image` - `initials_image`
     - parameter signatureId: (path) The ID of the signature being accessed.
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func accountSignaturesDeleteAccountSignatureImageRaw(accountId: String, imageType: String, signatureId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/signatures/{signatureId}/{imageType}"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let imageTypePreEscape = String(describing: imageType)
        let imageTypePostEscape = imageTypePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{imageType}", with: imageTypePostEscape, options: .literal, range: nil)
        let signatureIdPreEscape = String(describing: signatureId)
        let signatureIdPostEscape = signatureIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{signatureId}", with: signatureIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.DELETE, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            try beforeSend(&request)
        }
    }

    public enum AccountSignaturesDeleteAccountSignatureImage {
        case http200(value: AccountSignature, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: AccountSignature, raw: ClientResponse)
    }

    /**

     DELETE /v2.1/accounts/{accountId}/signatures/{signatureId}/{imageType}

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter imageType: (path) Specificies the type of image. Valid values are:  - `signature_image` - `initials_image`
     - parameter signatureId: (path) The ID of the signature being accessed.
     - returns: `EventLoopFuture` of `AccountSignaturesDeleteAccountSignatureImage`
     */
    open class func accountSignaturesDeleteAccountSignatureImage(accountId: String, imageType: String, signatureId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<AccountSignaturesDeleteAccountSignatureImage> {
        return accountSignaturesDeleteAccountSignatureImageRaw(accountId: accountId, imageType: imageType, signatureId: signatureId, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> AccountSignaturesDeleteAccountSignatureImage in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(AccountSignature.self, using: Configuration.contentConfiguration.requireDecoder(for: AccountSignature.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(AccountSignature.self, using: Configuration.contentConfiguration.requireDecoder(for: AccountSignature.defaultContentType)), raw: response)
            }
        }
    }

    /**

     GET /v2.1/accounts/{accountId}/signatures/{signatureId}

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter signatureId: (path) The ID of the signature being accessed.
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func accountSignaturesGetAccountSignatureRaw(accountId: String, signatureId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/signatures/{signatureId}"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let signatureIdPreEscape = String(describing: signatureId)
        let signatureIdPostEscape = signatureIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{signatureId}", with: signatureIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.GET, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            try beforeSend(&request)
        }
    }

    public enum AccountSignaturesGetAccountSignature {
        case http200(value: AccountSignature, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: AccountSignature, raw: ClientResponse)
    }

    /**

     GET /v2.1/accounts/{accountId}/signatures/{signatureId}

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter signatureId: (path) The ID of the signature being accessed.
     - returns: `EventLoopFuture` of `AccountSignaturesGetAccountSignature`
     */
    open class func accountSignaturesGetAccountSignature(accountId: String, signatureId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<AccountSignaturesGetAccountSignature> {
        return accountSignaturesGetAccountSignatureRaw(accountId: accountId, signatureId: signatureId, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> AccountSignaturesGetAccountSignature in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(AccountSignature.self, using: Configuration.contentConfiguration.requireDecoder(for: AccountSignature.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(AccountSignature.self, using: Configuration.contentConfiguration.requireDecoder(for: AccountSignature.defaultContentType)), raw: response)
            }
        }
    }

    /**

     GET /v2.1/accounts/{accountId}/signatures/{signatureId}/{imageType}

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter imageType: (path) Specificies the type of image. Valid values are:  - `signature_image` - `initials_image`
     - parameter signatureId: (path) The ID of the signature being accessed.
     - parameter includeChrome: (query) When **true**, the chrome (or frame containing the added line and identifier) is included with the signature image. (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func accountSignaturesGetAccountSignatureImageRaw(accountId: String, imageType: String, signatureId: String, includeChrome: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/signatures/{signatureId}/{imageType}"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let imageTypePreEscape = String(describing: imageType)
        let imageTypePostEscape = imageTypePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{imageType}", with: imageTypePostEscape, options: .literal, range: nil)
        let signatureIdPreEscape = String(describing: signatureId)
        let signatureIdPostEscape = signatureIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{signatureId}", with: signatureIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.GET, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            struct QueryParams: Content {
                var includeChrome: String?
            }
            try request.query.encode(QueryParams(includeChrome: includeChrome))

            try beforeSend(&request)
        }
    }

    public enum AccountSignaturesGetAccountSignatureImage {
        case http200(value: Data, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: Data, raw: ClientResponse)
    }

    /**

     GET /v2.1/accounts/{accountId}/signatures/{signatureId}/{imageType}

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter imageType: (path) Specificies the type of image. Valid values are:  - `signature_image` - `initials_image`
     - parameter signatureId: (path) The ID of the signature being accessed.
     - parameter includeChrome: (query) When **true**, the chrome (or frame containing the added line and identifier) is included with the signature image. (optional)
     - returns: `EventLoopFuture` of `AccountSignaturesGetAccountSignatureImage`
     */
    open class func accountSignaturesGetAccountSignatureImage(accountId: String, imageType: String, signatureId: String, includeChrome: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<AccountSignaturesGetAccountSignatureImage> {
        return accountSignaturesGetAccountSignatureImageRaw(accountId: accountId, imageType: imageType, signatureId: signatureId, includeChrome: includeChrome, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> AccountSignaturesGetAccountSignatureImage in
            switch response.status.code {
            case 200:
                return .http200(value: Data(buffer: response.body ?? ByteBuffer()), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: Data(buffer: response.body ?? ByteBuffer()), raw: response)
            }
        }
    }

    /**

     GET /v2.1/accounts/{accountId}/signatures

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter stampFormat: (query)  (optional)
     - parameter stampName: (query)  (optional)
     - parameter stampType: (query)  (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func accountSignaturesGetAccountSignaturesRaw(accountId: String, stampFormat: String? = nil, stampName: String? = nil, stampType: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/signatures"
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
                var stampFormat: String?
                var stampName: String?
                var stampType: String?
            }
            try request.query.encode(QueryParams(stampFormat: stampFormat, stampName: stampName, stampType: stampType))

            try beforeSend(&request)
        }
    }

    public enum AccountSignaturesGetAccountSignatures {
        case http200(value: AccountSignaturesInformation, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: AccountSignaturesInformation, raw: ClientResponse)
    }

    /**

     GET /v2.1/accounts/{accountId}/signatures

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter stampFormat: (query)  (optional)
     - parameter stampName: (query)  (optional)
     - parameter stampType: (query)  (optional)
     - returns: `EventLoopFuture` of `AccountSignaturesGetAccountSignatures`
     */
    open class func accountSignaturesGetAccountSignatures(accountId: String, stampFormat: String? = nil, stampName: String? = nil, stampType: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<AccountSignaturesGetAccountSignatures> {
        return accountSignaturesGetAccountSignaturesRaw(accountId: accountId, stampFormat: stampFormat, stampName: stampName, stampType: stampType, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> AccountSignaturesGetAccountSignatures in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(AccountSignaturesInformation.self, using: Configuration.contentConfiguration.requireDecoder(for: AccountSignaturesInformation.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(AccountSignaturesInformation.self, using: Configuration.contentConfiguration.requireDecoder(for: AccountSignaturesInformation.defaultContentType)), raw: response)
            }
        }
    }

    /**

     POST /v2.1/accounts/{accountId}/signatures

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter decodeOnly: (query)  (optional)
     - parameter accountSignaturesInformation: (body)  (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func accountSignaturesPostAccountSignaturesRaw(accountId: String, decodeOnly: String? = nil, accountSignaturesInformation: AccountSignaturesInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/signatures"
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
                var decodeOnly: String?
            }
            try request.query.encode(QueryParams(decodeOnly: decodeOnly))
            if let body = accountSignaturesInformation {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }
    }

    public enum AccountSignaturesPostAccountSignatures {
        case http201(value: AccountSignaturesInformation, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: AccountSignaturesInformation, raw: ClientResponse)
    }

    /**

     POST /v2.1/accounts/{accountId}/signatures

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter decodeOnly: (query)  (optional)
     - parameter accountSignaturesInformation: (body)  (optional)
     - returns: `EventLoopFuture` of `AccountSignaturesPostAccountSignatures`
     */
    open class func accountSignaturesPostAccountSignatures(accountId: String, decodeOnly: String? = nil, accountSignaturesInformation: AccountSignaturesInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<AccountSignaturesPostAccountSignatures> {
        return accountSignaturesPostAccountSignaturesRaw(accountId: accountId, decodeOnly: decodeOnly, accountSignaturesInformation: accountSignaturesInformation, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> AccountSignaturesPostAccountSignatures in
            switch response.status.code {
            case 201:
                return .http201(value: try response.content.decode(AccountSignaturesInformation.self, using: Configuration.contentConfiguration.requireDecoder(for: AccountSignaturesInformation.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(AccountSignaturesInformation.self, using: Configuration.contentConfiguration.requireDecoder(for: AccountSignaturesInformation.defaultContentType)), raw: response)
            }
        }
    }

    /**

     PUT /v2.1/accounts/{accountId}/signatures

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter accountSignaturesInformation: (body)  (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func accountSignaturesPutAccountSignatureRaw(accountId: String, accountSignaturesInformation: AccountSignaturesInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/signatures"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.PUT, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = accountSignaturesInformation {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }
    }

    public enum AccountSignaturesPutAccountSignature {
        case http200(value: AccountSignaturesInformation, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: AccountSignaturesInformation, raw: ClientResponse)
    }

    /**

     PUT /v2.1/accounts/{accountId}/signatures

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter accountSignaturesInformation: (body)  (optional)
     - returns: `EventLoopFuture` of `AccountSignaturesPutAccountSignature`
     */
    open class func accountSignaturesPutAccountSignature(accountId: String, accountSignaturesInformation: AccountSignaturesInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<AccountSignaturesPutAccountSignature> {
        return accountSignaturesPutAccountSignatureRaw(accountId: accountId, accountSignaturesInformation: accountSignaturesInformation, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> AccountSignaturesPutAccountSignature in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(AccountSignaturesInformation.self, using: Configuration.contentConfiguration.requireDecoder(for: AccountSignaturesInformation.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(AccountSignaturesInformation.self, using: Configuration.contentConfiguration.requireDecoder(for: AccountSignaturesInformation.defaultContentType)), raw: response)
            }
        }
    }

    /**

     PUT /v2.1/accounts/{accountId}/signatures/{signatureId}

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter signatureId: (path) The ID of the signature being accessed.
     - parameter closeExistingSignature: (query) When set to **true**, closes the current signature. (optional)
     - parameter accountSignatureDefinition: (body)  (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func accountSignaturesPutAccountSignatureByIdRaw(accountId: String, signatureId: String, closeExistingSignature: String? = nil, accountSignatureDefinition: AccountSignatureDefinition? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/signatures/{signatureId}"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let signatureIdPreEscape = String(describing: signatureId)
        let signatureIdPostEscape = signatureIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{signatureId}", with: signatureIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.PUT, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            struct QueryParams: Content {
                var closeExistingSignature: String?
            }
            try request.query.encode(QueryParams(closeExistingSignature: closeExistingSignature))
            if let body = accountSignatureDefinition {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }
    }

    public enum AccountSignaturesPutAccountSignatureById {
        case http200(value: AccountSignature, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: AccountSignature, raw: ClientResponse)
    }

    /**

     PUT /v2.1/accounts/{accountId}/signatures/{signatureId}

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter signatureId: (path) The ID of the signature being accessed.
     - parameter closeExistingSignature: (query) When set to **true**, closes the current signature. (optional)
     - parameter accountSignatureDefinition: (body)  (optional)
     - returns: `EventLoopFuture` of `AccountSignaturesPutAccountSignatureById`
     */
    open class func accountSignaturesPutAccountSignatureById(accountId: String, signatureId: String, closeExistingSignature: String? = nil, accountSignatureDefinition: AccountSignatureDefinition? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<AccountSignaturesPutAccountSignatureById> {
        return accountSignaturesPutAccountSignatureByIdRaw(accountId: accountId, signatureId: signatureId, closeExistingSignature: closeExistingSignature, accountSignatureDefinition: accountSignatureDefinition, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> AccountSignaturesPutAccountSignatureById in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(AccountSignature.self, using: Configuration.contentConfiguration.requireDecoder(for: AccountSignature.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(AccountSignature.self, using: Configuration.contentConfiguration.requireDecoder(for: AccountSignature.defaultContentType)), raw: response)
            }
        }
    }

    /**

     PUT /v2.1/accounts/{accountId}/signatures/{signatureId}/{imageType}

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter imageType: (path) Specificies the type of image. Valid values are:  - `signature_image` - `initials_image`
     - parameter signatureId: (path) The ID of the signature being accessed.
     - parameter transparentPng: (query)  (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func accountSignaturesPutAccountSignatureImageRaw(accountId: String, imageType: String, signatureId: String, transparentPng: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/signatures/{signatureId}/{imageType}"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let imageTypePreEscape = String(describing: imageType)
        let imageTypePostEscape = imageTypePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{imageType}", with: imageTypePostEscape, options: .literal, range: nil)
        let signatureIdPreEscape = String(describing: signatureId)
        let signatureIdPostEscape = signatureIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{signatureId}", with: signatureIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.PUT, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            struct QueryParams: Content {
                var transparentPng: String?
            }
            try request.query.encode(QueryParams(transparentPng: transparentPng))

            try beforeSend(&request)
        }
    }

    public enum AccountSignaturesPutAccountSignatureImage {
        case http200(value: AccountSignature, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: AccountSignature, raw: ClientResponse)
    }

    /**

     PUT /v2.1/accounts/{accountId}/signatures/{signatureId}/{imageType}

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter imageType: (path) Specificies the type of image. Valid values are:  - `signature_image` - `initials_image`
     - parameter signatureId: (path) The ID of the signature being accessed.
     - parameter transparentPng: (query)  (optional)
     - returns: `EventLoopFuture` of `AccountSignaturesPutAccountSignatureImage`
     */
    open class func accountSignaturesPutAccountSignatureImage(accountId: String, imageType: String, signatureId: String, transparentPng: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<AccountSignaturesPutAccountSignatureImage> {
        return accountSignaturesPutAccountSignatureImageRaw(accountId: accountId, imageType: imageType, signatureId: signatureId, transparentPng: transparentPng, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> AccountSignaturesPutAccountSignatureImage in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(AccountSignature.self, using: Configuration.contentConfiguration.requireDecoder(for: AccountSignature.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(AccountSignature.self, using: Configuration.contentConfiguration.requireDecoder(for: AccountSignature.defaultContentType)), raw: response)
            }
        }
    }
}
