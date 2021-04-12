//
// RequestLogsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

open class RequestLogsAPI {
    public enum APIRequestLogDeleteRequestLogs {
        case http200(value: Void?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: Void?, raw: ClientResponse)
    }

    /**
     Deletes the request log files.

     DELETE /v2.1/diagnostics/request_logs

     Deletes the request log files.

     - returns: `EventLoopFuture` of `APIRequestLogDeleteRequestLogs`
     */
    open class func aPIRequestLogDeleteRequestLogs(headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<APIRequestLogDeleteRequestLogs> {
        let path = "/v2.1/diagnostics/request_logs"
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.DELETE, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            try beforeSend(&request)
        }.flatMapThrowing { response -> APIRequestLogDeleteRequestLogs in
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

    public enum APIRequestLogGetRequestLog {
        case http200(value: Data?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: Data?, raw: ClientResponse)
    }

    /**
     Gets a request logging log file.

     GET /v2.1/diagnostics/request_logs/{requestLogId}

     Retrieves information for a single log entry.  **Request** The `requestLogfId` property can be retrieved by getting the list of log entries. The Content-Transfer-Encoding header can be set to base64 to retrieve the API request/response as base 64 string. Otherwise the bytes of the request/response are returned.  **Response** If the Content-Transfer-Encoding header was set to base64, the log is returned as a base64 string.

     - parameter requestLogId: (path)
     - returns: `EventLoopFuture` of `APIRequestLogGetRequestLog`
     */
    open class func aPIRequestLogGetRequestLog(requestLogId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<APIRequestLogGetRequestLog> {
        var path = "/v2.1/diagnostics/request_logs/{requestLogId}"
        let requestLogIdPreEscape = String(describing: requestLogId)
        let requestLogIdPostEscape = requestLogIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{requestLogId}", with: requestLogIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.GET, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            try beforeSend(&request)
        }.flatMapThrowing { response -> APIRequestLogGetRequestLog in
            switch response.status.code {
            case 200:
                return .http200(value: Data(buffer: response.body ?? ByteBuffer()), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try? response.content.decode(Data.self, using: Configuration.contentConfiguration.requireDecoder(for: Data.defaultContentType)), raw: response)
            }
        }
    }

    public enum APIRequestLogGetRequestLogSettings {
        case http200(value: DiagnosticsSettingsInformation?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: DiagnosticsSettingsInformation?, raw: ClientResponse)
    }

    /**
     Gets the API request logging settings.

     GET /v2.1/diagnostics/settings

     Retrieves the current API request logging setting for the user and remaining log entries.  **Response** The response includes the current API request logging setting for the user, along with the maximum log entries and remaining log entries.

     - returns: `EventLoopFuture` of `APIRequestLogGetRequestLogSettings`
     */
    open class func aPIRequestLogGetRequestLogSettings(headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<APIRequestLogGetRequestLogSettings> {
        let path = "/v2.1/diagnostics/settings"
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.GET, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            try beforeSend(&request)
        }.flatMapThrowing { response -> APIRequestLogGetRequestLogSettings in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(DiagnosticsSettingsInformation.self, using: Configuration.contentConfiguration.requireDecoder(for: DiagnosticsSettingsInformation.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try? response.content.decode(DiagnosticsSettingsInformation.self, using: Configuration.contentConfiguration.requireDecoder(for: DiagnosticsSettingsInformation.defaultContentType)), raw: response)
            }
        }
    }

    public enum APIRequestLogGetRequestLogs {
        case http200(value: ApiRequestLogsResult?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: ApiRequestLogsResult?, raw: ClientResponse)
    }

    /**
     Gets the API request logging log files.

     GET /v2.1/diagnostics/request_logs

     Retrieves a list of log entries as a JSON or xml object or as a zip file containing the entries.  If the Accept header is set to application/zip, the response is a zip file containing individual text files, each representing an API request.  If the Accept header is set to `application/json` or `application/xml`, the response returns list of log entries in either JSON or XML. An example JSON response body is shown below.

     - parameter encoding: (query) Reserved for DocuSign. (optional)
     - returns: `EventLoopFuture` of `APIRequestLogGetRequestLogs`
     */
    open class func aPIRequestLogGetRequestLogs(encoding: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<APIRequestLogGetRequestLogs> {
        let path = "/v2.1/diagnostics/request_logs"
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.GET, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            struct QueryParams: Content {
                var encoding: String?
            }
            try request.query.encode(QueryParams(encoding: encoding))

            try beforeSend(&request)
        }.flatMapThrowing { response -> APIRequestLogGetRequestLogs in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(ApiRequestLogsResult.self, using: Configuration.contentConfiguration.requireDecoder(for: ApiRequestLogsResult.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try? response.content.decode(ApiRequestLogsResult.self, using: Configuration.contentConfiguration.requireDecoder(for: ApiRequestLogsResult.defaultContentType)), raw: response)
            }
        }
    }

    public enum APIRequestLogPutRequestLogSettings {
        case http200(value: DiagnosticsSettingsInformation?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: DiagnosticsSettingsInformation?, raw: ClientResponse)
    }

    /**
     Enables or disables API request logging for troubleshooting.

     PUT /v2.1/diagnostics/settings

     Enables or disables API request logging for troubleshooting.  When enabled (`apiRequestLogging` is **true**), REST API requests and responses for the user are added to a log. A log can have up to 50 requests/responses and the current number of log entries can be determined by getting the settings. Logging is automatically disabled when the log limit of 50 is reached.  You can call [Diagnostics::getRequestLog ](https://developers.docusign.com/esign-rest-api/reference/Diagnostics/RequestLogs/get) or [Diagnostics::listRequestLogs](https://developers.docusign.com/esign-rest-api/reference/Diagnostics/RequestLogs/list) to download the log files (individually or as a zip file). Call [Diagnostics::deleteRequestLogs ](https://developers.docusign.com/esign-rest-api/reference/Diagnostics/RequestLogs/delete) to clear the log by deleting current entries.  Private information, such as passwords and integrator key information, which is normally located in the call header is omitted from the request/response log.  API request logging only captures requests from the authenticated user. Any call that does not authenticate the user and resolve a userId is not logged.

     - parameter diagnosticsSettingsInformation: (body)  (optional)
     - returns: `EventLoopFuture` of `APIRequestLogPutRequestLogSettings`
     */
    open class func aPIRequestLogPutRequestLogSettings(diagnosticsSettingsInformation: DiagnosticsSettingsInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<APIRequestLogPutRequestLogSettings> {
        let path = "/v2.1/diagnostics/settings"
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.PUT, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = diagnosticsSettingsInformation {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }.flatMapThrowing { response -> APIRequestLogPutRequestLogSettings in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(DiagnosticsSettingsInformation.self, using: Configuration.contentConfiguration.requireDecoder(for: DiagnosticsSettingsInformation.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try? response.content.decode(DiagnosticsSettingsInformation.self, using: Configuration.contentConfiguration.requireDecoder(for: DiagnosticsSettingsInformation.defaultContentType)), raw: response)
            }
        }
    }
}