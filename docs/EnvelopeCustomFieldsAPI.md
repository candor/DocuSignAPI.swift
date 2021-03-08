# EnvelopeCustomFieldsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**customFieldsDeleteCustomFields**](EnvelopeCustomFieldsAPI.md#customfieldsdeletecustomfields) | **DELETE** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/custom_fields | Deletes envelope custom fields for draft and in-process envelopes.
[**customFieldsGetCustomFields**](EnvelopeCustomFieldsAPI.md#customfieldsgetcustomfields) | **GET** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/custom_fields | Gets the custom field information for the specified envelope.
[**customFieldsPostCustomFields**](EnvelopeCustomFieldsAPI.md#customfieldspostcustomfields) | **POST** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/custom_fields | Creates envelope custom fields for an envelope.
[**customFieldsPutCustomFields**](EnvelopeCustomFieldsAPI.md#customfieldsputcustomfields) | **PUT** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/custom_fields | Updates envelope custom fields in an envelope.


# **customFieldsDeleteCustomFields**
```swift
    open class func customFieldsDeleteCustomFields(accountId: String, envelopeId: String, envelopeCustomFields: EnvelopeCustomFields? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<CustomFieldsDeleteCustomFields>
```

Deletes envelope custom fields for draft and in-process envelopes.

Deletes envelope custom fields for draft and in-process envelopes.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let envelopeCustomFields = EnvelopeCustomFields(listCustomFields: [nil], textCustomFields: [nil]) // EnvelopeCustomFields |  (optional)

// Deletes envelope custom fields for draft and in-process envelopes.
EnvelopeCustomFieldsAPI.customFieldsDeleteCustomFields(accountId: accountId, envelopeId: envelopeId, envelopeCustomFields: envelopeCustomFields).whenComplete { result in
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
 **envelopeCustomFields** | [**EnvelopeCustomFields**](EnvelopeCustomFields.md) |  | [optional] 

### Return type

#### CustomFieldsDeleteCustomFields

```swift
public enum CustomFieldsDeleteCustomFields {
    case http200(value: EnvelopeCustomFields?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeCustomFields?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customFieldsGetCustomFields**
```swift
    open class func customFieldsGetCustomFields(accountId: String, envelopeId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<CustomFieldsGetCustomFields>
```

Gets the custom field information for the specified envelope.

Retrieves the custom field information for the specified envelope. You can use these fields in the envelopes for your account to record information about the envelope, help search for envelopes, and track information. The envelope custom fields are shown in the Envelope Settings section when a user is creating an envelope in the DocuSign member console. The envelope custom fields are not seen by the envelope recipients.  There are two types of envelope custom fields, text, and list. A text custom field lets the sender enter the value for the field. With a list custom field, the sender selects the value of the field from a pre-made list.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 

// Gets the custom field information for the specified envelope.
EnvelopeCustomFieldsAPI.customFieldsGetCustomFields(accountId: accountId, envelopeId: envelopeId).whenComplete { result in
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

#### CustomFieldsGetCustomFields

```swift
public enum CustomFieldsGetCustomFields {
    case http200(value: CustomFieldsEnvelope?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: CustomFieldsEnvelope?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customFieldsPostCustomFields**
```swift
    open class func customFieldsPostCustomFields(accountId: String, envelopeId: String, envelopeCustomFields: EnvelopeCustomFields? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<CustomFieldsPostCustomFields>
```

Creates envelope custom fields for an envelope.

Updates the envelope custom fields for draft and in-process envelopes.  You may assign up to three envelope custom fields to an envelope. This limit does not include account (document) custom fields. Each custom field used in an envelope must have a unique name. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let envelopeCustomFields = EnvelopeCustomFields(listCustomFields: [nil], textCustomFields: [nil]) // EnvelopeCustomFields |  (optional)

// Creates envelope custom fields for an envelope.
EnvelopeCustomFieldsAPI.customFieldsPostCustomFields(accountId: accountId, envelopeId: envelopeId, envelopeCustomFields: envelopeCustomFields).whenComplete { result in
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
 **envelopeCustomFields** | [**EnvelopeCustomFields**](EnvelopeCustomFields.md) |  | [optional] 

### Return type

#### CustomFieldsPostCustomFields

```swift
public enum CustomFieldsPostCustomFields {
    case http201(value: EnvelopeCustomFields?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeCustomFields?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customFieldsPutCustomFields**
```swift
    open class func customFieldsPutCustomFields(accountId: String, envelopeId: String, envelopeCustomFields: EnvelopeCustomFields? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<CustomFieldsPutCustomFields>
```

Updates envelope custom fields in an envelope.

Updates the envelope custom fields in draft and in-process envelopes.  Each custom field used in an envelope must have a unique name. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let envelopeCustomFields = EnvelopeCustomFields(listCustomFields: [nil], textCustomFields: [nil]) // EnvelopeCustomFields |  (optional)

// Updates envelope custom fields in an envelope.
EnvelopeCustomFieldsAPI.customFieldsPutCustomFields(accountId: accountId, envelopeId: envelopeId, envelopeCustomFields: envelopeCustomFields).whenComplete { result in
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
 **envelopeCustomFields** | [**EnvelopeCustomFields**](EnvelopeCustomFields.md) |  | [optional] 

### Return type

#### CustomFieldsPutCustomFields

```swift
public enum CustomFieldsPutCustomFields {
    case http200(value: EnvelopeCustomFields?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeCustomFields?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

