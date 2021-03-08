# NotaryAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**notaryGetNotary**](NotaryAPI.md#notarygetnotary) | **GET** /v2.1/current_user/notary | Gets settings for a  notary user.
[**notaryPostNotary**](NotaryAPI.md#notarypostnotary) | **POST** /v2.1/current_user/notary | Registers the current user as a notary.
[**notaryPutNotary**](NotaryAPI.md#notaryputnotary) | **PUT** /v2.1/current_user/notary | Updates notary information for the current user.


# **notaryGetNotary**
```swift
    open class func notaryGetNotary(includeJurisdictions: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<NotaryGetNotary>
```

Gets settings for a  notary user.

Gets settings for a notary user. The current user must be a notary.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let includeJurisdictions = "includeJurisdictions_example" // String | If **true**, the response will include a `jurisdiction` property that contains an array of all supported jurisdictions for the current user. (optional)

// Gets settings for a  notary user.
NotaryAPI.notaryGetNotary(includeJurisdictions: includeJurisdictions).whenComplete { result in
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
 **includeJurisdictions** | **String** | If **true**, the response will include a &#x60;jurisdiction&#x60; property that contains an array of all supported jurisdictions for the current user. | [optional] 

### Return type

#### NotaryGetNotary

```swift
public enum NotaryGetNotary {
    case http200(value: NotaryResult?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: NotaryResult?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notaryPostNotary**
```swift
    open class func notaryPostNotary(notary: Notary? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<NotaryPostNotary>
```

Registers the current user as a notary.

Registers the current user as a notary.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let notary = Notary(createdDate: "createdDate_example", enabled: "enabled_example", searchable: "searchable_example", userInfo: nil) // Notary |  (optional)

// Registers the current user as a notary.
NotaryAPI.notaryPostNotary(notary: notary).whenComplete { result in
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
 **notary** | [**Notary**](Notary.md) |  | [optional] 

### Return type

#### NotaryPostNotary

```swift
public enum NotaryPostNotary {
    case http201(value: Notary?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Notary?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notaryPutNotary**
```swift
    open class func notaryPutNotary(notary: Notary? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<NotaryPutNotary>
```

Updates notary information for the current user.

Updates notary information for the current user.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let notary = Notary(createdDate: "createdDate_example", enabled: "enabled_example", searchable: "searchable_example", userInfo: nil) // Notary |  (optional)

// Updates notary information for the current user.
NotaryAPI.notaryPutNotary(notary: notary).whenComplete { result in
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
 **notary** | [**Notary**](Notary.md) |  | [optional] 

### Return type

#### NotaryPutNotary

```swift
public enum NotaryPutNotary {
    case http200(value: Notary?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Notary?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

