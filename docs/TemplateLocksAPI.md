# TemplateLocksAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**lockDeleteTemplateLock**](TemplateLocksAPI.md#lockdeletetemplatelock) | **DELETE** /v2.1/accounts/{accountId}/templates/{templateId}/lock | Deletes a template lock.
[**lockGetTemplateLock**](TemplateLocksAPI.md#lockgettemplatelock) | **GET** /v2.1/accounts/{accountId}/templates/{templateId}/lock | Gets template lock information.
[**lockPostTemplateLock**](TemplateLocksAPI.md#lockposttemplatelock) | **POST** /v2.1/accounts/{accountId}/templates/{templateId}/lock | Locks a template.
[**lockPutTemplateLock**](TemplateLocksAPI.md#lockputtemplatelock) | **PUT** /v2.1/accounts/{accountId}/templates/{templateId}/lock | Updates a template lock.


# **lockDeleteTemplateLock**
```swift
    open class func lockDeleteTemplateLock(accountId: String, templateId: String, lockRequest: LockRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<LockDeleteTemplateLock>
```

Deletes a template lock.

This method deletes a lock from a template.  You must include the `X-DocuSign-Edit` header, which contains a `lockToken` that proves ownership of the lock and the `lockDurationInSeconds`. The token that you need for this header is returned in the response to the POST and GET methods.  Example:  `X-DocuSign-Edit:<DocuSignEdit><LockToken>{{lockToken}}</LockToken></DocuSignEdit>`    **Important**: You must use the query parameter `save_changes` to indicate whether you want to commit the user's changes when deleting the lock. When set to **true**, the system commits the changes that the user made while the lock was active. When set to **false**, the user's changes are discarded. This query parameter does not currently appear in the list of query parameters on this page due to a technical issue. However, it is crucial that you include it to ensure that the user's changes are saved or discarded as appropriate. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let templateId = "templateId_example" // String | The id of the template.
let lockRequest = lockRequest(lockDurationInSeconds: "lockDurationInSeconds_example", lockedByApp: "lockedByApp_example", lockType: "lockType_example", templatePassword: "templatePassword_example", useScratchPad: "useScratchPad_example") // LockRequest |  (optional)

// Deletes a template lock.
TemplateLocksAPI.lockDeleteTemplateLock(accountId: accountId, templateId: templateId, lockRequest: lockRequest).whenComplete { result in
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
 **lockRequest** | [**LockRequest**](LockRequest.md) |  | [optional] 

### Return type

#### LockDeleteTemplateLock

```swift
public enum LockDeleteTemplateLock {
    case http200(value: LockInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: LockInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lockGetTemplateLock**
```swift
    open class func lockGetTemplateLock(accountId: String, templateId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<LockGetTemplateLock>
```

Gets template lock information.

Retrieves general information about the template lock.  If the call is made by the user who has the lock and the request has the same integration key as original, then the `X-DocuSign-Edit` header  field and additional lock information is included in the response. This enables users to recover a lost editing session token and the `X-DocuSign-Edit` header.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let templateId = "templateId_example" // String | The id of the template.

// Gets template lock information.
TemplateLocksAPI.lockGetTemplateLock(accountId: accountId, templateId: templateId).whenComplete { result in
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

#### LockGetTemplateLock

```swift
public enum LockGetTemplateLock {
    case http200(value: LockInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: LockInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lockPostTemplateLock**
```swift
    open class func lockPostTemplateLock(accountId: String, templateId: String, lockRequest: LockRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<LockPostTemplateLock>
```

Locks a template.

Locks the specified template and sets the time until the lock expires to prevent other users or recipients from changing the template.  The response to this request returns a `lockToken` parameter. You must use the `lockToken` to update or delete an existing lock. You must also include the `lockToken` in the header for every PUT call that you make on the template while the template is locked. If you do not include the `lockToken`, the system returns the following error:  ``` {    \"errorCode\": \"EDIT_LOCK_NOT_LOCK_OWNER\",    \"message\": \"The user is not the owner of the lock. The template is locked by another user or in another application\" } ```  **Note**: Users must have envelope locking capability enabled to use this function (the userSetting property `canLockEnvelopes` must be set to **true** for the user).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let templateId = "templateId_example" // String | The id of the template.
let lockRequest = lockRequest(lockDurationInSeconds: "lockDurationInSeconds_example", lockedByApp: "lockedByApp_example", lockType: "lockType_example", templatePassword: "templatePassword_example", useScratchPad: "useScratchPad_example") // LockRequest |  (optional)

// Locks a template.
TemplateLocksAPI.lockPostTemplateLock(accountId: accountId, templateId: templateId, lockRequest: lockRequest).whenComplete { result in
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
 **lockRequest** | [**LockRequest**](LockRequest.md) |  | [optional] 

### Return type

#### LockPostTemplateLock

```swift
public enum LockPostTemplateLock {
    case http201(value: LockInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: LockInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **lockPutTemplateLock**
```swift
    open class func lockPutTemplateLock(accountId: String, templateId: String, lockRequest: LockRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<LockPutTemplateLock>
```

Updates a template lock.

This method updates the lock duration time or the `lockedByApp` property information for the specified template. The user and integrator key must match the user specified by the `lockByUser` property and integrator key information.   You must also include the `X-DocuSign-Edit` header, which contains a `lockToken` that proves ownership of the lock and the `lockDurationInSeconds`. The token that you need for this header is returned in the response to the POST and GET methods.  Example:  `X-DocuSign-Edit:<DocuSignEdit><LockToken>{{lockToken}}</LockToken></DocuSignEdit>`

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let templateId = "templateId_example" // String | The id of the template.
let lockRequest = lockRequest(lockDurationInSeconds: "lockDurationInSeconds_example", lockedByApp: "lockedByApp_example", lockType: "lockType_example", templatePassword: "templatePassword_example", useScratchPad: "useScratchPad_example") // LockRequest |  (optional)

// Updates a template lock.
TemplateLocksAPI.lockPutTemplateLock(accountId: accountId, templateId: templateId, lockRequest: lockRequest).whenComplete { result in
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
 **lockRequest** | [**LockRequest**](LockRequest.md) |  | [optional] 

### Return type

#### LockPutTemplateLock

```swift
public enum LockPutTemplateLock {
    case http200(value: LockInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: LockInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

