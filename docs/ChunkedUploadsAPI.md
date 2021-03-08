# ChunkedUploadsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**chunkedUploadsDeleteChunkedUpload**](ChunkedUploadsAPI.md#chunkeduploadsdeletechunkedupload) | **DELETE** /v2.1/accounts/{accountId}/chunked_uploads/{chunkedUploadId} | Deletes a chunked upload.
[**chunkedUploadsGetChunkedUpload**](ChunkedUploadsAPI.md#chunkeduploadsgetchunkedupload) | **GET** /v2.1/accounts/{accountId}/chunked_uploads/{chunkedUploadId} | Retrieves metadata about a chunked upload.
[**chunkedUploadsPostChunkedUploads**](ChunkedUploadsAPI.md#chunkeduploadspostchunkeduploads) | **POST** /v2.1/accounts/{accountId}/chunked_uploads | Initiate a new chunked upload.
[**chunkedUploadsPutChunkedUploadPart**](ChunkedUploadsAPI.md#chunkeduploadsputchunkeduploadpart) | **PUT** /v2.1/accounts/{accountId}/chunked_uploads/{chunkedUploadId}/{chunkedUploadPartSeq} | Add a chunk to an existing chunked upload.
[**chunkedUploadsPutChunkedUploads**](ChunkedUploadsAPI.md#chunkeduploadsputchunkeduploads) | **PUT** /v2.1/accounts/{accountId}/chunked_uploads/{chunkedUploadId} | Commit a chunked upload.


# **chunkedUploadsDeleteChunkedUpload**
```swift
    open class func chunkedUploadsDeleteChunkedUpload(accountId: String, chunkedUploadId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ChunkedUploadsDeleteChunkedUpload>
```

Deletes a chunked upload.

Deletes a chunked upload that has been committed but not yet consumed.  This method cannot be used to delete the following types of chunked uploads, which the system deletes automatically:   - Chunked uploads that have been consumed by use in another API call. - Expired chunked uploads.  **Note**: If you are aware of a chunked upload that can be discarded, the best practice is to explicitly delete it. If you wait for the system to automatically delete it after it expires, the chunked upload will continue to count against your quota.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let chunkedUploadId = "chunkedUploadId_example" // String | The id of the chunked upload. 

// Deletes a chunked upload.
ChunkedUploadsAPI.chunkedUploadsDeleteChunkedUpload(accountId: accountId, chunkedUploadId: chunkedUploadId).whenComplete { result in
    switch result {
    case .failure(let error):
    // process error
    case .success(let response):
        switch response {
        // process decoded response value or raw ClientResponse
        case .http200(let value, let raw):
        case .http400(let value, let raw):
        case .http0(let value, let raw):
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String** | The external account number (int) or account ID GUID. | 
 **chunkedUploadId** | **String** | The id of the chunked upload.  | 

### Return type

#### ChunkedUploadsDeleteChunkedUpload

```swift
public enum ChunkedUploadsDeleteChunkedUpload {
    case http200(value: ChunkedUploadResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ChunkedUploadResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chunkedUploadsGetChunkedUpload**
```swift
    open class func chunkedUploadsGetChunkedUpload(accountId: String, chunkedUploadId: String, include: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ChunkedUploadsGetChunkedUpload>
```

Retrieves metadata about a chunked upload.

Returns the details (but not the content) about a chunked upload.  **Note**: You cannot obtain details about a chunked upload that has expired, been deleted, or consumed by other actions.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let chunkedUploadId = "chunkedUploadId_example" // String | The id of the chunked upload. 
let include = "include_example" // String | (Optional) This parameter enables you to include additional attribute data in the response. The valid value for this method is `checksum`, which returns an SHA256 checksum of the content of the chunked upload in the response. You can use compare this checksum against your own checksum of the original content to verify that there are no missing parts before you attempt to commit the chunked upload. (optional)

// Retrieves metadata about a chunked upload.
ChunkedUploadsAPI.chunkedUploadsGetChunkedUpload(accountId: accountId, chunkedUploadId: chunkedUploadId, include: include).whenComplete { result in
    switch result {
    case .failure(let error):
    // process error
    case .success(let response):
        switch response {
        // process decoded response value or raw ClientResponse
        case .http200(let value, let raw):
        case .http400(let value, let raw):
        case .http0(let value, let raw):
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String** | The external account number (int) or account ID GUID. | 
 **chunkedUploadId** | **String** | The id of the chunked upload.  | 
 **include** | **String** | (Optional) This parameter enables you to include additional attribute data in the response. The valid value for this method is &#x60;checksum&#x60;, which returns an SHA256 checksum of the content of the chunked upload in the response. You can use compare this checksum against your own checksum of the original content to verify that there are no missing parts before you attempt to commit the chunked upload. | [optional] 

### Return type

#### ChunkedUploadsGetChunkedUpload

```swift
public enum ChunkedUploadsGetChunkedUpload {
    case http200(value: ChunkedUploadResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ChunkedUploadResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chunkedUploadsPostChunkedUploads**
```swift
    open class func chunkedUploadsPostChunkedUploads(accountId: String, chunkedUploadRequest: ChunkedUploadRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ChunkedUploadsPostChunkedUploads>
```

Initiate a new chunked upload.

This method initiates a new chunked upload with the first part of the content.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let chunkedUploadRequest = chunkedUploadRequest(chunkedUploadId: "chunkedUploadId_example", data: "data_example") // ChunkedUploadRequest |  (optional)

// Initiate a new chunked upload.
ChunkedUploadsAPI.chunkedUploadsPostChunkedUploads(accountId: accountId, chunkedUploadRequest: chunkedUploadRequest).whenComplete { result in
    switch result {
    case .failure(let error):
    // process error
    case .success(let response):
        switch response {
        // process decoded response value or raw ClientResponse
        case .http201(let value, let raw):
        case .http400(let value, let raw):
        case .http0(let value, let raw):
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String** | The external account number (int) or account ID GUID. | 
 **chunkedUploadRequest** | [**ChunkedUploadRequest**](ChunkedUploadRequest.md) |  | [optional] 

### Return type

#### ChunkedUploadsPostChunkedUploads

```swift
public enum ChunkedUploadsPostChunkedUploads {
    case http201(value: ChunkedUploadResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ChunkedUploadResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chunkedUploadsPutChunkedUploadPart**
```swift
    open class func chunkedUploadsPutChunkedUploadPart(accountId: String, chunkedUploadId: String, chunkedUploadPartSeq: String, chunkedUploadRequest: ChunkedUploadRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ChunkedUploadsPutChunkedUploadPart>
```

Add a chunk to an existing chunked upload.

Adds a chunk or part to an existing chunked upload. After you use the Create method to initiate a new chunked upload and upload the first part,  use this method to upload subsequent parts.  For simplicity, we recommend that you upload the parts in their sequential order ( 1,2, 3, 4, etc.). The Create method adds the first part and assigns it the `sequence` value `0`. As a result, we recommend that you start with a `sequence` value of `1` when you use this method, and continue uploading parts contiguously until you have uploaded the entirety of the original content to DocuSign.  Example:   ``` PUT /v2.1/accounts/{accountId}/chunked_uploads/{chunkedUploadId}/1 PUT /v2.1/accounts/{accountId}/chunked_uploads/{chunkedUploadId}/2 PUT /v2.1/accounts/{accountId}/chunked_uploads/{chunkedUploadId}/3 ```  **Note**: You cannot replace a part that DocuSign has already received, or add parts to a chunked upload that is already successfully committed.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let chunkedUploadId = "chunkedUploadId_example" // String | The id of the chunked upload. 
let chunkedUploadPartSeq = "chunkedUploadPartSeq_example" // String | The sequence or order of the part in the chunked upload. By default, the sequence of the first part that is uploaded as part of the Create request is `0`.  **Note**: You can add parts out of order. However, the chunked upload must consist of a contiguous series of one or more parts before you can successfully commit it.
let chunkedUploadRequest = chunkedUploadRequest(chunkedUploadId: "chunkedUploadId_example", data: "data_example") // ChunkedUploadRequest |  (optional)

// Add a chunk to an existing chunked upload.
ChunkedUploadsAPI.chunkedUploadsPutChunkedUploadPart(accountId: accountId, chunkedUploadId: chunkedUploadId, chunkedUploadPartSeq: chunkedUploadPartSeq, chunkedUploadRequest: chunkedUploadRequest).whenComplete { result in
    switch result {
    case .failure(let error):
    // process error
    case .success(let response):
        switch response {
        // process decoded response value or raw ClientResponse
        case .http200(let value, let raw):
        case .http400(let value, let raw):
        case .http0(let value, let raw):
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String** | The external account number (int) or account ID GUID. | 
 **chunkedUploadId** | **String** | The id of the chunked upload.  | 
 **chunkedUploadPartSeq** | **String** | The sequence or order of the part in the chunked upload. By default, the sequence of the first part that is uploaded as part of the Create request is &#x60;0&#x60;.  **Note**: You can add parts out of order. However, the chunked upload must consist of a contiguous series of one or more parts before you can successfully commit it. | 
 **chunkedUploadRequest** | [**ChunkedUploadRequest**](ChunkedUploadRequest.md) |  | [optional] 

### Return type

#### ChunkedUploadsPutChunkedUploadPart

```swift
public enum ChunkedUploadsPutChunkedUploadPart {
    case http200(value: ChunkedUploadResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ChunkedUploadResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **chunkedUploadsPutChunkedUploads**
```swift
    open class func chunkedUploadsPutChunkedUploads(accountId: String, chunkedUploadId: String, action: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ChunkedUploadsPutChunkedUploads>
```

Commit a chunked upload.

This method checks the integrity of a chunked upload and then commits it. When this request is successful, the chunked upload is then ready to be referenced in other API calls.  If the request is unsuccessful, ensure that you have uploaded all of the parts by using the Update method.  **Note**: After you commit a chunked upload, it no longer accepts additional parts.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | (Required) The external account number (int) or account ID GUID.
let chunkedUploadId = "chunkedUploadId_example" // String | (Required) The id of the chunked upload to commit.
let action = "action_example" // String | (Required) You must use this query parameter with the value `commit`, which affirms the request to validate and prepare the chunked upload for use with other API calls. (optional)

// Commit a chunked upload.
ChunkedUploadsAPI.chunkedUploadsPutChunkedUploads(accountId: accountId, chunkedUploadId: chunkedUploadId, action: action).whenComplete { result in
    switch result {
    case .failure(let error):
    // process error
    case .success(let response):
        switch response {
        // process decoded response value or raw ClientResponse
        case .http200(let value, let raw):
        case .http400(let value, let raw):
        case .http0(let value, let raw):
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String** | (Required) The external account number (int) or account ID GUID. | 
 **chunkedUploadId** | **String** | (Required) The id of the chunked upload to commit. | 
 **action** | **String** | (Required) You must use this query parameter with the value &#x60;commit&#x60;, which affirms the request to validate and prepare the chunked upload for use with other API calls. | [optional] 

### Return type

#### ChunkedUploadsPutChunkedUploads

```swift
public enum ChunkedUploadsPutChunkedUploads {
    case http200(value: ChunkedUploadResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ChunkedUploadResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

