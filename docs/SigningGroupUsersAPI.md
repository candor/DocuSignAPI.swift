# SigningGroupUsersAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**signingGroupsDeleteSigningGroupUsers**](SigningGroupUsersAPI.md#signinggroupsdeletesigninggroupusers) | **DELETE** /v2.1/accounts/{accountId}/signing_groups/{signingGroupId}/users | Deletes  one or more members from a signing group.
[**signingGroupsGetSigningGroupUsers**](SigningGroupUsersAPI.md#signinggroupsgetsigninggroupusers) | **GET** /v2.1/accounts/{accountId}/signing_groups/{signingGroupId}/users | Gets a list of members in a Signing Group.
[**signingGroupsPutSigningGroupUsers**](SigningGroupUsersAPI.md#signinggroupsputsigninggroupusers) | **PUT** /v2.1/accounts/{accountId}/signing_groups/{signingGroupId}/users | Adds members to a signing group. 


# **signingGroupsDeleteSigningGroupUsers**
```swift
    open class func signingGroupsDeleteSigningGroupUsers(accountId: String, signingGroupId: String, signingGroupUsers: SigningGroupUsers? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<SigningGroupsDeleteSigningGroupUsers>
```

Deletes  one or more members from a signing group.

Deletes  one or more members from the specified signing group. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let signingGroupId = "signingGroupId_example" // String | Optional. The ID of the [signing group](https://support.docusign.com/en/guides/ndse-user-guide-signing-groups).  **Note**: When you send an envelope to a signing group, anyone in the group can open it and sign it with their own signature. For this reason, we recommend that you do not include non-signer recipients (such as carbon copy recipients) in the same signing group as signer recipients. However, you could create a second signing group for the non-signer recipients and change the default action of Needs to Sign to a different value, such as Receives a Copy. 
let signingGroupUsers = SigningGroupUsers(users: [nil]) // SigningGroupUsers | A complex type that contains information about users in the signing group. (optional)

// Deletes  one or more members from a signing group.
SigningGroupUsersAPI.signingGroupsDeleteSigningGroupUsers(accountId: accountId, signingGroupId: signingGroupId, signingGroupUsers: signingGroupUsers).whenComplete { result in
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
 **signingGroupId** | **String** | Optional. The ID of the [signing group](https://support.docusign.com/en/guides/ndse-user-guide-signing-groups).  **Note**: When you send an envelope to a signing group, anyone in the group can open it and sign it with their own signature. For this reason, we recommend that you do not include non-signer recipients (such as carbon copy recipients) in the same signing group as signer recipients. However, you could create a second signing group for the non-signer recipients and change the default action of Needs to Sign to a different value, such as Receives a Copy.  | 
 **signingGroupUsers** | [**SigningGroupUsers**](SigningGroupUsers.md) | A complex type that contains information about users in the signing group. | [optional] 

### Return type

#### SigningGroupsDeleteSigningGroupUsers

```swift
public enum SigningGroupsDeleteSigningGroupUsers {
    case http200(value: SigningGroupUsers?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: SigningGroupUsers?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signingGroupsGetSigningGroupUsers**
```swift
    open class func signingGroupsGetSigningGroupUsers(accountId: String, signingGroupId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<SigningGroupsGetSigningGroupUsers>
```

Gets a list of members in a Signing Group.

Retrieves the list of members in the specified Signing Group.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let signingGroupId = "signingGroupId_example" // String | Optional. The ID of the [signing group](https://support.docusign.com/en/guides/ndse-user-guide-signing-groups).  **Note**: When you send an envelope to a signing group, anyone in the group can open it and sign it with their own signature. For this reason, we recommend that you do not include non-signer recipients (such as carbon copy recipients) in the same signing group as signer recipients. However, you could create a second signing group for the non-signer recipients and change the default action of Needs to Sign to a different value, such as Receives a Copy. 

// Gets a list of members in a Signing Group.
SigningGroupUsersAPI.signingGroupsGetSigningGroupUsers(accountId: accountId, signingGroupId: signingGroupId).whenComplete { result in
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
 **signingGroupId** | **String** | Optional. The ID of the [signing group](https://support.docusign.com/en/guides/ndse-user-guide-signing-groups).  **Note**: When you send an envelope to a signing group, anyone in the group can open it and sign it with their own signature. For this reason, we recommend that you do not include non-signer recipients (such as carbon copy recipients) in the same signing group as signer recipients. However, you could create a second signing group for the non-signer recipients and change the default action of Needs to Sign to a different value, such as Receives a Copy.  | 

### Return type

#### SigningGroupsGetSigningGroupUsers

```swift
public enum SigningGroupsGetSigningGroupUsers {
    case http200(value: SigningGroupUsers?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: SigningGroupUsers?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signingGroupsPutSigningGroupUsers**
```swift
    open class func signingGroupsPutSigningGroupUsers(accountId: String, signingGroupId: String, signingGroupUsers: SigningGroupUsers? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<SigningGroupsPutSigningGroupUsers>
```

Adds members to a signing group. 

Adds one or more new members to a signing group. A signing group can have a maximum of 50 members. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let signingGroupId = "signingGroupId_example" // String | Optional. The ID of the [signing group](https://support.docusign.com/en/guides/ndse-user-guide-signing-groups).  **Note**: When you send an envelope to a signing group, anyone in the group can open it and sign it with their own signature. For this reason, we recommend that you do not include non-signer recipients (such as carbon copy recipients) in the same signing group as signer recipients. However, you could create a second signing group for the non-signer recipients and change the default action of Needs to Sign to a different value, such as Receives a Copy. 
let signingGroupUsers = SigningGroupUsers(users: [nil]) // SigningGroupUsers | A complex type that contains information about users in the signing group. (optional)

// Adds members to a signing group. 
SigningGroupUsersAPI.signingGroupsPutSigningGroupUsers(accountId: accountId, signingGroupId: signingGroupId, signingGroupUsers: signingGroupUsers).whenComplete { result in
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
 **signingGroupId** | **String** | Optional. The ID of the [signing group](https://support.docusign.com/en/guides/ndse-user-guide-signing-groups).  **Note**: When you send an envelope to a signing group, anyone in the group can open it and sign it with their own signature. For this reason, we recommend that you do not include non-signer recipients (such as carbon copy recipients) in the same signing group as signer recipients. However, you could create a second signing group for the non-signer recipients and change the default action of Needs to Sign to a different value, such as Receives a Copy.  | 
 **signingGroupUsers** | [**SigningGroupUsers**](SigningGroupUsers.md) | A complex type that contains information about users in the signing group. | [optional] 

### Return type

#### SigningGroupsPutSigningGroupUsers

```swift
public enum SigningGroupsPutSigningGroupUsers {
    case http200(value: SigningGroupUsers?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: SigningGroupUsers?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

