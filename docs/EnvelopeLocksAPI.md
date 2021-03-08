# EnvelopeLocksAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**lockDeleteEnvelopeLock**](EnvelopeLocksAPI.md#lockdeleteenvelopelock) | **DELETE** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/lock | Deletes an envelope lock.
[**lockGetEnvelopeLock**](EnvelopeLocksAPI.md#lockgetenvelopelock) | **GET** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/lock | Gets envelope lock information.
[**lockPostEnvelopeLock**](EnvelopeLocksAPI.md#lockpostenvelopelock) | **POST** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/lock | Locks an envelope.
[**lockPutEnvelopeLock**](EnvelopeLocksAPI.md#lockputenvelopelock) | **PUT** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/lock | Updates an envelope lock.


# **lockDeleteEnvelopeLock**
```swift
    open class func lockDeleteEnvelopeLock(accountId: String, envelopeId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<LockDeleteEnvelopeLock>
```

Deletes an envelope lock.

Deletes the lock from the specified envelope. The user must match the user specified by the `lockByUser` property, and the integrator key that you pass in must match the integrator key information. You must also include the `X-DocuSign-Edit` header, which contains a `lockToken` that proves ownership of the lock and the `lockDurationInSeconds`. The token that you need for this header is returned in the response to the POST and GET methods.  Example:  `X-DocuSign-Edit:<DocuSignEdit><LockToken>{{lockToken}}</LockToken></DocuSignEdit>`  **Important**: You must use the query parameter `save_changes` to indicate whether you want to commit the user's changes when deleting the lock. When set to **true**, the system commits the changes that the user made while the lock was active. When set to **false**, the user's changes are discarded. This query parameter does not currently appear in the list of query parameters on this page. However, it is crucial that you include it to ensure that the user's changes are saved or discarded as appropriate.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 

// Deletes an envelope lock.
EnvelopeLocksAPI.lockDeleteEnvelopeLock(accountId: accountId, envelopeId: envelopeId).whenComplete { result in
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

#### LockDeleteEnvelopeLock

```swift
public enum LockDeleteEnvelopeLock {
    case http200(value: EnvelopeLocks?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeLocks?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lockGetEnvelopeLock**
```swift
    open class func lockGetEnvelopeLock(accountId: String, envelopeId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<LockGetEnvelopeLock>
```

Gets envelope lock information.

Retrieves general information about an envelope lock.  If the call is made by the locked by user and the request has the same integrator key as original, then the `X-DocuSign-Edit` header and additional lock information is included in the response. This information enables users to recover a lost editing session token and the `X-DocuSign-Edit` header.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 

// Gets envelope lock information.
EnvelopeLocksAPI.lockGetEnvelopeLock(accountId: accountId, envelopeId: envelopeId).whenComplete { result in
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

#### LockGetEnvelopeLock

```swift
public enum LockGetEnvelopeLock {
    case http200(value: EnvelopeLocks?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeLocks?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lockPostEnvelopeLock**
```swift
    open class func lockPostEnvelopeLock(accountId: String, envelopeId: String, lockRequest: LockRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<LockPostEnvelopeLock>
```

Locks an envelope.

This method locks the specified envelope and sets the time until the lock expires to prevent other users or recipients from changing the envelope.  The response to this request returns a `lockToken` parameter. You must use the `lockToken` to update or delete an existing lock. You must also include the `lockToken` in the header for every PUT call that you make on the envelope while it is locked. If you do not include the `lockToken`, the system returns the following error:  ``` {    \"errorCode\": \"EDIT_LOCK_NOT_LOCK_OWNER\",    \"message\": \"The user is not the owner of the lock. The template is locked by another user or in another application\" } ```  **Note**: Users must have envelope locking capability enabled to use this function (userSetting `canLockEnvelopes` must be  set to true for the user). 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let lockRequest = lockRequest(lockDurationInSeconds: "lockDurationInSeconds_example", lockedByApp: "lockedByApp_example", lockType: "lockType_example", templatePassword: "templatePassword_example", useScratchPad: "useScratchPad_example") // LockRequest |  (optional)

// Locks an envelope.
EnvelopeLocksAPI.lockPostEnvelopeLock(accountId: accountId, envelopeId: envelopeId, lockRequest: lockRequest).whenComplete { result in
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
 **lockRequest** | [**LockRequest**](LockRequest.md) |  | [optional] 

### Return type

#### LockPostEnvelopeLock

```swift
public enum LockPostEnvelopeLock {
    case http201(value: EnvelopeLocks?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeLocks?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lockPutEnvelopeLock**
```swift
    open class func lockPutEnvelopeLock(accountId: String, envelopeId: String, lockRequest: LockRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<LockPutEnvelopeLock>
```

Updates an envelope lock.

Updates the lock duration or the `lockedByApp` property for the specified envelope. The user must match the user specified by the `lockByUser` property, and the integrator key that you pass in must match the integrator key information. You must also include the `X-DocuSign-Edit` header, which contains a `lockToken` that proves ownership of the lock and the `lockDurationInSeconds`. The token that you need for this header is returned in the response to the POST and GET methods.  Example:  `X-DocuSign-Edit:<DocuSignEdit><LockToken>{{lockToken}}</LockToken></DocuSignEdit>`

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let lockRequest = lockRequest(lockDurationInSeconds: "lockDurationInSeconds_example", lockedByApp: "lockedByApp_example", lockType: "lockType_example", templatePassword: "templatePassword_example", useScratchPad: "useScratchPad_example") // LockRequest |  (optional)

// Updates an envelope lock.
EnvelopeLocksAPI.lockPutEnvelopeLock(accountId: accountId, envelopeId: envelopeId, lockRequest: lockRequest).whenComplete { result in
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
 **lockRequest** | [**LockRequest**](LockRequest.md) |  | [optional] 

### Return type

#### LockPutEnvelopeLock

```swift
public enum LockPutEnvelopeLock {
    case http200(value: EnvelopeLocks?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeLocks?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

