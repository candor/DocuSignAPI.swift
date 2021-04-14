//
// ChunkedUploadsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

open class ChunkedUploadsAPI {
    /**
     Deletes a chunked upload.

     DELETE /v2.1/accounts/{accountId}/chunked_uploads/{chunkedUploadId}

     Deletes a chunked upload that has been committed but not yet consumed.  This method cannot be used to delete the following types of chunked uploads, which the system deletes automatically:   - Chunked uploads that have been consumed by use in another API call. - Expired chunked uploads.  **Note**: If you are aware of a chunked upload that can be discarded, the best practice is to explicitly delete it. If you wait for the system to automatically delete it after it expires, the chunked upload will continue to count against your quota.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter chunkedUploadId: (path) The id of the chunked upload.
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func chunkedUploadsDeleteChunkedUploadRaw(accountId: String, chunkedUploadId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/chunked_uploads/{chunkedUploadId}"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let chunkedUploadIdPreEscape = String(describing: chunkedUploadId)
        let chunkedUploadIdPostEscape = chunkedUploadIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{chunkedUploadId}", with: chunkedUploadIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.DELETE, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            try beforeSend(&request)
        }
    }

    public enum ChunkedUploadsDeleteChunkedUpload {
        case http200(value: ChunkedUploadResponse, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: ChunkedUploadResponse, raw: ClientResponse)
    }

    /**
     Deletes a chunked upload.

     DELETE /v2.1/accounts/{accountId}/chunked_uploads/{chunkedUploadId}

     Deletes a chunked upload that has been committed but not yet consumed.  This method cannot be used to delete the following types of chunked uploads, which the system deletes automatically:   - Chunked uploads that have been consumed by use in another API call. - Expired chunked uploads.  **Note**: If you are aware of a chunked upload that can be discarded, the best practice is to explicitly delete it. If you wait for the system to automatically delete it after it expires, the chunked upload will continue to count against your quota.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter chunkedUploadId: (path) The id of the chunked upload.
     - returns: `EventLoopFuture` of `ChunkedUploadsDeleteChunkedUpload`
     */
    open class func chunkedUploadsDeleteChunkedUpload(accountId: String, chunkedUploadId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ChunkedUploadsDeleteChunkedUpload> {
        return chunkedUploadsDeleteChunkedUploadRaw(accountId: accountId, chunkedUploadId: chunkedUploadId, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> ChunkedUploadsDeleteChunkedUpload in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(ChunkedUploadResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: ChunkedUploadResponse.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(ChunkedUploadResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: ChunkedUploadResponse.defaultContentType)), raw: response)
            }
        }
    }

    /**
     Retrieves metadata about a chunked upload.

     GET /v2.1/accounts/{accountId}/chunked_uploads/{chunkedUploadId}

     Returns the details (but not the content) about a chunked upload.  **Note**: You cannot obtain details about a chunked upload that has expired, been deleted, or consumed by other actions.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter chunkedUploadId: (path) The id of the chunked upload.
     - parameter include: (query) (Optional) This parameter enables you to include additional attribute data in the response. The valid value for this method is `checksum`, which returns an SHA256 checksum of the content of the chunked upload in the response. You can use compare this checksum against your own checksum of the original content to verify that there are no missing parts before you attempt to commit the chunked upload. (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func chunkedUploadsGetChunkedUploadRaw(accountId: String, chunkedUploadId: String, include: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/chunked_uploads/{chunkedUploadId}"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let chunkedUploadIdPreEscape = String(describing: chunkedUploadId)
        let chunkedUploadIdPostEscape = chunkedUploadIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{chunkedUploadId}", with: chunkedUploadIdPostEscape, options: .literal, range: nil)
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
        }
    }

    public enum ChunkedUploadsGetChunkedUpload {
        case http200(value: ChunkedUploadResponse, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: ChunkedUploadResponse, raw: ClientResponse)
    }

    /**
     Retrieves metadata about a chunked upload.

     GET /v2.1/accounts/{accountId}/chunked_uploads/{chunkedUploadId}

     Returns the details (but not the content) about a chunked upload.  **Note**: You cannot obtain details about a chunked upload that has expired, been deleted, or consumed by other actions.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter chunkedUploadId: (path) The id of the chunked upload.
     - parameter include: (query) (Optional) This parameter enables you to include additional attribute data in the response. The valid value for this method is `checksum`, which returns an SHA256 checksum of the content of the chunked upload in the response. You can use compare this checksum against your own checksum of the original content to verify that there are no missing parts before you attempt to commit the chunked upload. (optional)
     - returns: `EventLoopFuture` of `ChunkedUploadsGetChunkedUpload`
     */
    open class func chunkedUploadsGetChunkedUpload(accountId: String, chunkedUploadId: String, include: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ChunkedUploadsGetChunkedUpload> {
        return chunkedUploadsGetChunkedUploadRaw(accountId: accountId, chunkedUploadId: chunkedUploadId, include: include, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> ChunkedUploadsGetChunkedUpload in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(ChunkedUploadResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: ChunkedUploadResponse.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(ChunkedUploadResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: ChunkedUploadResponse.defaultContentType)), raw: response)
            }
        }
    }

    /**
     Initiate a new chunked upload.

     POST /v2.1/accounts/{accountId}/chunked_uploads

     This method initiates a new chunked upload with the first part of the content.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter chunkedUploadRequest: (body)  (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func chunkedUploadsPostChunkedUploadsRaw(accountId: String, chunkedUploadRequest: ChunkedUploadRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/chunked_uploads"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.POST, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = chunkedUploadRequest {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }
    }

    public enum ChunkedUploadsPostChunkedUploads {
        case http201(value: ChunkedUploadResponse, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: ChunkedUploadResponse, raw: ClientResponse)
    }

    /**
     Initiate a new chunked upload.

     POST /v2.1/accounts/{accountId}/chunked_uploads

     This method initiates a new chunked upload with the first part of the content.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter chunkedUploadRequest: (body)  (optional)
     - returns: `EventLoopFuture` of `ChunkedUploadsPostChunkedUploads`
     */
    open class func chunkedUploadsPostChunkedUploads(accountId: String, chunkedUploadRequest: ChunkedUploadRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ChunkedUploadsPostChunkedUploads> {
        return chunkedUploadsPostChunkedUploadsRaw(accountId: accountId, chunkedUploadRequest: chunkedUploadRequest, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> ChunkedUploadsPostChunkedUploads in
            switch response.status.code {
            case 201:
                return .http201(value: try response.content.decode(ChunkedUploadResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: ChunkedUploadResponse.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(ChunkedUploadResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: ChunkedUploadResponse.defaultContentType)), raw: response)
            }
        }
    }

    /**
     Add a chunk to an existing chunked upload.

     PUT /v2.1/accounts/{accountId}/chunked_uploads/{chunkedUploadId}/{chunkedUploadPartSeq}

     Adds a chunk or part to an existing chunked upload. After you use the Create method to initiate a new chunked upload and upload the first part,  use this method to upload subsequent parts.  For simplicity, we recommend that you upload the parts in their sequential order ( 1,2, 3, 4, etc.). The Create method adds the first part and assigns it the `sequence` value `0`. As a result, we recommend that you start with a `sequence` value of `1` when you use this method, and continue uploading parts contiguously until you have uploaded the entirety of the original content to DocuSign.  Example:   ``` PUT /v2.1/accounts/{accountId}/chunked_uploads/{chunkedUploadId}/1 PUT /v2.1/accounts/{accountId}/chunked_uploads/{chunkedUploadId}/2 PUT /v2.1/accounts/{accountId}/chunked_uploads/{chunkedUploadId}/3 ```  **Note**: You cannot replace a part that DocuSign has already received, or add parts to a chunked upload that is already successfully committed.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter chunkedUploadId: (path) The id of the chunked upload.
     - parameter chunkedUploadPartSeq: (path) The sequence or order of the part in the chunked upload. By default, the sequence of the first part that is uploaded as part of the Create request is `0`.  **Note**: You can add parts out of order. However, the chunked upload must consist of a contiguous series of one or more parts before you can successfully commit it.
     - parameter chunkedUploadRequest: (body)  (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func chunkedUploadsPutChunkedUploadPartRaw(accountId: String, chunkedUploadId: String, chunkedUploadPartSeq: String, chunkedUploadRequest: ChunkedUploadRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/chunked_uploads/{chunkedUploadId}/{chunkedUploadPartSeq}"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let chunkedUploadIdPreEscape = String(describing: chunkedUploadId)
        let chunkedUploadIdPostEscape = chunkedUploadIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{chunkedUploadId}", with: chunkedUploadIdPostEscape, options: .literal, range: nil)
        let chunkedUploadPartSeqPreEscape = String(describing: chunkedUploadPartSeq)
        let chunkedUploadPartSeqPostEscape = chunkedUploadPartSeqPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{chunkedUploadPartSeq}", with: chunkedUploadPartSeqPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.PUT, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = chunkedUploadRequest {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }
    }

    public enum ChunkedUploadsPutChunkedUploadPart {
        case http200(value: ChunkedUploadResponse, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: ChunkedUploadResponse, raw: ClientResponse)
    }

    /**
     Add a chunk to an existing chunked upload.

     PUT /v2.1/accounts/{accountId}/chunked_uploads/{chunkedUploadId}/{chunkedUploadPartSeq}

     Adds a chunk or part to an existing chunked upload. After you use the Create method to initiate a new chunked upload and upload the first part,  use this method to upload subsequent parts.  For simplicity, we recommend that you upload the parts in their sequential order ( 1,2, 3, 4, etc.). The Create method adds the first part and assigns it the `sequence` value `0`. As a result, we recommend that you start with a `sequence` value of `1` when you use this method, and continue uploading parts contiguously until you have uploaded the entirety of the original content to DocuSign.  Example:   ``` PUT /v2.1/accounts/{accountId}/chunked_uploads/{chunkedUploadId}/1 PUT /v2.1/accounts/{accountId}/chunked_uploads/{chunkedUploadId}/2 PUT /v2.1/accounts/{accountId}/chunked_uploads/{chunkedUploadId}/3 ```  **Note**: You cannot replace a part that DocuSign has already received, or add parts to a chunked upload that is already successfully committed.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter chunkedUploadId: (path) The id of the chunked upload.
     - parameter chunkedUploadPartSeq: (path) The sequence or order of the part in the chunked upload. By default, the sequence of the first part that is uploaded as part of the Create request is `0`.  **Note**: You can add parts out of order. However, the chunked upload must consist of a contiguous series of one or more parts before you can successfully commit it.
     - parameter chunkedUploadRequest: (body)  (optional)
     - returns: `EventLoopFuture` of `ChunkedUploadsPutChunkedUploadPart`
     */
    open class func chunkedUploadsPutChunkedUploadPart(accountId: String, chunkedUploadId: String, chunkedUploadPartSeq: String, chunkedUploadRequest: ChunkedUploadRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ChunkedUploadsPutChunkedUploadPart> {
        return chunkedUploadsPutChunkedUploadPartRaw(accountId: accountId, chunkedUploadId: chunkedUploadId, chunkedUploadPartSeq: chunkedUploadPartSeq, chunkedUploadRequest: chunkedUploadRequest, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> ChunkedUploadsPutChunkedUploadPart in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(ChunkedUploadResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: ChunkedUploadResponse.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(ChunkedUploadResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: ChunkedUploadResponse.defaultContentType)), raw: response)
            }
        }
    }

    /**
     Commit a chunked upload.

     PUT /v2.1/accounts/{accountId}/chunked_uploads/{chunkedUploadId}

     This method checks the integrity of a chunked upload and then commits it. When this request is successful, the chunked upload is then ready to be referenced in other API calls.  If the request is unsuccessful, ensure that you have uploaded all of the parts by using the Update method.  **Note**: After you commit a chunked upload, it no longer accepts additional parts.

     - parameter accountId: (path) (Required) The external account number (int) or account ID GUID.
     - parameter chunkedUploadId: (path) (Required) The id of the chunked upload to commit.
     - parameter action: (query) (Required) You must use this query parameter with the value `commit`, which affirms the request to validate and prepare the chunked upload for use with other API calls. (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func chunkedUploadsPutChunkedUploadsRaw(accountId: String, chunkedUploadId: String, action: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/chunked_uploads/{chunkedUploadId}"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let chunkedUploadIdPreEscape = String(describing: chunkedUploadId)
        let chunkedUploadIdPostEscape = chunkedUploadIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{chunkedUploadId}", with: chunkedUploadIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.PUT, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            struct QueryParams: Content {
                var action: String?
            }
            try request.query.encode(QueryParams(action: action))

            try beforeSend(&request)
        }
    }

    public enum ChunkedUploadsPutChunkedUploads {
        case http200(value: ChunkedUploadResponse, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: ChunkedUploadResponse, raw: ClientResponse)
    }

    /**
     Commit a chunked upload.

     PUT /v2.1/accounts/{accountId}/chunked_uploads/{chunkedUploadId}

     This method checks the integrity of a chunked upload and then commits it. When this request is successful, the chunked upload is then ready to be referenced in other API calls.  If the request is unsuccessful, ensure that you have uploaded all of the parts by using the Update method.  **Note**: After you commit a chunked upload, it no longer accepts additional parts.

     - parameter accountId: (path) (Required) The external account number (int) or account ID GUID.
     - parameter chunkedUploadId: (path) (Required) The id of the chunked upload to commit.
     - parameter action: (query) (Required) You must use this query parameter with the value `commit`, which affirms the request to validate and prepare the chunked upload for use with other API calls. (optional)
     - returns: `EventLoopFuture` of `ChunkedUploadsPutChunkedUploads`
     */
    open class func chunkedUploadsPutChunkedUploads(accountId: String, chunkedUploadId: String, action: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ChunkedUploadsPutChunkedUploads> {
        return chunkedUploadsPutChunkedUploadsRaw(accountId: accountId, chunkedUploadId: chunkedUploadId, action: action, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> ChunkedUploadsPutChunkedUploads in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(ChunkedUploadResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: ChunkedUploadResponse.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(ChunkedUploadResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: ChunkedUploadResponse.defaultContentType)), raw: response)
            }
        }
    }
}
