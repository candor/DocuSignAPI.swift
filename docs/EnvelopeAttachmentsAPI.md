# EnvelopeAttachmentsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**attachmentsDeleteAttachments**](EnvelopeAttachmentsAPI.md#attachmentsdeleteattachments) | **DELETE** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/attachments | Delete one or more attachments from a DRAFT envelope.
[**attachmentsGetAttachment**](EnvelopeAttachmentsAPI.md#attachmentsgetattachment) | **GET** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/attachments/{attachmentId} | Retrieves an attachment from the envelope.
[**attachmentsGetAttachments**](EnvelopeAttachmentsAPI.md#attachmentsgetattachments) | **GET** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/attachments | Returns a list of attachments associated with the specified envelope
[**attachmentsPutAttachment**](EnvelopeAttachmentsAPI.md#attachmentsputattachment) | **PUT** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/attachments/{attachmentId} | Add an attachment to a DRAFT or IN-PROCESS envelope.
[**attachmentsPutAttachments**](EnvelopeAttachmentsAPI.md#attachmentsputattachments) | **PUT** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/attachments | Add one or more attachments to a draft or in-process envelope.


# **attachmentsDeleteAttachments**
```swift
    open class func attachmentsDeleteAttachments(accountId: String, envelopeId: String, envelopeAttachmentsRequest: EnvelopeAttachmentsRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<AttachmentsDeleteAttachments>
```

Delete one or more attachments from a DRAFT envelope.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let envelopeAttachmentsRequest = envelopeAttachmentsRequest(attachments: [nil]) // EnvelopeAttachmentsRequest |  (optional)

// Delete one or more attachments from a DRAFT envelope.
EnvelopeAttachmentsAPI.attachmentsDeleteAttachments(accountId: accountId, envelopeId: envelopeId, envelopeAttachmentsRequest: envelopeAttachmentsRequest).whenComplete { result in
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
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **envelopeAttachmentsRequest** | [**EnvelopeAttachmentsRequest**](EnvelopeAttachmentsRequest.md) |  | [optional] 

### Return type

#### AttachmentsDeleteAttachments

```swift
public enum AttachmentsDeleteAttachments {
    case http200(value: EnvelopeAttachmentsResult?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeAttachmentsResult?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attachmentsGetAttachment**
```swift
    open class func attachmentsGetAttachment(accountId: String, attachmentId: String, envelopeId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<AttachmentsGetAttachment>
```

Retrieves an attachment from the envelope.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let attachmentId = "attachmentId_example" // String | The unique identifier for the attachment.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 

// Retrieves an attachment from the envelope.
EnvelopeAttachmentsAPI.attachmentsGetAttachment(accountId: accountId, attachmentId: attachmentId, envelopeId: envelopeId).whenComplete { result in
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
 **attachmentId** | **String** | The unique identifier for the attachment. | 
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 

### Return type

#### AttachmentsGetAttachment

```swift
public enum AttachmentsGetAttachment {
    case http200(value: Void?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Void?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attachmentsGetAttachments**
```swift
    open class func attachmentsGetAttachments(accountId: String, envelopeId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<AttachmentsGetAttachments>
```

Returns a list of attachments associated with the specified envelope

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 

// Returns a list of attachments associated with the specified envelope
EnvelopeAttachmentsAPI.attachmentsGetAttachments(accountId: accountId, envelopeId: envelopeId).whenComplete { result in
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
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 

### Return type

#### AttachmentsGetAttachments

```swift
public enum AttachmentsGetAttachments {
    case http200(value: EnvelopeAttachmentsResult?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeAttachmentsResult?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attachmentsPutAttachment**
```swift
    open class func attachmentsPutAttachment(accountId: String, attachmentId: String, envelopeId: String, attachment: Attachment? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<AttachmentsPutAttachment>
```

Add an attachment to a DRAFT or IN-PROCESS envelope.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let attachmentId = "attachmentId_example" // String | The unique identifier for the attachment.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let attachment = attachment(accessControl: "accessControl_example", attachmentId: "attachmentId_example", attachmentType: "attachmentType_example", data: "data_example", label: "label_example", name: "name_example", remoteUrl: "remoteUrl_example") // Attachment |  (optional)

// Add an attachment to a DRAFT or IN-PROCESS envelope.
EnvelopeAttachmentsAPI.attachmentsPutAttachment(accountId: accountId, attachmentId: attachmentId, envelopeId: envelopeId, attachment: attachment).whenComplete { result in
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
 **attachmentId** | **String** | The unique identifier for the attachment. | 
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **attachment** | [**Attachment**](Attachment.md) |  | [optional] 

### Return type

#### AttachmentsPutAttachment

```swift
public enum AttachmentsPutAttachment {
    case http200(value: EnvelopeAttachmentsResult?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeAttachmentsResult?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attachmentsPutAttachments**
```swift
    open class func attachmentsPutAttachments(accountId: String, envelopeId: String, envelopeAttachmentsRequest: EnvelopeAttachmentsRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<AttachmentsPutAttachments>
```

Add one or more attachments to a draft or in-process envelope.

Supported attachment formats include: .asp, .bmp, .csv, .doc, .docm, .docx, .dot, .dotm, .dotx, .gif, .htm, .html, .jpeg, .jpg, .msg, .pdf, .png, .pot, .potx, .pps, .ppt, .pptm, .pptx, .ps, .rtf, .tif, .tiff, .txt, .wpd, .xls, .xlsm, .xlsx, .xml, and .xps. For more information about supported file formats, see [Supported File Formats](https://support.docusign.com/guides/ndse-user-guide-supported-file-formats).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let envelopeAttachmentsRequest = envelopeAttachmentsRequest(attachments: [nil]) // EnvelopeAttachmentsRequest |  (optional)

// Add one or more attachments to a draft or in-process envelope.
EnvelopeAttachmentsAPI.attachmentsPutAttachments(accountId: accountId, envelopeId: envelopeId, envelopeAttachmentsRequest: envelopeAttachmentsRequest).whenComplete { result in
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
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **envelopeAttachmentsRequest** | [**EnvelopeAttachmentsRequest**](EnvelopeAttachmentsRequest.md) |  | [optional] 

### Return type

#### AttachmentsPutAttachments

```swift
public enum AttachmentsPutAttachments {
    case http200(value: EnvelopeAttachmentsResult?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeAttachmentsResult?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

