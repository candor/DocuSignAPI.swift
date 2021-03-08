# SigningGroupsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**signingGroupsDeleteSigningGroups**](SigningGroupsAPI.md#signinggroupsdeletesigninggroups) | **DELETE** /v2.1/accounts/{accountId}/signing_groups | Deletes one or more signing groups.
[**signingGroupsGetSigningGroup**](SigningGroupsAPI.md#signinggroupsgetsigninggroup) | **GET** /v2.1/accounts/{accountId}/signing_groups/{signingGroupId} | Gets information about a signing group. 
[**signingGroupsGetSigningGroups**](SigningGroupsAPI.md#signinggroupsgetsigninggroups) | **GET** /v2.1/accounts/{accountId}/signing_groups | Gets a list of the Signing Groups in an account.
[**signingGroupsPostSigningGroups**](SigningGroupsAPI.md#signinggroupspostsigninggroups) | **POST** /v2.1/accounts/{accountId}/signing_groups | Creates a signing group. 
[**signingGroupsPutSigningGroup**](SigningGroupsAPI.md#signinggroupsputsigninggroup) | **PUT** /v2.1/accounts/{accountId}/signing_groups/{signingGroupId} | Updates a signing group. 
[**signingGroupsPutSigningGroups**](SigningGroupsAPI.md#signinggroupsputsigninggroups) | **PUT** /v2.1/accounts/{accountId}/signing_groups | Updates signing group names.


# **signingGroupsDeleteSigningGroups**
```swift
    open class func signingGroupsDeleteSigningGroups(accountId: String, signingGroupInformation: SigningGroupInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<SigningGroupsDeleteSigningGroups>
```

Deletes one or more signing groups.

Deletes one or more signing groups in the specified account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let signingGroupInformation = signingGroupInformation(groups: [nil]) // SigningGroupInformation |  (optional)

// Deletes one or more signing groups.
SigningGroupsAPI.signingGroupsDeleteSigningGroups(accountId: accountId, signingGroupInformation: signingGroupInformation).whenComplete { result in
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
 **signingGroupInformation** | [**SigningGroupInformation**](SigningGroupInformation.md) |  | [optional] 

### Return type

#### SigningGroupsDeleteSigningGroups

```swift
public enum SigningGroupsDeleteSigningGroups {
    case http200(value: SigningGroupInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: SigningGroupInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signingGroupsGetSigningGroup**
```swift
    open class func signingGroupsGetSigningGroup(accountId: String, signingGroupId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<SigningGroupsGetSigningGroup>
```

Gets information about a signing group. 

Retrieves information, including group member information, for the specified signing group. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let signingGroupId = "signingGroupId_example" // String | Optional. The ID of the [signing group](https://support.docusign.com/en/guides/ndse-user-guide-signing-groups).  **Note**: When you send an envelope to a signing group, anyone in the group can open it and sign it with their own signature. For this reason, we recommend that you do not include non-signer recipients (such as carbon copy recipients) in the same signing group as signer recipients. However, you could create a second signing group for the non-signer recipients and change the default action of Needs to Sign to a different value, such as Receives a Copy. 

// Gets information about a signing group. 
SigningGroupsAPI.signingGroupsGetSigningGroup(accountId: accountId, signingGroupId: signingGroupId).whenComplete { result in
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

#### SigningGroupsGetSigningGroup

```swift
public enum SigningGroupsGetSigningGroup {
    case http200(value: SigningGroup?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: SigningGroup?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signingGroupsGetSigningGroups**
```swift
    open class func signingGroupsGetSigningGroups(accountId: String, groupType: String? = nil, includeUsers: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<SigningGroupsGetSigningGroups>
```

Gets a list of the Signing Groups in an account.

Retrieves a list of all signing groups in the specified account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let groupType = "groupType_example" // String |  (optional)
let includeUsers = "includeUsers_example" // String | When set to **true**, the response includes the signing group members.  (optional)

// Gets a list of the Signing Groups in an account.
SigningGroupsAPI.signingGroupsGetSigningGroups(accountId: accountId, groupType: groupType, includeUsers: includeUsers).whenComplete { result in
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
 **groupType** | **String** |  | [optional] 
 **includeUsers** | **String** | When set to **true**, the response includes the signing group members.  | [optional] 

### Return type

#### SigningGroupsGetSigningGroups

```swift
public enum SigningGroupsGetSigningGroups {
    case http200(value: SigningGroupInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: SigningGroupInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signingGroupsPostSigningGroups**
```swift
    open class func signingGroupsPostSigningGroups(accountId: String, signingGroupInformation: SigningGroupInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<SigningGroupsPostSigningGroups>
```

Creates a signing group. 

Creates one or more signing groups.   Multiple signing groups can be created in one call. Only users with account administrator privileges can create signing groups.   An account can have a maximum of 50 signing groups. Each signing group can have a maximum of 50 group members.   Signing groups can be used by any account user.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let signingGroupInformation = signingGroupInformation(groups: [nil]) // SigningGroupInformation |  (optional)

// Creates a signing group. 
SigningGroupsAPI.signingGroupsPostSigningGroups(accountId: accountId, signingGroupInformation: signingGroupInformation).whenComplete { result in
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
 **signingGroupInformation** | [**SigningGroupInformation**](SigningGroupInformation.md) |  | [optional] 

### Return type

#### SigningGroupsPostSigningGroups

```swift
public enum SigningGroupsPostSigningGroups {
    case http201(value: SigningGroupInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: SigningGroupInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signingGroupsPutSigningGroup**
```swift
    open class func signingGroupsPutSigningGroup(accountId: String, signingGroupId: String, signingGroup: SigningGroup? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<SigningGroupsPutSigningGroup>
```

Updates a signing group. 

Updates signing group name and member information. You can also add new members to the signing group. A signing group can have a maximum of 50 members. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let signingGroupId = "signingGroupId_example" // String | Optional. The ID of the [signing group](https://support.docusign.com/en/guides/ndse-user-guide-signing-groups).  **Note**: When you send an envelope to a signing group, anyone in the group can open it and sign it with their own signature. For this reason, we recommend that you do not include non-signer recipients (such as carbon copy recipients) in the same signing group as signer recipients. However, you could create a second signing group for the non-signer recipients and change the default action of Needs to Sign to a different value, such as Receives a Copy. 
let signingGroup = signingGroup(created: "created_example", createdBy: "createdBy_example", errorDetails: nil, groupEmail: "groupEmail_example", groupName: "groupName_example", groupType: "groupType_example", modified: "modified_example", modifiedBy: "modifiedBy_example", signingGroupId: "signingGroupId_example", users: [nil]) // SigningGroup |  (optional)

// Updates a signing group. 
SigningGroupsAPI.signingGroupsPutSigningGroup(accountId: accountId, signingGroupId: signingGroupId, signingGroup: signingGroup).whenComplete { result in
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
 **signingGroup** | [**SigningGroup**](SigningGroup.md) |  | [optional] 

### Return type

#### SigningGroupsPutSigningGroup

```swift
public enum SigningGroupsPutSigningGroup {
    case http200(value: SigningGroup?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: SigningGroup?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **signingGroupsPutSigningGroups**
```swift
    open class func signingGroupsPutSigningGroups(accountId: String, signingGroupInformation: SigningGroupInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<SigningGroupsPutSigningGroups>
```

Updates signing group names.

Updates the name of one or more existing signing groups. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let signingGroupInformation = signingGroupInformation(groups: [nil]) // SigningGroupInformation |  (optional)

// Updates signing group names.
SigningGroupsAPI.signingGroupsPutSigningGroups(accountId: accountId, signingGroupInformation: signingGroupInformation).whenComplete { result in
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
 **signingGroupInformation** | [**SigningGroupInformation**](SigningGroupInformation.md) |  | [optional] 

### Return type

#### SigningGroupsPutSigningGroups

```swift
public enum SigningGroupsPutSigningGroups {
    case http200(value: SigningGroupInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: SigningGroupInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

