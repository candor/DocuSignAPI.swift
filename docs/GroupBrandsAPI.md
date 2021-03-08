# GroupBrandsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**brandsDeleteGroupBrands**](GroupBrandsAPI.md#brandsdeletegroupbrands) | **DELETE** /v2.1/accounts/{accountId}/groups/{groupId}/brands | Deletes brand information from a group.
[**brandsGetGroupBrands**](GroupBrandsAPI.md#brandsgetgroupbrands) | **GET** /v2.1/accounts/{accountId}/groups/{groupId}/brands | Gets the brand information for a group.
[**brandsPutGroupBrands**](GroupBrandsAPI.md#brandsputgroupbrands) | **PUT** /v2.1/accounts/{accountId}/groups/{groupId}/brands | Adds an existing brand to a group.


# **brandsDeleteGroupBrands**
```swift
    open class func brandsDeleteGroupBrands(accountId: String, groupId: String, brandsRequest: BrandsRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BrandsDeleteGroupBrands>
```

Deletes brand information from a group.

This method deletes one or more brands from a group.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let groupId = "groupId_example" // String | The id of the group.
let brandsRequest = brandsRequest(brands: [nil]) // BrandsRequest |  (optional)

// Deletes brand information from a group.
GroupBrandsAPI.brandsDeleteGroupBrands(accountId: accountId, groupId: groupId, brandsRequest: brandsRequest).whenComplete { result in
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
 **groupId** | **String** | The id of the group. | 
 **brandsRequest** | [**BrandsRequest**](BrandsRequest.md) |  | [optional] 

### Return type

#### BrandsDeleteGroupBrands

```swift
public enum BrandsDeleteGroupBrands {
    case http200(value: BrandsResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: BrandsResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **brandsGetGroupBrands**
```swift
    open class func brandsGetGroupBrands(accountId: String, groupId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BrandsGetGroupBrands>
```

Gets the brand information for a group.

This method returns information about the brands associated with a group.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let groupId = "groupId_example" // String | The id of the group.

// Gets the brand information for a group.
GroupBrandsAPI.brandsGetGroupBrands(accountId: accountId, groupId: groupId).whenComplete { result in
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
 **groupId** | **String** | The id of the group. | 

### Return type

#### BrandsGetGroupBrands

```swift
public enum BrandsGetGroupBrands {
    case http200(value: BrandsResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: BrandsResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **brandsPutGroupBrands**
```swift
    open class func brandsPutGroupBrands(accountId: String, groupId: String, brandsRequest: BrandsRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BrandsPutGroupBrands>
```

Adds an existing brand to a group.

This method adds one or more existing brands to a group based on the `groupId`.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let groupId = "groupId_example" // String | The ID of the group being accessed.
let brandsRequest = brandsRequest(brands: [nil]) // BrandsRequest |  (optional)

// Adds an existing brand to a group.
GroupBrandsAPI.brandsPutGroupBrands(accountId: accountId, groupId: groupId, brandsRequest: brandsRequest).whenComplete { result in
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
 **groupId** | **String** | The ID of the group being accessed. | 
 **brandsRequest** | [**BrandsRequest**](BrandsRequest.md) |  | [optional] 

### Return type

#### BrandsPutGroupBrands

```swift
public enum BrandsPutGroupBrands {
    case http200(value: BrandsResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: BrandsResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

