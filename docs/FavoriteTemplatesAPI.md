# FavoriteTemplatesAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**favoriteTemplatesGetFavoriteTemplates**](FavoriteTemplatesAPI.md#favoritetemplatesgetfavoritetemplates) | **GET** /v2.1/accounts/{accountId}/favorite_templates | 
[**favoriteTemplatesPutFavoriteTemplate**](FavoriteTemplatesAPI.md#favoritetemplatesputfavoritetemplate) | **PUT** /v2.1/accounts/{accountId}/favorite_templates | 
[**favoriteTemplatesUnFavoriteTemplate**](FavoriteTemplatesAPI.md#favoritetemplatesunfavoritetemplate) | **DELETE** /v2.1/accounts/{accountId}/favorite_templates | 


# **favoriteTemplatesGetFavoriteTemplates**
```swift
    open class func favoriteTemplatesGetFavoriteTemplates(accountId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<FavoriteTemplatesGetFavoriteTemplates>
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.

FavoriteTemplatesAPI.favoriteTemplatesGetFavoriteTemplates(accountId: accountId).whenComplete { result in
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

#### FavoriteTemplatesGetFavoriteTemplates

```swift
public enum FavoriteTemplatesGetFavoriteTemplates {
    case http200(value: FavoriteTemplatesInfo?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: FavoriteTemplatesInfo?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **favoriteTemplatesPutFavoriteTemplate**
```swift
    open class func favoriteTemplatesPutFavoriteTemplate(accountId: String, favoriteTemplatesInfo: FavoriteTemplatesInfo? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<FavoriteTemplatesPutFavoriteTemplate>
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let favoriteTemplatesInfo = favoriteTemplatesInfo(errorDetails: nil, favoriteTemplates: [nil], templatesUpdatedCount: 123) // FavoriteTemplatesInfo |  (optional)

FavoriteTemplatesAPI.favoriteTemplatesPutFavoriteTemplate(accountId: accountId, favoriteTemplatesInfo: favoriteTemplatesInfo).whenComplete { result in
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
 **favoriteTemplatesInfo** | [**FavoriteTemplatesInfo**](FavoriteTemplatesInfo.md) |  | [optional] 

### Return type

#### FavoriteTemplatesPutFavoriteTemplate

```swift
public enum FavoriteTemplatesPutFavoriteTemplate {
    case http200(value: FavoriteTemplatesInfo?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: FavoriteTemplatesInfo?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **favoriteTemplatesUnFavoriteTemplate**
```swift
    open class func favoriteTemplatesUnFavoriteTemplate(accountId: String, favoriteTemplatesInfo: FavoriteTemplatesInfo? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<FavoriteTemplatesUnFavoriteTemplate>
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let favoriteTemplatesInfo = favoriteTemplatesInfo(errorDetails: nil, favoriteTemplates: [nil], templatesUpdatedCount: 123) // FavoriteTemplatesInfo |  (optional)

FavoriteTemplatesAPI.favoriteTemplatesUnFavoriteTemplate(accountId: accountId, favoriteTemplatesInfo: favoriteTemplatesInfo).whenComplete { result in
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
 **favoriteTemplatesInfo** | [**FavoriteTemplatesInfo**](FavoriteTemplatesInfo.md) |  | [optional] 

### Return type

#### FavoriteTemplatesUnFavoriteTemplate

```swift
public enum FavoriteTemplatesUnFavoriteTemplate {
    case http200(value: FavoriteTemplatesInfo?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: FavoriteTemplatesInfo?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

