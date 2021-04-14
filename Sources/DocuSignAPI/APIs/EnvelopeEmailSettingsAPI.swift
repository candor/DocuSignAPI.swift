//
// EnvelopeEmailSettingsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

open class EnvelopeEmailSettingsAPI {
    /**
     Deletes the email setting overrides for an envelope.

     DELETE /v2.1/accounts/{accountId}/envelopes/{envelopeId}/email_settings

     Deletes all existing email override settings for the envelope. If you want to delete an individual email override setting, use the PUT and set the value to an empty string. Note that deleting email settings will only affect email communications that occur after the deletion and the normal account email settings are used for future email communications.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter envelopeId: (path) The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec`
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func emailSettingsDeleteEmailSettingsRaw(accountId: String, envelopeId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/envelopes/{envelopeId}/email_settings"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let envelopeIdPreEscape = String(describing: envelopeId)
        let envelopeIdPostEscape = envelopeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{envelopeId}", with: envelopeIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.DELETE, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            try beforeSend(&request)
        }
    }

    public enum EmailSettingsDeleteEmailSettings {
        case http200(value: EmailSettings, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: EmailSettings, raw: ClientResponse)
    }

    /**
     Deletes the email setting overrides for an envelope.

     DELETE /v2.1/accounts/{accountId}/envelopes/{envelopeId}/email_settings

     Deletes all existing email override settings for the envelope. If you want to delete an individual email override setting, use the PUT and set the value to an empty string. Note that deleting email settings will only affect email communications that occur after the deletion and the normal account email settings are used for future email communications.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter envelopeId: (path) The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec`
     - returns: `EventLoopFuture` of `EmailSettingsDeleteEmailSettings`
     */
    open class func emailSettingsDeleteEmailSettings(accountId: String, envelopeId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<EmailSettingsDeleteEmailSettings> {
        return emailSettingsDeleteEmailSettingsRaw(accountId: accountId, envelopeId: envelopeId, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> EmailSettingsDeleteEmailSettings in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(EmailSettings.self, using: Configuration.contentConfiguration.requireDecoder(for: EmailSettings.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(EmailSettings.self, using: Configuration.contentConfiguration.requireDecoder(for: EmailSettings.defaultContentType)), raw: response)
            }
        }
    }

    /**
     Gets the email setting overrides for an envelope.

     GET /v2.1/accounts/{accountId}/envelopes/{envelopeId}/email_settings

     Retrieves the email override settings for the specified envelope.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter envelopeId: (path) The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec`
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func emailSettingsGetEmailSettingsRaw(accountId: String, envelopeId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/envelopes/{envelopeId}/email_settings"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let envelopeIdPreEscape = String(describing: envelopeId)
        let envelopeIdPostEscape = envelopeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{envelopeId}", with: envelopeIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.GET, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            try beforeSend(&request)
        }
    }

    public enum EmailSettingsGetEmailSettings {
        case http200(value: EmailSettings, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: EmailSettings, raw: ClientResponse)
    }

    /**
     Gets the email setting overrides for an envelope.

     GET /v2.1/accounts/{accountId}/envelopes/{envelopeId}/email_settings

     Retrieves the email override settings for the specified envelope.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter envelopeId: (path) The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec`
     - returns: `EventLoopFuture` of `EmailSettingsGetEmailSettings`
     */
    open class func emailSettingsGetEmailSettings(accountId: String, envelopeId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<EmailSettingsGetEmailSettings> {
        return emailSettingsGetEmailSettingsRaw(accountId: accountId, envelopeId: envelopeId, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> EmailSettingsGetEmailSettings in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(EmailSettings.self, using: Configuration.contentConfiguration.requireDecoder(for: EmailSettings.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(EmailSettings.self, using: Configuration.contentConfiguration.requireDecoder(for: EmailSettings.defaultContentType)), raw: response)
            }
        }
    }

    /**
     Adds email setting overrides to an envelope.

     POST /v2.1/accounts/{accountId}/envelopes/{envelopeId}/email_settings

     Adds email override settings, changing the email address to reply to an email address, name, or the BCC for email archive information, for the envelope. Note that adding email settings will only affect email communications that occur after the addition was made.  ### Important: The BCC Email address feature is designed to provide a copy of all email communications for external archiving purposes. DocuSign recommends that envelopes sent using the BCC for Email Archive feature, including the BCC Email Override option, include additional signer authentication options. To send a copy of the envelope to a recipient who does not need to sign, use a Carbon Copy or Certified Delivery recipient type.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter envelopeId: (path) The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec`
     - parameter emailSettings: (body) A complex type that contains email settings. (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func emailSettingsPostEmailSettingsRaw(accountId: String, envelopeId: String, emailSettings: EmailSettings? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/envelopes/{envelopeId}/email_settings"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let envelopeIdPreEscape = String(describing: envelopeId)
        let envelopeIdPostEscape = envelopeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{envelopeId}", with: envelopeIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.POST, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = emailSettings {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }
    }

    public enum EmailSettingsPostEmailSettings {
        case http201(value: EmailSettings, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: EmailSettings, raw: ClientResponse)
    }

    /**
     Adds email setting overrides to an envelope.

     POST /v2.1/accounts/{accountId}/envelopes/{envelopeId}/email_settings

     Adds email override settings, changing the email address to reply to an email address, name, or the BCC for email archive information, for the envelope. Note that adding email settings will only affect email communications that occur after the addition was made.  ### Important: The BCC Email address feature is designed to provide a copy of all email communications for external archiving purposes. DocuSign recommends that envelopes sent using the BCC for Email Archive feature, including the BCC Email Override option, include additional signer authentication options. To send a copy of the envelope to a recipient who does not need to sign, use a Carbon Copy or Certified Delivery recipient type.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter envelopeId: (path) The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec`
     - parameter emailSettings: (body) A complex type that contains email settings. (optional)
     - returns: `EventLoopFuture` of `EmailSettingsPostEmailSettings`
     */
    open class func emailSettingsPostEmailSettings(accountId: String, envelopeId: String, emailSettings: EmailSettings? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<EmailSettingsPostEmailSettings> {
        return emailSettingsPostEmailSettingsRaw(accountId: accountId, envelopeId: envelopeId, emailSettings: emailSettings, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> EmailSettingsPostEmailSettings in
            switch response.status.code {
            case 201:
                return .http201(value: try response.content.decode(EmailSettings.self, using: Configuration.contentConfiguration.requireDecoder(for: EmailSettings.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(EmailSettings.self, using: Configuration.contentConfiguration.requireDecoder(for: EmailSettings.defaultContentType)), raw: response)
            }
        }
    }

    /**
     Updates the email setting overrides for an envelope.

     PUT /v2.1/accounts/{accountId}/envelopes/{envelopeId}/email_settings

     Updates the existing email override settings for the specified envelope. Note that modifying email settings will only affect email communications that occur after the modification was made.  This can also be used to delete an individual email override setting by using an empty string for the value to be deleted.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter envelopeId: (path) The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec`
     - parameter emailSettings: (body) A complex type that contains email settings. (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func emailSettingsPutEmailSettingsRaw(accountId: String, envelopeId: String, emailSettings: EmailSettings? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/envelopes/{envelopeId}/email_settings"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let envelopeIdPreEscape = String(describing: envelopeId)
        let envelopeIdPostEscape = envelopeIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{envelopeId}", with: envelopeIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.PUT, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = emailSettings {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }
    }

    public enum EmailSettingsPutEmailSettings {
        case http200(value: EmailSettings, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: EmailSettings, raw: ClientResponse)
    }

    /**
     Updates the email setting overrides for an envelope.

     PUT /v2.1/accounts/{accountId}/envelopes/{envelopeId}/email_settings

     Updates the existing email override settings for the specified envelope. Note that modifying email settings will only affect email communications that occur after the modification was made.  This can also be used to delete an individual email override setting by using an empty string for the value to be deleted.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter envelopeId: (path) The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec`
     - parameter emailSettings: (body) A complex type that contains email settings. (optional)
     - returns: `EventLoopFuture` of `EmailSettingsPutEmailSettings`
     */
    open class func emailSettingsPutEmailSettings(accountId: String, envelopeId: String, emailSettings: EmailSettings? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<EmailSettingsPutEmailSettings> {
        return emailSettingsPutEmailSettingsRaw(accountId: accountId, envelopeId: envelopeId, emailSettings: emailSettings, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> EmailSettingsPutEmailSettings in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(EmailSettings.self, using: Configuration.contentConfiguration.requireDecoder(for: EmailSettings.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(EmailSettings.self, using: Configuration.contentConfiguration.requireDecoder(for: EmailSettings.defaultContentType)), raw: response)
            }
        }
    }
}
