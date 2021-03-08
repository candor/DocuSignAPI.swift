# TemplateBulkRecipientsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**recipientsDeleteTemplateBulkRecipientsFile**](TemplateBulkRecipientsAPI.md#recipientsdeletetemplatebulkrecipientsfile) | **DELETE** /v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/bulk_recipients | Deletes the bulk recipient list on a template.
[**recipientsGetTemplateBulkRecipients**](TemplateBulkRecipientsAPI.md#recipientsgettemplatebulkrecipients) | **GET** /v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/bulk_recipients | Gets the bulk recipient file from a template.
[**recipientsPutTemplateBulkRecipients**](TemplateBulkRecipientsAPI.md#recipientsputtemplatebulkrecipients) | **PUT** /v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/bulk_recipients | Adds or replaces the bulk recipients list in a template.


# **recipientsDeleteTemplateBulkRecipientsFile**
```swift
    open class func recipientsDeleteTemplateBulkRecipientsFile(accountId: String, recipientId: String, templateId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientsDeleteTemplateBulkRecipientsFile>
```

Deletes the bulk recipient list on a template.

Deletes the bulk recipient list on a template.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let recipientId = "recipientId_example" // String | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
let templateId = "templateId_example" // String | The id of the template.

// Deletes the bulk recipient list on a template.
TemplateBulkRecipientsAPI.recipientsDeleteTemplateBulkRecipientsFile(accountId: accountId, recipientId: recipientId, templateId: templateId).whenComplete { result in
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

#### RecipientsDeleteTemplateBulkRecipientsFile

```swift
public enum RecipientsDeleteTemplateBulkRecipientsFile {
    case http200(value: BulkRecipientsUpdateResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: BulkRecipientsUpdateResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recipientsGetTemplateBulkRecipients**
```swift
    open class func recipientsGetTemplateBulkRecipients(accountId: String, recipientId: String, templateId: String, includeTabs: String? = nil, startPosition: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientsGetTemplateBulkRecipients>
```

Gets the bulk recipient file from a template.

Retrieves the bulk recipient file information from a template that has a bulk recipient.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let recipientId = "recipientId_example" // String | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
let templateId = "templateId_example" // String | The id of the template.
let includeTabs = "includeTabs_example" // String | When set to **true**, the tab information associated with the recipient is included in the response. If you do not specify this parameter, the effect is the default behavior (**false**). (optional)
let startPosition = "startPosition_example" // String | The starting position of the results set. (optional)

// Gets the bulk recipient file from a template.
TemplateBulkRecipientsAPI.recipientsGetTemplateBulkRecipients(accountId: accountId, recipientId: recipientId, templateId: templateId, includeTabs: includeTabs, startPosition: startPosition).whenComplete { result in
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
 **includeTabs** | **String** | When set to **true**, the tab information associated with the recipient is included in the response. If you do not specify this parameter, the effect is the default behavior (**false**). | [optional] 
 **startPosition** | **String** | The starting position of the results set. | [optional] 

### Return type

#### RecipientsGetTemplateBulkRecipients

```swift
public enum RecipientsGetTemplateBulkRecipients {
    case http200(value: BulkRecipientsResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: BulkRecipientsResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recipientsPutTemplateBulkRecipients**
```swift
    open class func recipientsPutTemplateBulkRecipients(accountId: String, recipientId: String, templateId: String, bulkRecipientsRequest: BulkRecipientsRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientsPutTemplateBulkRecipients>
```

Adds or replaces the bulk recipients list in a template.

Updates the bulk recipients in a template using a file upload. The Content-Type supported for uploading a bulk recipient file is CSV (text/csv).  The REST API does not support modifying individual rows or values in the bulk recipients file. It only allows the entire file to be added or replaced with a new file.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let recipientId = "recipientId_example" // String | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
let templateId = "templateId_example" // String | The id of the template.
let bulkRecipientsRequest = bulkRecipientsRequest(bulkRecipients: [nil]) // BulkRecipientsRequest |  (optional)

// Adds or replaces the bulk recipients list in a template.
TemplateBulkRecipientsAPI.recipientsPutTemplateBulkRecipients(accountId: accountId, recipientId: recipientId, templateId: templateId, bulkRecipientsRequest: bulkRecipientsRequest).whenComplete { result in
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
 **bulkRecipientsRequest** | [**BulkRecipientsRequest**](BulkRecipientsRequest.md) |  | [optional] 

### Return type

#### RecipientsPutTemplateBulkRecipients

```swift
public enum RecipientsPutTemplateBulkRecipients {
    case http200(value: BulkRecipientsSummaryResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: BulkRecipientsSummaryResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

