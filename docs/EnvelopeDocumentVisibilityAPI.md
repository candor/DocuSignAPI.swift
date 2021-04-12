# EnvelopeDocumentVisibilityAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**recipientsGetRecipientDocumentVisibility**](EnvelopeDocumentVisibilityAPI.md#recipientsgetrecipientdocumentvisibility) | **GET** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/document_visibility | Returns document visibility for a recipient
[**recipientsPutRecipientDocumentVisibility**](EnvelopeDocumentVisibilityAPI.md#recipientsputrecipientdocumentvisibility) | **PUT** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/document_visibility | Updates document visibility for a recipient
[**recipientsPutRecipientsDocumentVisibility**](EnvelopeDocumentVisibilityAPI.md#recipientsputrecipientsdocumentvisibility) | **PUT** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/document_visibility | Updates document visibility for recipients


# **recipientsGetRecipientDocumentVisibility**
```swift
    open class func recipientsGetRecipientDocumentVisibility(accountId: String, envelopeId: String, recipientId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientsGetRecipientDocumentVisibility>
```

Returns document visibility for a recipient

This method returns information about document visibility for a recipient.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let recipientId = "recipientId_example" // String | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.

// Returns document visibility for a recipient
EnvelopeDocumentVisibilityAPI.recipientsGetRecipientDocumentVisibility(accountId: accountId, envelopeId: envelopeId, recipientId: recipientId).whenComplete { result in
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
 **recipientId** | **String** | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each &#x60;recipientId&#x60; must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a &#x60;recipientId&#x60; of &#x60;1&#x60;. | 

### Return type

#### RecipientsGetRecipientDocumentVisibility

```swift
public enum RecipientsGetRecipientDocumentVisibility {
    case http200(value: DocumentVisibilityList?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: DocumentVisibilityList?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recipientsPutRecipientDocumentVisibility**
```swift
    open class func recipientsPutRecipientDocumentVisibility(accountId: String, envelopeId: String, recipientId: String, documentVisibilityList: DocumentVisibilityList? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientsPutRecipientDocumentVisibility>
```

Updates document visibility for a recipient

This method updates document visibility for a recipient.  **Note**: A document cannot be hidden from a recipient if the recipient has tabs assigned to them on the document. Carbon Copy, Certified Delivery (Needs to Sign), Editor, and Agent recipients can always see all documents.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let recipientId = "recipientId_example" // String | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
let documentVisibilityList = documentVisibilityList(documentVisibility: [documentVisibility(documentId: "documentId_example", errorDetails: errorDetails(errorCode: "errorCode_example", message: "message_example"), recipientId: "recipientId_example", rights: "rights_example", visible: "visible_example")]) // DocumentVisibilityList |  (optional)

// Updates document visibility for a recipient
EnvelopeDocumentVisibilityAPI.recipientsPutRecipientDocumentVisibility(accountId: accountId, envelopeId: envelopeId, recipientId: recipientId, documentVisibilityList: documentVisibilityList).whenComplete { result in
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
 **recipientId** | **String** | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each &#x60;recipientId&#x60; must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a &#x60;recipientId&#x60; of &#x60;1&#x60;. | 
 **documentVisibilityList** | [**DocumentVisibilityList**](DocumentVisibilityList.md) |  | [optional] 

### Return type

#### RecipientsPutRecipientDocumentVisibility

```swift
public enum RecipientsPutRecipientDocumentVisibility {
    case http200(value: DocumentVisibilityList?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: DocumentVisibilityList?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recipientsPutRecipientsDocumentVisibility**
```swift
    open class func recipientsPutRecipientsDocumentVisibility(accountId: String, envelopeId: String, documentVisibilityList: DocumentVisibilityList? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientsPutRecipientsDocumentVisibility>
```

Updates document visibility for recipients

This method updates document visibility for one or more recipients based on the `recipientId` and `visible` values that you include in the request body.  **Note**: A document cannot be hidden from a recipient if the recipient has tabs assigned to them on the document. Carbon Copy, Certified Delivery (Needs to Sign), Editor, and Agent recipients can always see all documents.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let documentVisibilityList = documentVisibilityList(documentVisibility: [documentVisibility(documentId: "documentId_example", errorDetails: errorDetails(errorCode: "errorCode_example", message: "message_example"), recipientId: "recipientId_example", rights: "rights_example", visible: "visible_example")]) // DocumentVisibilityList |  (optional)

// Updates document visibility for recipients
EnvelopeDocumentVisibilityAPI.recipientsPutRecipientsDocumentVisibility(accountId: accountId, envelopeId: envelopeId, documentVisibilityList: documentVisibilityList).whenComplete { result in
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
 **documentVisibilityList** | [**DocumentVisibilityList**](DocumentVisibilityList.md) |  | [optional] 

### Return type

#### RecipientsPutRecipientsDocumentVisibility

```swift
public enum RecipientsPutRecipientsDocumentVisibility {
    case http200(value: DocumentVisibilityList?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: DocumentVisibilityList?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

