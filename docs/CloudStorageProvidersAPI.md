# CloudStorageProvidersAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cloudStorageDeleteCloudStorage**](CloudStorageProvidersAPI.md#cloudstoragedeletecloudstorage) | **DELETE** /v2.1/accounts/{accountId}/users/{userId}/cloud_storage/{serviceId} | Deletes the user authentication information for the specified cloud storage provider.
[**cloudStorageDeleteCloudStorageProviders**](CloudStorageProvidersAPI.md#cloudstoragedeletecloudstorageproviders) | **DELETE** /v2.1/accounts/{accountId}/users/{userId}/cloud_storage | Deletes the user authentication information for one or more cloud storage providers.
[**cloudStorageGetCloudStorage**](CloudStorageProvidersAPI.md#cloudstoragegetcloudstorage) | **GET** /v2.1/accounts/{accountId}/users/{userId}/cloud_storage/{serviceId} | Gets the specified Cloud Storage Provider configuration for the User.
[**cloudStorageGetCloudStorageProviders**](CloudStorageProvidersAPI.md#cloudstoragegetcloudstorageproviders) | **GET** /v2.1/accounts/{accountId}/users/{userId}/cloud_storage | Get the Cloud Storage Provider configuration for the specified user.
[**cloudStoragePostCloudStorage**](CloudStorageProvidersAPI.md#cloudstoragepostcloudstorage) | **POST** /v2.1/accounts/{accountId}/users/{userId}/cloud_storage | Configures the redirect URL information  for one or more cloud storage providers for the specified user.


# **cloudStorageDeleteCloudStorage**
```swift
    open class func cloudStorageDeleteCloudStorage(accountId: String, serviceId: String, userId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<CloudStorageDeleteCloudStorage>
```

Deletes the user authentication information for the specified cloud storage provider.

Deletes the user authentication information for the specified cloud storage provider. The next time the user tries to access the cloud storage provider, they must pass normal authentication for this cloud storage provider.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let serviceId = "serviceId_example" // String | The ID of the service to access.   Valid values are the service name (\"Box\") or the numerical serviceId (\"4136\").
let userId = "userId_example" // String | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing. 

// Deletes the user authentication information for the specified cloud storage provider.
CloudStorageProvidersAPI.cloudStorageDeleteCloudStorage(accountId: accountId, serviceId: serviceId, userId: userId).whenComplete { result in
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

### Return type

#### CloudStorageDeleteCloudStorage

```swift
public enum CloudStorageDeleteCloudStorage {
    case http200(value: CloudStorageProviders?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: CloudStorageProviders?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cloudStorageDeleteCloudStorageProviders**
```swift
    open class func cloudStorageDeleteCloudStorageProviders(accountId: String, userId: String, cloudStorageProviders: CloudStorageProviders? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<CloudStorageDeleteCloudStorageProviders>
```

Deletes the user authentication information for one or more cloud storage providers.

Deletes the user authentication information for one or more cloud storage providers. The next time the user tries to access the cloud storage provider, they must pass normal authentication.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let userId = "userId_example" // String | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing. 
let cloudStorageProviders = CloudStorageProviders(storageProviders: [cloudStorageProvider(authenticationUrl: "authenticationUrl_example", errorDetails: errorDetails(errorCode: "errorCode_example", message: "message_example"), redirectUrl: "redirectUrl_example", service: "service_example", serviceId: "serviceId_example")]) // CloudStorageProviders |  (optional)

// Deletes the user authentication information for one or more cloud storage providers.
CloudStorageProvidersAPI.cloudStorageDeleteCloudStorageProviders(accountId: accountId, userId: userId, cloudStorageProviders: cloudStorageProviders).whenComplete { result in
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
 **userId** | **String** | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, &#x60;userId&#x60; can represent another user whom the Administrator is accessing.  | 
 **cloudStorageProviders** | [**CloudStorageProviders**](CloudStorageProviders.md) |  | [optional] 

### Return type

#### CloudStorageDeleteCloudStorageProviders

```swift
public enum CloudStorageDeleteCloudStorageProviders {
    case http200(value: CloudStorageProviders?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: CloudStorageProviders?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cloudStorageGetCloudStorage**
```swift
    open class func cloudStorageGetCloudStorage(accountId: String, serviceId: String, userId: String, redirectUrl: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<CloudStorageGetCloudStorage>
```

Gets the specified Cloud Storage Provider configuration for the User.

Retrieves the list of cloud storage providers enabled for the account and the configuration information for the user.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let serviceId = "serviceId_example" // String | The ID of the service to access.   Valid values are the service name (\"Box\") or the numerical serviceId (\"4136\").
let userId = "userId_example" // String | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing. 
let redirectUrl = "redirectUrl_example" // String |  The URL the user is redirected to after the cloud storage provider authenticates the user. Using this will append the redirectUrl to the authenticationUrl.  The redirectUrl is restricted to URLs in the docusign.com or docusign.net domains.   (optional)

// Gets the specified Cloud Storage Provider configuration for the User.
CloudStorageProvidersAPI.cloudStorageGetCloudStorage(accountId: accountId, serviceId: serviceId, userId: userId, redirectUrl: redirectUrl).whenComplete { result in
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
 **redirectUrl** | **String** |  The URL the user is redirected to after the cloud storage provider authenticates the user. Using this will append the redirectUrl to the authenticationUrl.  The redirectUrl is restricted to URLs in the docusign.com or docusign.net domains.   | [optional] 

### Return type

#### CloudStorageGetCloudStorage

```swift
public enum CloudStorageGetCloudStorage {
    case http200(value: CloudStorageProviders?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: CloudStorageProviders?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cloudStorageGetCloudStorageProviders**
```swift
    open class func cloudStorageGetCloudStorageProviders(accountId: String, userId: String, redirectUrl: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<CloudStorageGetCloudStorageProviders>
```

Get the Cloud Storage Provider configuration for the specified user.

Retrieves the list of cloud storage providers enabled for the account and the configuration information for the user. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let userId = "userId_example" // String | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing. 
let redirectUrl = "redirectUrl_example" // String |  The URL the user is redirected to after the cloud storage provider authenticates the user. Using this will append the redirectUrl to the authenticationUrl.  The redirectUrl is restricted to URLs in the docusign.com or docusign.net domains.   (optional)

// Get the Cloud Storage Provider configuration for the specified user.
CloudStorageProvidersAPI.cloudStorageGetCloudStorageProviders(accountId: accountId, userId: userId, redirectUrl: redirectUrl).whenComplete { result in
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
 **userId** | **String** | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, &#x60;userId&#x60; can represent another user whom the Administrator is accessing.  | 
 **redirectUrl** | **String** |  The URL the user is redirected to after the cloud storage provider authenticates the user. Using this will append the redirectUrl to the authenticationUrl.  The redirectUrl is restricted to URLs in the docusign.com or docusign.net domains.   | [optional] 

### Return type

#### CloudStorageGetCloudStorageProviders

```swift
public enum CloudStorageGetCloudStorageProviders {
    case http200(value: CloudStorageProviders?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: CloudStorageProviders?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cloudStoragePostCloudStorage**
```swift
    open class func cloudStoragePostCloudStorage(accountId: String, userId: String, cloudStorageProviders: CloudStorageProviders? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<CloudStoragePostCloudStorage>
```

Configures the redirect URL information  for one or more cloud storage providers for the specified user.

Configures the redirect URL information  for one or more cloud storage providers for the specified user. The redirect URL is added to the authentication URL to complete the return route.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let userId = "userId_example" // String | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing. 
let cloudStorageProviders = CloudStorageProviders(storageProviders: [cloudStorageProvider(authenticationUrl: "authenticationUrl_example", errorDetails: errorDetails(errorCode: "errorCode_example", message: "message_example"), redirectUrl: "redirectUrl_example", service: "service_example", serviceId: "serviceId_example")]) // CloudStorageProviders |  (optional)

// Configures the redirect URL information  for one or more cloud storage providers for the specified user.
CloudStorageProvidersAPI.cloudStoragePostCloudStorage(accountId: accountId, userId: userId, cloudStorageProviders: cloudStorageProviders).whenComplete { result in
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
 **userId** | **String** | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, &#x60;userId&#x60; can represent another user whom the Administrator is accessing.  | 
 **cloudStorageProviders** | [**CloudStorageProviders**](CloudStorageProviders.md) |  | [optional] 

### Return type

#### CloudStoragePostCloudStorage

```swift
public enum CloudStoragePostCloudStorage {
    case http201(value: CloudStorageProviders?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: CloudStorageProviders?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

