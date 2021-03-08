//
// WorkspacesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

open class WorkspacesAPI {
    public enum WorkspaceDeleteWorkspace {
        case http200(value: Workspace?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: Workspace?, raw: ClientResponse)
    }

    /**
     Delete Workspace

     DELETE /v2.1/accounts/{accountId}/workspaces/{workspaceId}

     Deletes an existing workspace (logically).

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter workspaceId: (path) The id of the workspace.
     - returns: `EventLoopFuture` of `WorkspaceDeleteWorkspace`
     */
    open class func workspaceDeleteWorkspace(accountId: String, workspaceId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<WorkspaceDeleteWorkspace> {
        var path = "/v2.1/accounts/{accountId}/workspaces/{workspaceId}"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let workspaceIdPreEscape = String(describing: workspaceId)
        let workspaceIdPostEscape = workspaceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{workspaceId}", with: workspaceIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.DELETE, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            try beforeSend(&request)
        }.flatMapThrowing { response -> WorkspaceDeleteWorkspace in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(Workspace.self), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(Workspace.self), raw: response)
            }
        }
    }

    public enum WorkspaceGetWorkspace {
        case http200(value: Workspace?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: Workspace?, raw: ClientResponse)
    }

    /**
     Get Workspace

     GET /v2.1/accounts/{accountId}/workspaces/{workspaceId}

     Retrives properties about a workspace given a unique workspaceId.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter workspaceId: (path) The id of the workspace.
     - returns: `EventLoopFuture` of `WorkspaceGetWorkspace`
     */
    open class func workspaceGetWorkspace(accountId: String, workspaceId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<WorkspaceGetWorkspace> {
        var path = "/v2.1/accounts/{accountId}/workspaces/{workspaceId}"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let workspaceIdPreEscape = String(describing: workspaceId)
        let workspaceIdPostEscape = workspaceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{workspaceId}", with: workspaceIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.GET, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            try beforeSend(&request)
        }.flatMapThrowing { response -> WorkspaceGetWorkspace in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(Workspace.self), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(Workspace.self), raw: response)
            }
        }
    }

    public enum WorkspaceGetWorkspaces {
        case http200(value: WorkspaceList?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: WorkspaceList?, raw: ClientResponse)
    }

    /**
     List Workspaces

     GET /v2.1/accounts/{accountId}/workspaces

     Gets information about the Workspaces that have been created.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - returns: `EventLoopFuture` of `WorkspaceGetWorkspaces`
     */
    open class func workspaceGetWorkspaces(accountId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<WorkspaceGetWorkspaces> {
        var path = "/v2.1/accounts/{accountId}/workspaces"
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
        }.flatMapThrowing { response -> WorkspaceGetWorkspaces in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(WorkspaceList.self), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(WorkspaceList.self), raw: response)
            }
        }
    }

    public enum WorkspacePostWorkspace {
        case http201(value: Workspace?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: Workspace?, raw: ClientResponse)
    }

    /**
     Create a Workspace

     POST /v2.1/accounts/{accountId}/workspaces

     This method creates a new workspace.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter workspace: (body)  (optional)
     - returns: `EventLoopFuture` of `WorkspacePostWorkspace`
     */
    open class func workspacePostWorkspace(accountId: String, workspace: Workspace? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<WorkspacePostWorkspace> {
        var path = "/v2.1/accounts/{accountId}/workspaces"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.POST, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = workspace {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }.flatMapThrowing { response -> WorkspacePostWorkspace in
            switch response.status.code {
            case 201:
                return .http201(value: try? response.content.decode(Workspace.self), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(Workspace.self), raw: response)
            }
        }
    }

    public enum WorkspacePutWorkspace {
        case http200(value: Workspace?, raw: ClientResponse)
        case http400(value: ErrorDetails?, raw: ClientResponse)
        case http0(value: Workspace?, raw: ClientResponse)
    }

    /**
     Update Workspace

     PUT /v2.1/accounts/{accountId}/workspaces/{workspaceId}

     Updates information about a specific workspace.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter workspaceId: (path) The id of the workspace.
     - parameter workspace: (body)  (optional)
     - returns: `EventLoopFuture` of `WorkspacePutWorkspace`
     */
    open class func workspacePutWorkspace(accountId: String, workspaceId: String, workspace: Workspace? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<WorkspacePutWorkspace> {
        var path = "/v2.1/accounts/{accountId}/workspaces/{workspaceId}"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let workspaceIdPreEscape = String(describing: workspaceId)
        let workspaceIdPostEscape = workspaceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{workspaceId}", with: workspaceIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.PUT, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = workspace {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }.flatMapThrowing { response -> WorkspacePutWorkspace in
            switch response.status.code {
            case 200:
                return .http200(value: try? response.content.decode(Workspace.self), raw: response)
            case 400:
                return .http400(value: try? response.content.decode(ErrorDetails.self), raw: response)
            default:
                return .http0(value: try? response.content.decode(Workspace.self), raw: response)
            }
        }
    }
}