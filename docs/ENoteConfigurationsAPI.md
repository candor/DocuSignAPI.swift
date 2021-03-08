# ENoteConfigurationsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**eNoteConfigurationDeleteENoteConfiguration**](ENoteConfigurationsAPI.md#enoteconfigurationdeleteenoteconfiguration) | **DELETE** /v2.1/accounts/{accountId}/settings/enote_configuration | Deletes configuration information for the eNote eOriginal integration.
[**eNoteConfigurationGetENoteConfiguration**](ENoteConfigurationsAPI.md#enoteconfigurationgetenoteconfiguration) | **GET** /v2.1/accounts/{accountId}/settings/enote_configuration | Returns the configuration information for the eNote eOriginal integration.
[**eNoteConfigurationPutENoteConfiguration**](ENoteConfigurationsAPI.md#enoteconfigurationputenoteconfiguration) | **PUT** /v2.1/accounts/{accountId}/settings/enote_configuration | Updates configuration information for the eNote eOriginal integration.


# **eNoteConfigurationDeleteENoteConfiguration**
```swift
    open class func eNoteConfigurationDeleteENoteConfiguration(accountId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ENoteConfigurationDeleteENoteConfiguration>
```

Deletes configuration information for the eNote eOriginal integration.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.

// Deletes configuration information for the eNote eOriginal integration.
ENoteConfigurationsAPI.eNoteConfigurationDeleteENoteConfiguration(accountId: accountId).whenComplete { result in
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

#### ENoteConfigurationDeleteENoteConfiguration

```swift
public enum ENoteConfigurationDeleteENoteConfiguration {
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

# **eNoteConfigurationGetENoteConfiguration**
```swift
    open class func eNoteConfigurationGetENoteConfiguration(accountId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ENoteConfigurationGetENoteConfiguration>
```

Returns the configuration information for the eNote eOriginal integration.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.

// Returns the configuration information for the eNote eOriginal integration.
ENoteConfigurationsAPI.eNoteConfigurationGetENoteConfiguration(accountId: accountId).whenComplete { result in
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

#### ENoteConfigurationGetENoteConfiguration

```swift
public enum ENoteConfigurationGetENoteConfiguration {
    case http200(value: ENoteConfiguration?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ENoteConfiguration?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **eNoteConfigurationPutENoteConfiguration**
```swift
    open class func eNoteConfigurationPutENoteConfiguration(accountId: String, eNoteConfiguration: ENoteConfiguration? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ENoteConfigurationPutENoteConfiguration>
```

Updates configuration information for the eNote eOriginal integration.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let eNoteConfiguration = eNoteConfiguration(apiKey: "apiKey_example", connectConfigured: "connectConfigured_example", eNoteConfigured: "eNoteConfigured_example", organization: "organization_example", password: "password_example", userName: "userName_example") // ENoteConfiguration |  (optional)

// Updates configuration information for the eNote eOriginal integration.
ENoteConfigurationsAPI.eNoteConfigurationPutENoteConfiguration(accountId: accountId, eNoteConfiguration: eNoteConfiguration).whenComplete { result in
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
 **eNoteConfiguration** | [**ENoteConfiguration**](ENoteConfiguration.md) |  | [optional] 

### Return type

#### ENoteConfigurationPutENoteConfiguration

```swift
public enum ENoteConfigurationPutENoteConfiguration {
    case http200(value: ENoteConfiguration?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ENoteConfiguration?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

