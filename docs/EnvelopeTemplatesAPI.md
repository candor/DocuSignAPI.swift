# EnvelopeTemplatesAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**templatesDeleteDocumentTemplates**](EnvelopeTemplatesAPI.md#templatesdeletedocumenttemplates) | **DELETE** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/templates/{templateId} | Deletes a template from a document in an existing envelope.
[**templatesGetDocumentTemplates**](EnvelopeTemplatesAPI.md#templatesgetdocumenttemplates) | **GET** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/templates | Gets the templates associated with a document in an existing envelope.
[**templatesGetEnvelopeTemplates**](EnvelopeTemplatesAPI.md#templatesgetenvelopetemplates) | **GET** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/templates | Get List of Templates used in an Envelope
[**templatesPostDocumentTemplates**](EnvelopeTemplatesAPI.md#templatespostdocumenttemplates) | **POST** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/templates | Adds templates to a document in an  envelope.
[**templatesPostEnvelopeTemplates**](EnvelopeTemplatesAPI.md#templatespostenvelopetemplates) | **POST** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/templates | Adds templates to an envelope.


# **templatesDeleteDocumentTemplates**
```swift
    open class func templatesDeleteDocumentTemplates(accountId: String, documentId: String, envelopeId: String, templateId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TemplatesDeleteDocumentTemplates>
```

Deletes a template from a document in an existing envelope.

Deletes the specified template from a document in an existing envelope.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let templateId = "templateId_example" // String | The id of the template.

// Deletes a template from a document in an existing envelope.
EnvelopeTemplatesAPI.templatesDeleteDocumentTemplates(accountId: accountId, documentId: documentId, envelopeId: envelopeId, templateId: templateId).whenComplete { result in
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
 **templateId** | **String** | The id of the template. | 

### Return type

#### TemplatesDeleteDocumentTemplates

```swift
public enum TemplatesDeleteDocumentTemplates {
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

# **templatesGetDocumentTemplates**
```swift
    open class func templatesGetDocumentTemplates(accountId: String, documentId: String, envelopeId: String, include: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TemplatesGetDocumentTemplates>
```

Gets the templates associated with a document in an existing envelope.

Retrieves the templates associated with a document in the specified envelope.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let include = "include_example" // String | A comma-separated list that limits the results. Valid values are:  * `applied` * `matched`  (optional)

// Gets the templates associated with a document in an existing envelope.
EnvelopeTemplatesAPI.templatesGetDocumentTemplates(accountId: accountId, documentId: documentId, envelopeId: envelopeId, include: include).whenComplete { result in
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
 **include** | **String** | A comma-separated list that limits the results. Valid values are:  * &#x60;applied&#x60; * &#x60;matched&#x60;  | [optional] 

### Return type

#### TemplatesGetDocumentTemplates

```swift
public enum TemplatesGetDocumentTemplates {
    case http200(value: TemplateInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: TemplateInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **templatesGetEnvelopeTemplates**
```swift
    open class func templatesGetEnvelopeTemplates(accountId: String, envelopeId: String, include: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TemplatesGetEnvelopeTemplates>
```

Get List of Templates used in an Envelope

This returns a list of the server-side templates, their name and ID, used in an envelope. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let include = "include_example" // String | The possible value is `matching_applied`, which returns template matching information for the template. (optional)

// Get List of Templates used in an Envelope
EnvelopeTemplatesAPI.templatesGetEnvelopeTemplates(accountId: accountId, envelopeId: envelopeId, include: include).whenComplete { result in
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
 **include** | **String** | The possible value is &#x60;matching_applied&#x60;, which returns template matching information for the template. | [optional] 

### Return type

#### TemplatesGetEnvelopeTemplates

```swift
public enum TemplatesGetEnvelopeTemplates {
    case http200(value: TemplateInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: TemplateInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **templatesPostDocumentTemplates**
```swift
    open class func templatesPostDocumentTemplates(accountId: String, documentId: String, envelopeId: String, preserveTemplateRecipient: String? = nil, documentTemplateList: DocumentTemplateList? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TemplatesPostDocumentTemplates>
```

Adds templates to a document in an  envelope.

Adds templates to a document in the specified envelope.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let preserveTemplateRecipient = "preserveTemplateRecipient_example" // String |  (optional)
let documentTemplateList = documentTemplateList(documentTemplates: [documentTemplate(documentEndPage: "documentEndPage_example", documentId: "documentId_example", documentStartPage: "documentStartPage_example", errorDetails: errorDetails(errorCode: "errorCode_example", message: "message_example"), templateId: "templateId_example")]) // DocumentTemplateList |  (optional)

// Adds templates to a document in an  envelope.
EnvelopeTemplatesAPI.templatesPostDocumentTemplates(accountId: accountId, documentId: documentId, envelopeId: envelopeId, preserveTemplateRecipient: preserveTemplateRecipient, documentTemplateList: documentTemplateList).whenComplete { result in
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
 **preserveTemplateRecipient** | **String** |  | [optional] 
 **documentTemplateList** | [**DocumentTemplateList**](DocumentTemplateList.md) |  | [optional] 

### Return type

#### TemplatesPostDocumentTemplates

```swift
public enum TemplatesPostDocumentTemplates {
    case http201(value: DocumentTemplateList?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: DocumentTemplateList?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **templatesPostEnvelopeTemplates**
```swift
    open class func templatesPostEnvelopeTemplates(accountId: String, envelopeId: String, preserveTemplateRecipient: String? = nil, documentTemplateList: DocumentTemplateList? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TemplatesPostEnvelopeTemplates>
```

Adds templates to an envelope.

Adds templates to the specified envelope.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let preserveTemplateRecipient = "preserveTemplateRecipient_example" // String |  (optional)
let documentTemplateList = documentTemplateList(documentTemplates: [documentTemplate(documentEndPage: "documentEndPage_example", documentId: "documentId_example", documentStartPage: "documentStartPage_example", errorDetails: errorDetails(errorCode: "errorCode_example", message: "message_example"), templateId: "templateId_example")]) // DocumentTemplateList |  (optional)

// Adds templates to an envelope.
EnvelopeTemplatesAPI.templatesPostEnvelopeTemplates(accountId: accountId, envelopeId: envelopeId, preserveTemplateRecipient: preserveTemplateRecipient, documentTemplateList: documentTemplateList).whenComplete { result in
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
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **preserveTemplateRecipient** | **String** |  | [optional] 
 **documentTemplateList** | [**DocumentTemplateList**](DocumentTemplateList.md) |  | [optional] 

### Return type

#### TemplatesPostEnvelopeTemplates

```swift
public enum TemplatesPostEnvelopeTemplates {
    case http201(value: DocumentTemplateList?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: DocumentTemplateList?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

