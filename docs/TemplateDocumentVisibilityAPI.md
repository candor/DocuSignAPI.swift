# TemplateDocumentVisibilityAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**recipientsGetTemplateRecipientDocumentVisibility**](TemplateDocumentVisibilityAPI.md#recipientsgettemplaterecipientdocumentvisibility) | **GET** /v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/document_visibility | Returns document visibility for a template recipient
[**recipientsPutTemplateRecipientDocumentVisibility**](TemplateDocumentVisibilityAPI.md#recipientsputtemplaterecipientdocumentvisibility) | **PUT** /v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/document_visibility | Updates document visibility for a template recipient
[**recipientsPutTemplateRecipientsDocumentVisibility**](TemplateDocumentVisibilityAPI.md#recipientsputtemplaterecipientsdocumentvisibility) | **PUT** /v2.1/accounts/{accountId}/templates/{templateId}/recipients/document_visibility | Updates document visibility for template recipients


# **recipientsGetTemplateRecipientDocumentVisibility**
```swift
    open class func recipientsGetTemplateRecipientDocumentVisibility(accountId: String, recipientId: String, templateId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientsGetTemplateRecipientDocumentVisibility>
```

Returns document visibility for a template recipient

This method returns information about document visibility for a template recipient.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let recipientId = "recipientId_example" // String | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
let templateId = "templateId_example" // String | The id of the template.

// Returns document visibility for a template recipient
TemplateDocumentVisibilityAPI.recipientsGetTemplateRecipientDocumentVisibility(accountId: accountId, recipientId: recipientId, templateId: templateId).whenComplete { result in
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
 **recipientId** | **String** | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each &#x60;recipientId&#x60; must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a &#x60;recipientId&#x60; of &#x60;1&#x60;. | 
 **templateId** | **String** | The id of the template. | 

### Return type

#### RecipientsGetTemplateRecipientDocumentVisibility

```swift
public enum RecipientsGetTemplateRecipientDocumentVisibility {
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

# **recipientsPutTemplateRecipientDocumentVisibility**
```swift
    open class func recipientsPutTemplateRecipientDocumentVisibility(accountId: String, recipientId: String, templateId: String, templateDocumentVisibilityList: TemplateDocumentVisibilityList? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientsPutTemplateRecipientDocumentVisibility>
```

Updates document visibility for a template recipient

This method updates the document visibility for a template recipient.  **Note**: A document cannot be hidden from a recipient if the recipient has tabs assigned to them on the document. Carbon Copy, Certified Delivery (Needs to Sign), Editor, and Agent recipients can always see all documents.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let recipientId = "recipientId_example" // String | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
let templateId = "templateId_example" // String | The id of the template.
let templateDocumentVisibilityList = templateDocumentVisibilityList(documentVisibility: [nil]) // TemplateDocumentVisibilityList |  (optional)

// Updates document visibility for a template recipient
TemplateDocumentVisibilityAPI.recipientsPutTemplateRecipientDocumentVisibility(accountId: accountId, recipientId: recipientId, templateId: templateId, templateDocumentVisibilityList: templateDocumentVisibilityList).whenComplete { result in
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
 **recipientId** | **String** | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each &#x60;recipientId&#x60; must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a &#x60;recipientId&#x60; of &#x60;1&#x60;. | 
 **templateId** | **String** | The id of the template. | 
 **templateDocumentVisibilityList** | [**TemplateDocumentVisibilityList**](TemplateDocumentVisibilityList.md) |  | [optional] 

### Return type

#### RecipientsPutTemplateRecipientDocumentVisibility

```swift
public enum RecipientsPutTemplateRecipientDocumentVisibility {
    case http200(value: TemplateDocumentVisibilityList?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: TemplateDocumentVisibilityList?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recipientsPutTemplateRecipientsDocumentVisibility**
```swift
    open class func recipientsPutTemplateRecipientsDocumentVisibility(accountId: String, templateId: String, templateDocumentVisibilityList: TemplateDocumentVisibilityList? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientsPutTemplateRecipientsDocumentVisibility>
```

Updates document visibility for template recipients

This method updates document visibility for one or more template recipients based on the `recipientId` and `visible` values that you include in the request body.   **Note**: A document cannot be hidden from a recipient if the recipient has tabs assigned to them on the document. Carbon Copy, Certified Delivery (Needs to Sign), Editor, and Agent recipients can always see all documents.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let templateId = "templateId_example" // String | The id of the template.
let templateDocumentVisibilityList = templateDocumentVisibilityList(documentVisibility: [nil]) // TemplateDocumentVisibilityList |  (optional)

// Updates document visibility for template recipients
TemplateDocumentVisibilityAPI.recipientsPutTemplateRecipientsDocumentVisibility(accountId: accountId, templateId: templateId, templateDocumentVisibilityList: templateDocumentVisibilityList).whenComplete { result in
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
 **templateId** | **String** | The id of the template. | 
 **templateDocumentVisibilityList** | [**TemplateDocumentVisibilityList**](TemplateDocumentVisibilityList.md) |  | [optional] 

### Return type

#### RecipientsPutTemplateRecipientsDocumentVisibility

```swift
public enum RecipientsPutTemplateRecipientsDocumentVisibility {
    case http200(value: TemplateDocumentVisibilityList?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: TemplateDocumentVisibilityList?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

