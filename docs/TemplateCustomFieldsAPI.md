# TemplateCustomFieldsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**customFieldsDeleteTemplateCustomFields**](TemplateCustomFieldsAPI.md#customfieldsdeletetemplatecustomfields) | **DELETE** /v2.1/accounts/{accountId}/templates/{templateId}/custom_fields | Deletes envelope custom fields in a template.
[**customFieldsGetTemplateCustomFields**](TemplateCustomFieldsAPI.md#customfieldsgettemplatecustomfields) | **GET** /v2.1/accounts/{accountId}/templates/{templateId}/custom_fields | Gets the custom document fields from a template.
[**customFieldsPostTemplateCustomFields**](TemplateCustomFieldsAPI.md#customfieldsposttemplatecustomfields) | **POST** /v2.1/accounts/{accountId}/templates/{templateId}/custom_fields | Creates custom document fields in an existing template document.
[**customFieldsPutTemplateCustomFields**](TemplateCustomFieldsAPI.md#customfieldsputtemplatecustomfields) | **PUT** /v2.1/accounts/{accountId}/templates/{templateId}/custom_fields | Updates envelope custom fields in a template.


# **customFieldsDeleteTemplateCustomFields**
```swift
    open class func customFieldsDeleteTemplateCustomFields(accountId: String, templateId: String, templateCustomFields: TemplateCustomFields? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<CustomFieldsDeleteTemplateCustomFields>
```

Deletes envelope custom fields in a template.

Deletes envelope custom fields in a template.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let templateId = "templateId_example" // String | The id of the template.
let templateCustomFields = TemplateCustomFields(listCustomFields: [nil], textCustomFields: [nil]) // TemplateCustomFields |  (optional)

// Deletes envelope custom fields in a template.
TemplateCustomFieldsAPI.customFieldsDeleteTemplateCustomFields(accountId: accountId, templateId: templateId, templateCustomFields: templateCustomFields).whenComplete { result in
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
 **templateCustomFields** | [**TemplateCustomFields**](TemplateCustomFields.md) |  | [optional] 

### Return type

#### CustomFieldsDeleteTemplateCustomFields

```swift
public enum CustomFieldsDeleteTemplateCustomFields {
    case http200(value: CustomFields?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: CustomFields?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customFieldsGetTemplateCustomFields**
```swift
    open class func customFieldsGetTemplateCustomFields(accountId: String, templateId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<CustomFieldsGetTemplateCustomFields>
```

Gets the custom document fields from a template.

Retrieves the custom document field information from an existing template.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let templateId = "templateId_example" // String | The id of the template.

// Gets the custom document fields from a template.
TemplateCustomFieldsAPI.customFieldsGetTemplateCustomFields(accountId: accountId, templateId: templateId).whenComplete { result in
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

### Return type

#### CustomFieldsGetTemplateCustomFields

```swift
public enum CustomFieldsGetTemplateCustomFields {
    case http200(value: CustomFields?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: CustomFields?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customFieldsPostTemplateCustomFields**
```swift
    open class func customFieldsPostTemplateCustomFields(accountId: String, templateId: String, templateCustomFields: TemplateCustomFields? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<CustomFieldsPostTemplateCustomFields>
```

Creates custom document fields in an existing template document.

Creates custom document fields in an existing template document.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let templateId = "templateId_example" // String | The id of the template.
let templateCustomFields = TemplateCustomFields(listCustomFields: [nil], textCustomFields: [nil]) // TemplateCustomFields |  (optional)

// Creates custom document fields in an existing template document.
TemplateCustomFieldsAPI.customFieldsPostTemplateCustomFields(accountId: accountId, templateId: templateId, templateCustomFields: templateCustomFields).whenComplete { result in
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
 **templateId** | **String** | The id of the template. | 
 **templateCustomFields** | [**TemplateCustomFields**](TemplateCustomFields.md) |  | [optional] 

### Return type

#### CustomFieldsPostTemplateCustomFields

```swift
public enum CustomFieldsPostTemplateCustomFields {
    case http201(value: CustomFields?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: CustomFields?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customFieldsPutTemplateCustomFields**
```swift
    open class func customFieldsPutTemplateCustomFields(accountId: String, templateId: String, templateCustomFields: TemplateCustomFields? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<CustomFieldsPutTemplateCustomFields>
```

Updates envelope custom fields in a template.

Updates the custom fields in a template.  Each custom field used in a template must have a unique name.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let templateId = "templateId_example" // String | The id of the template.
let templateCustomFields = TemplateCustomFields(listCustomFields: [nil], textCustomFields: [nil]) // TemplateCustomFields |  (optional)

// Updates envelope custom fields in a template.
TemplateCustomFieldsAPI.customFieldsPutTemplateCustomFields(accountId: accountId, templateId: templateId, templateCustomFields: templateCustomFields).whenComplete { result in
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
 **templateCustomFields** | [**TemplateCustomFields**](TemplateCustomFields.md) |  | [optional] 

### Return type

#### CustomFieldsPutTemplateCustomFields

```swift
public enum CustomFieldsPutTemplateCustomFields {
    case http200(value: CustomFields?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: CustomFields?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

