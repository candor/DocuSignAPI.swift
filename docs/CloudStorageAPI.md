# CloudStorageAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cloudStorageFolderGetCloudStorageFolder**](CloudStorageAPI.md#cloudstoragefoldergetcloudstoragefolder) | **GET** /v2.1/accounts/{accountId}/users/{userId}/cloud_storage/{serviceId}/folders/{folderId} | Gets a list of items from a cloud storage provider.
[**cloudStorageFolderGetCloudStorageFolderAll**](CloudStorageAPI.md#cloudstoragefoldergetcloudstoragefolderall) | **GET** /v2.1/accounts/{accountId}/users/{userId}/cloud_storage/{serviceId}/folders | Retrieves a list of all the items in a specified folder from the specified cloud storage provider.


# **cloudStorageFolderGetCloudStorageFolder**
```swift
    open class func cloudStorageFolderGetCloudStorageFolder(accountId: String, folderId: String, serviceId: String, userId: String, cloudStorageFolderPath: String? = nil, cloudStorageFolderidPlain: String? = nil, count: String? = nil, order: String? = nil, orderBy: String? = nil, searchText: String? = nil, startPosition: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<CloudStorageFolderGetCloudStorageFolder>
```

Gets a list of items from a cloud storage provider.

Retrieves a list of the user's items from the specified cloud storage provider.   To limit the scope of the items returned, provide a comma-separated list of folder ids in the request.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let folderId = "folderId_example" // String | The id of the folder.
let serviceId = "serviceId_example" // String | The ID of the service to access.   Valid values are the service name (\"Box\") or the numerical serviceId (\"4136\").
let userId = "userId_example" // String | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing. 
let cloudStorageFolderPath = "cloudStorageFolderPath_example" // String | The file path to a cloud storage folder. (optional)
let cloudStorageFolderidPlain = "cloudStorageFolderidPlain_example" // String | A plain-text folder id that you can use as an alternative to the existing folder id. This property is mainly used for rooms. Enter multiple folder ids as a comma-separated list. (optional)
let count = "count_example" // String | An optional value that sets how many items are included in the response.   The default setting for this is 25.  (optional)
let order = "order_example" // String | (Optional) The order in which to sort the results.  Valid values are:    * `asc`: Ascending order. * `desc`: Descending order.  (optional)
let orderBy = "orderBy_example" // String | (Optional) The file attribute to use to sort the results.  Valid values are:   * `modified` * `name` (optional)
let searchText = "searchText_example" // String | Use this parameter to search for specific text. (optional)
let startPosition = "startPosition_example" // String | The starting index position in the result set from which to start returning values. The default setting is `0`. (optional)

// Gets a list of items from a cloud storage provider.
CloudStorageAPI.cloudStorageFolderGetCloudStorageFolder(accountId: accountId, folderId: folderId, serviceId: serviceId, userId: userId, cloudStorageFolderPath: cloudStorageFolderPath, cloudStorageFolderidPlain: cloudStorageFolderidPlain, count: count, order: order, orderBy: orderBy, searchText: searchText, startPosition: startPosition).whenComplete { result in
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
 **folderId** | **String** | The id of the folder. | 
 **serviceId** | **String** | The ID of the service to access.   Valid values are the service name (\&quot;Box\&quot;) or the numerical serviceId (\&quot;4136\&quot;). | 
 **userId** | **String** | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, &#x60;userId&#x60; can represent another user whom the Administrator is accessing.  | 
 **cloudStorageFolderPath** | **String** | The file path to a cloud storage folder. | [optional] 
 **cloudStorageFolderidPlain** | **String** | A plain-text folder id that you can use as an alternative to the existing folder id. This property is mainly used for rooms. Enter multiple folder ids as a comma-separated list. | [optional] 
 **count** | **String** | An optional value that sets how many items are included in the response.   The default setting for this is 25.  | [optional] 
 **order** | **String** | (Optional) The order in which to sort the results.  Valid values are:    * &#x60;asc&#x60;: Ascending order. * &#x60;desc&#x60;: Descending order.  | [optional] 
 **orderBy** | **String** | (Optional) The file attribute to use to sort the results.  Valid values are:   * &#x60;modified&#x60; * &#x60;name&#x60; | [optional] 
 **searchText** | **String** | Use this parameter to search for specific text. | [optional] 
 **startPosition** | **String** | The starting index position in the result set from which to start returning values. The default setting is &#x60;0&#x60;. | [optional] 

### Return type

#### CloudStorageFolderGetCloudStorageFolder

```swift
public enum CloudStorageFolderGetCloudStorageFolder {
    case http200(value: ExternalFolder?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ExternalFolder?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cloudStorageFolderGetCloudStorageFolderAll**
```swift
    open class func cloudStorageFolderGetCloudStorageFolderAll(accountId: String, serviceId: String, userId: String, cloudStorageFolderPath: String? = nil, count: String? = nil, order: String? = nil, orderBy: String? = nil, searchText: String? = nil, startPosition: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<CloudStorageFolderGetCloudStorageFolderAll>
```

Retrieves a list of all the items in a specified folder from the specified cloud storage provider.

Retrieves a list of all the items in a specified folder from the specified cloud storage provider. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let serviceId = "serviceId_example" // String | The ID of the service to access.   Valid values are the service name (\"Box\") or the numerical serviceId (\"4136\").
let userId = "userId_example" // String | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing. 
let cloudStorageFolderPath = "cloudStorageFolderPath_example" // String | A comma separated list of folder IDs included in the request.  (optional)
let count = "count_example" // String | An optional value that sets how many items are included in the response.   The default setting for this is 25.  (optional)
let order = "order_example" // String | (Optional) The order in which to sort the results.  Valid values are:    * `asc`: Ascending order. * `desc`: Descending order.  (optional)
let orderBy = "orderBy_example" // String | (Optional) The file attribute to use to sort the results.  Valid values are:   * `modified` * `name` (optional)
let searchText = "searchText_example" // String | Use this parameter to search for specific text. (optional)
let startPosition = "startPosition_example" // String | Indicates the starting point of the first item included in the response set. It uses a 0-based index. The default setting for this is 0.   (optional)

// Retrieves a list of all the items in a specified folder from the specified cloud storage provider.
CloudStorageAPI.cloudStorageFolderGetCloudStorageFolderAll(accountId: accountId, serviceId: serviceId, userId: userId, cloudStorageFolderPath: cloudStorageFolderPath, count: count, order: order, orderBy: orderBy, searchText: searchText, startPosition: startPosition).whenComplete { result in
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
 **serviceId** | **String** | The ID of the service to access.   Valid values are the service name (\&quot;Box\&quot;) or the numerical serviceId (\&quot;4136\&quot;). | 
 **userId** | **String** | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, &#x60;userId&#x60; can represent another user whom the Administrator is accessing.  | 
 **cloudStorageFolderPath** | **String** | A comma separated list of folder IDs included in the request.  | [optional] 
 **count** | **String** | An optional value that sets how many items are included in the response.   The default setting for this is 25.  | [optional] 
 **order** | **String** | (Optional) The order in which to sort the results.  Valid values are:    * &#x60;asc&#x60;: Ascending order. * &#x60;desc&#x60;: Descending order.  | [optional] 
 **orderBy** | **String** | (Optional) The file attribute to use to sort the results.  Valid values are:   * &#x60;modified&#x60; * &#x60;name&#x60; | [optional] 
 **searchText** | **String** | Use this parameter to search for specific text. | [optional] 
 **startPosition** | **String** | Indicates the starting point of the first item included in the response set. It uses a 0-based index. The default setting for this is 0.   | [optional] 

### Return type

#### CloudStorageFolderGetCloudStorageFolderAll

```swift
public enum CloudStorageFolderGetCloudStorageFolderAll {
    case http200(value: ExternalFolder?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ExternalFolder?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

