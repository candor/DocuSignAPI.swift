# EnvelopeDocumentFieldsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**documentFieldsDeleteDocumentFields**](EnvelopeDocumentFieldsAPI.md#documentfieldsdeletedocumentfields) | **DELETE** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/fields | Deletes custom document fields from an existing envelope document.
[**documentFieldsGetDocumentFields**](EnvelopeDocumentFieldsAPI.md#documentfieldsgetdocumentfields) | **GET** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/fields | Gets the custom document fields from an  existing envelope document.
[**documentFieldsPostDocumentFields**](EnvelopeDocumentFieldsAPI.md#documentfieldspostdocumentfields) | **POST** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/fields | Creates custom document fields in an existing envelope document.
[**documentFieldsPutDocumentFields**](EnvelopeDocumentFieldsAPI.md#documentfieldsputdocumentfields) | **PUT** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/fields | Updates existing custom document fields in an existing envelope document.


# **documentFieldsDeleteDocumentFields**
```swift
    open class func documentFieldsDeleteDocumentFields(accountId: String, documentId: String, envelopeId: String, envelopeDocumentFields: EnvelopeDocumentFields? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<DocumentFieldsDeleteDocumentFields>
```

Deletes custom document fields from an existing envelope document.

Deletes custom document fields from an existing envelope document.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let envelopeDocumentFields = EnvelopeDocumentFields(documentFields: [nameValue(errorDetails: errorDetails(errorCode: "errorCode_example", message: "message_example"), name: "name_example", originalValue: "originalValue_example", value: "value_example")]) // EnvelopeDocumentFields |  (optional)

// Deletes custom document fields from an existing envelope document.
EnvelopeDocumentFieldsAPI.documentFieldsDeleteDocumentFields(accountId: accountId, documentId: documentId, envelopeId: envelopeId, envelopeDocumentFields: envelopeDocumentFields).whenComplete { result in
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
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **envelopeDocumentFields** | [**EnvelopeDocumentFields**](EnvelopeDocumentFields.md) |  | [optional] 

### Return type

#### DocumentFieldsDeleteDocumentFields

```swift
public enum DocumentFieldsDeleteDocumentFields {
    case http200(value: EnvelopeDocumentFields?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeDocumentFields?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **documentFieldsGetDocumentFields**
```swift
    open class func documentFieldsGetDocumentFields(accountId: String, documentId: String, envelopeId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<DocumentFieldsGetDocumentFields>
```

Gets the custom document fields from an  existing envelope document.

Retrieves the custom document field information from an existing envelope document.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 

// Gets the custom document fields from an  existing envelope document.
EnvelopeDocumentFieldsAPI.documentFieldsGetDocumentFields(accountId: accountId, documentId: documentId, envelopeId: envelopeId).whenComplete { result in
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
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 

### Return type

#### DocumentFieldsGetDocumentFields

```swift
public enum DocumentFieldsGetDocumentFields {
    case http200(value: EnvelopeDocumentFields?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeDocumentFields?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **documentFieldsPostDocumentFields**
```swift
    open class func documentFieldsPostDocumentFields(accountId: String, documentId: String, envelopeId: String, envelopeDocumentFields: EnvelopeDocumentFields? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<DocumentFieldsPostDocumentFields>
```

Creates custom document fields in an existing envelope document.

Creates custom document fields in an existing envelope document.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let envelopeDocumentFields = EnvelopeDocumentFields(documentFields: [nameValue(errorDetails: errorDetails(errorCode: "errorCode_example", message: "message_example"), name: "name_example", originalValue: "originalValue_example", value: "value_example")]) // EnvelopeDocumentFields |  (optional)

// Creates custom document fields in an existing envelope document.
EnvelopeDocumentFieldsAPI.documentFieldsPostDocumentFields(accountId: accountId, documentId: documentId, envelopeId: envelopeId, envelopeDocumentFields: envelopeDocumentFields).whenComplete { result in
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
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **envelopeDocumentFields** | [**EnvelopeDocumentFields**](EnvelopeDocumentFields.md) |  | [optional] 

### Return type

#### DocumentFieldsPostDocumentFields

```swift
public enum DocumentFieldsPostDocumentFields {
    case http201(value: EnvelopeDocumentFields?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeDocumentFields?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **documentFieldsPutDocumentFields**
```swift
    open class func documentFieldsPutDocumentFields(accountId: String, documentId: String, envelopeId: String, envelopeDocumentFields: EnvelopeDocumentFields? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<DocumentFieldsPutDocumentFields>
```

Updates existing custom document fields in an existing envelope document.

Updates existing custom document fields in an existing envelope document.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let envelopeDocumentFields = EnvelopeDocumentFields(documentFields: [nameValue(errorDetails: errorDetails(errorCode: "errorCode_example", message: "message_example"), name: "name_example", originalValue: "originalValue_example", value: "value_example")]) // EnvelopeDocumentFields |  (optional)

// Updates existing custom document fields in an existing envelope document.
EnvelopeDocumentFieldsAPI.documentFieldsPutDocumentFields(accountId: accountId, documentId: documentId, envelopeId: envelopeId, envelopeDocumentFields: envelopeDocumentFields).whenComplete { result in
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
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **envelopeDocumentFields** | [**EnvelopeDocumentFields**](EnvelopeDocumentFields.md) |  | [optional] 

### Return type

#### DocumentFieldsPutDocumentFields

```swift
public enum DocumentFieldsPutDocumentFields {
    case http200(value: EnvelopeDocumentFields?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeDocumentFields?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

