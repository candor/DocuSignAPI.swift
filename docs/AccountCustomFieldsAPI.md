# AccountCustomFieldsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accountCustomFieldsDeleteAccountCustomFields**](AccountCustomFieldsAPI.md#accountcustomfieldsdeleteaccountcustomfields) | **DELETE** /v2.1/accounts/{accountId}/custom_fields/{customFieldId} | Deletes an account custom field.
[**accountCustomFieldsGetAccountCustomFields**](AccountCustomFieldsAPI.md#accountcustomfieldsgetaccountcustomfields) | **GET** /v2.1/accounts/{accountId}/custom_fields | Gets a list of custom fields.
[**accountCustomFieldsPostAccountCustomFields**](AccountCustomFieldsAPI.md#accountcustomfieldspostaccountcustomfields) | **POST** /v2.1/accounts/{accountId}/custom_fields | Creates an account custom field.
[**accountCustomFieldsPutAccountCustomFields**](AccountCustomFieldsAPI.md#accountcustomfieldsputaccountcustomfields) | **PUT** /v2.1/accounts/{accountId}/custom_fields/{customFieldId} | Updates an account custom field.


# **accountCustomFieldsDeleteAccountCustomFields**
```swift
    open class func accountCustomFieldsDeleteAccountCustomFields(accountId: String, customFieldId: String, applyToTemplates: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<AccountCustomFieldsDeleteAccountCustomFields>
```

Deletes an account custom field.

This method deletes an existing account custom field.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let customFieldId = "customFieldId_example" // String | The id of the custom field.
let applyToTemplates = "applyToTemplates_example" // String |  (optional)

// Deletes an account custom field.
AccountCustomFieldsAPI.accountCustomFieldsDeleteAccountCustomFields(accountId: accountId, customFieldId: customFieldId, applyToTemplates: applyToTemplates).whenComplete { result in
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
 **customFieldId** | **String** | The id of the custom field. | 
 **applyToTemplates** | **String** |  | [optional] 

### Return type

#### AccountCustomFieldsDeleteAccountCustomFields

```swift
public enum AccountCustomFieldsDeleteAccountCustomFields {
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

# **accountCustomFieldsGetAccountCustomFields**
```swift
    open class func accountCustomFieldsGetAccountCustomFields(accountId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<AccountCustomFieldsGetAccountCustomFields>
```

Gets a list of custom fields.

This method returns a list of the envelope and document custom fields associated with an account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.

// Gets a list of custom fields.
AccountCustomFieldsAPI.accountCustomFieldsGetAccountCustomFields(accountId: accountId).whenComplete { result in
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

### Return type

#### AccountCustomFieldsGetAccountCustomFields

```swift
public enum AccountCustomFieldsGetAccountCustomFields {
    case http200(value: AccountCustomFields?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: AccountCustomFields?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountCustomFieldsPostAccountCustomFields**
```swift
    open class func accountCustomFieldsPostAccountCustomFields(accountId: String, applyToTemplates: String? = nil, customField: CustomField? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<AccountCustomFieldsPostAccountCustomFields>
```

Creates an account custom field.

This method creates a custom field and makes it available for all new envelopes associated with an account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let applyToTemplates = "applyToTemplates_example" // String | (Optional) When set to **true**, the new custom field is applied to all of the templates on the account. (optional)
let customField = customField(customFieldType: "customFieldType_example", errorDetails: errorDetails(errorCode: "errorCode_example", message: "message_example"), fieldId: "fieldId_example", listItems: ["listItems_example"], name: "name_example", `required`: "`required`_example", show: "show_example", value: "value_example") // CustomField |  (optional)

// Creates an account custom field.
AccountCustomFieldsAPI.accountCustomFieldsPostAccountCustomFields(accountId: accountId, applyToTemplates: applyToTemplates, customField: customField).whenComplete { result in
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
 **applyToTemplates** | **String** | (Optional) When set to **true**, the new custom field is applied to all of the templates on the account. | [optional] 
 **customField** | [**CustomField**](CustomField.md) |  | [optional] 

### Return type

#### AccountCustomFieldsPostAccountCustomFields

```swift
public enum AccountCustomFieldsPostAccountCustomFields {
    case http201(value: AccountCustomFields?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: AccountCustomFields?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountCustomFieldsPutAccountCustomFields**
```swift
    open class func accountCustomFieldsPutAccountCustomFields(accountId: String, customFieldId: String, applyToTemplates: String? = nil, customField: CustomField? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<AccountCustomFieldsPutAccountCustomFields>
```

Updates an account custom field.

This method updates an existing account custom field.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let customFieldId = "customFieldId_example" // String | The id of the custom field.
let applyToTemplates = "applyToTemplates_example" // String |  (optional)
let customField = customField(customFieldType: "customFieldType_example", errorDetails: errorDetails(errorCode: "errorCode_example", message: "message_example"), fieldId: "fieldId_example", listItems: ["listItems_example"], name: "name_example", `required`: "`required`_example", show: "show_example", value: "value_example") // CustomField |  (optional)

// Updates an account custom field.
AccountCustomFieldsAPI.accountCustomFieldsPutAccountCustomFields(accountId: accountId, customFieldId: customFieldId, applyToTemplates: applyToTemplates, customField: customField).whenComplete { result in
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
 **customFieldId** | **String** | The id of the custom field. | 
 **applyToTemplates** | **String** |  | [optional] 
 **customField** | [**CustomField**](CustomField.md) |  | [optional] 

### Return type

#### AccountCustomFieldsPutAccountCustomFields

```swift
public enum AccountCustomFieldsPutAccountCustomFields {
    case http200(value: AccountCustomFields?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: AccountCustomFields?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

