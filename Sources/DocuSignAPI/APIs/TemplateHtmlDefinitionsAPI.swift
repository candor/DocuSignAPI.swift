//
// TemplateHtmlDefinitionsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

open class TemplateHtmlDefinitionsAPI {
    public enum ResponsiveHtmlGetTemplateHtmlDefinitions {
        case http200(value: DocumentHtmlDefinitionOriginals?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: DocumentHtmlDefinitionOriginals?, raw: ClientResponse)
    }

    /**

     GET /v2.1/accounts/{accountId}/templates/{templateId}/html_definitions

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter templateId: (path) The id of the template.
     - returns: `EventLoopFuture` of `ResponsiveHtmlGetTemplateHtmlDefinitions`
     */
    open class func responsiveHtmlGetTemplateHtmlDefinitions(accountId: String, templateId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ResponsiveHtmlGetTemplateHtmlDefinitions> {
        var path = "/v2.1/accounts/{accountId}/templates/{templateId}/html_definitions"
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

        return apiClient.send(.GET, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            try beforeSend(&request)
        }.flatMapThrowing { response -> ResponsiveHtmlGetTemplateHtmlDefinitions in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(DocumentHtmlDefinitionOriginals.self, using: Configuration.contentConfiguration.requireDecoder(for: DocumentHtmlDefinitionOriginals.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try? response.content.decode(DocumentHtmlDefinitionOriginals.self, using: Configuration.contentConfiguration.requireDecoder(for: DocumentHtmlDefinitionOriginals.defaultContentType)), raw: response)
            }
        }
    }
}