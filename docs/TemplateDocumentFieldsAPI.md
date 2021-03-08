# TemplateDocumentFieldsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**documentFieldsDeleteTemplateDocumentFields**](TemplateDocumentFieldsAPI.md#documentfieldsdeletetemplatedocumentfields) | **DELETE** /v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/fields | Deletes custom document fields from an existing template document.
[**documentFieldsGetTemplateDocumentFields**](TemplateDocumentFieldsAPI.md#documentfieldsgettemplatedocumentfields) | **GET** /v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/fields | Gets the custom document fields for a an existing template document.
[**documentFieldsPostTemplateDocumentFields**](TemplateDocumentFieldsAPI.md#documentfieldsposttemplatedocumentfields) | **POST** /v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/fields | Creates custom document fields in an existing template document.
[**documentFieldsPutTemplateDocumentFields**](TemplateDocumentFieldsAPI.md#documentfieldsputtemplatedocumentfields) | **PUT** /v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/fields | Updates existing custom document fields in an existing template document.


# **documentFieldsDeleteTemplateDocumentFields**
```swift
    open class func documentFieldsDeleteTemplateDocumentFields(accountId: String, documentId: String, templateId: String, documentFieldsInformation: DocumentFieldsInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<DocumentFieldsDeleteTemplateDocumentFields>
```

Deletes custom document fields from an existing template document.

Deletes custom document fields from an existing template document.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
let templateId = "templateId_example" // String | The id of the template.
let documentFieldsInformation = documentFieldsInformation(documentFields: [nil]) // DocumentFieldsInformation |  (optional)

// Deletes custom document fields from an existing template document.
TemplateDocumentFieldsAPI.documentFieldsDeleteTemplateDocumentFields(accountId: accountId, documentId: documentId, templateId: templateId, documentFieldsInformation: documentFieldsInformation).whenComplete { result in
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
 **documentId** | **String** | The &#x60;documentId&#x60; is set by the API client. It is an integer that falls between &#x60;1&#x60; and 2,147,483,647. The value is encoded as a string without commas. The values &#x60;1&#x60;, &#x60;2&#x60;, &#x60;3&#x60;, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a &#x60;documentId&#x60; property that specifies the document on which to place the tab. | 
 **templateId** | **String** | The id of the template. | 
 **documentFieldsInformation** | [**DocumentFieldsInformation**](DocumentFieldsInformation.md) |  | [optional] 

### Return type

#### DocumentFieldsDeleteTemplateDocumentFields

```swift
public enum DocumentFieldsDeleteTemplateDocumentFields {
    case http200(value: DocumentFieldsInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: DocumentFieldsInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **documentFieldsGetTemplateDocumentFields**
```swift
    open class func documentFieldsGetTemplateDocumentFields(accountId: String, documentId: String, templateId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<DocumentFieldsGetTemplateDocumentFields>
```

Gets the custom document fields for a an existing template document.

This method retrieves the custom document fields for an existing template document.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
let templateId = "templateId_example" // String | The id of the template.

// Gets the custom document fields for a an existing template document.
TemplateDocumentFieldsAPI.documentFieldsGetTemplateDocumentFields(accountId: accountId, documentId: documentId, templateId: templateId).whenComplete { result in
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
 **documentId** | **String** | The &#x60;documentId&#x60; is set by the API client. It is an integer that falls between &#x60;1&#x60; and 2,147,483,647. The value is encoded as a string without commas. The values &#x60;1&#x60;, &#x60;2&#x60;, &#x60;3&#x60;, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a &#x60;documentId&#x60; property that specifies the document on which to place the tab. | 
 **templateId** | **String** | The id of the template. | 

### Return type

#### DocumentFieldsGetTemplateDocumentFields

```swift
public enum DocumentFieldsGetTemplateDocumentFields {
    case http200(value: DocumentFieldsInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: DocumentFieldsInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **documentFieldsPostTemplateDocumentFields**
```swift
    open class func documentFieldsPostTemplateDocumentFields(accountId: String, documentId: String, templateId: String, documentFieldsInformation: DocumentFieldsInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<DocumentFieldsPostTemplateDocumentFields>
```

Creates custom document fields in an existing template document.

Creates custom document fields in an existing template document.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
let templateId = "templateId_example" // String | The id of the template.
let documentFieldsInformation = documentFieldsInformation(documentFields: [nil]) // DocumentFieldsInformation |  (optional)

// Creates custom document fields in an existing template document.
TemplateDocumentFieldsAPI.documentFieldsPostTemplateDocumentFields(accountId: accountId, documentId: documentId, templateId: templateId, documentFieldsInformation: documentFieldsInformation).whenComplete { result in
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
 **documentId** | **String** | The &#x60;documentId&#x60; is set by the API client. It is an integer that falls between &#x60;1&#x60; and 2,147,483,647. The value is encoded as a string without commas. The values &#x60;1&#x60;, &#x60;2&#x60;, &#x60;3&#x60;, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a &#x60;documentId&#x60; property that specifies the document on which to place the tab. | 
 **templateId** | **String** | The id of the template. | 
 **documentFieldsInformation** | [**DocumentFieldsInformation**](DocumentFieldsInformation.md) |  | [optional] 

### Return type

#### DocumentFieldsPostTemplateDocumentFields

```swift
public enum DocumentFieldsPostTemplateDocumentFields {
    case http201(value: DocumentFieldsInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: DocumentFieldsInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **documentFieldsPutTemplateDocumentFields**
```swift
    open class func documentFieldsPutTemplateDocumentFields(accountId: String, documentId: String, templateId: String, documentFieldsInformation: DocumentFieldsInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<DocumentFieldsPutTemplateDocumentFields>
```

Updates existing custom document fields in an existing template document.

Updates existing custom document fields in an existing template document.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
let templateId = "templateId_example" // String | The id of the template.
let documentFieldsInformation = documentFieldsInformation(documentFields: [nil]) // DocumentFieldsInformation |  (optional)

// Updates existing custom document fields in an existing template document.
TemplateDocumentFieldsAPI.documentFieldsPutTemplateDocumentFields(accountId: accountId, documentId: documentId, templateId: templateId, documentFieldsInformation: documentFieldsInformation).whenComplete { result in
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
 **documentId** | **String** | The &#x60;documentId&#x60; is set by the API client. It is an integer that falls between &#x60;1&#x60; and 2,147,483,647. The value is encoded as a string without commas. The values &#x60;1&#x60;, &#x60;2&#x60;, &#x60;3&#x60;, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a &#x60;documentId&#x60; property that specifies the document on which to place the tab. | 
 **templateId** | **String** | The id of the template. | 
 **documentFieldsInformation** | [**DocumentFieldsInformation**](DocumentFieldsInformation.md) |  | [optional] 

### Return type

#### DocumentFieldsPutTemplateDocumentFields

```swift
public enum DocumentFieldsPutTemplateDocumentFields {
    case http200(value: DocumentFieldsInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: DocumentFieldsInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

