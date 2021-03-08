# AccountPermissionProfilesAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**permissionProfilesDeletePermissionProfiles**](AccountPermissionProfilesAPI.md#permissionprofilesdeletepermissionprofiles) | **DELETE** /v2.1/accounts/{accountId}/permission_profiles/{permissionProfileId} | Deletes a permission profile from an account.
[**permissionProfilesGetPermissionProfile**](AccountPermissionProfilesAPI.md#permissionprofilesgetpermissionprofile) | **GET** /v2.1/accounts/{accountId}/permission_profiles/{permissionProfileId} | Returns a permission profile for an account.
[**permissionProfilesGetPermissionProfiles**](AccountPermissionProfilesAPI.md#permissionprofilesgetpermissionprofiles) | **GET** /v2.1/accounts/{accountId}/permission_profiles | Gets a list of permission profiles.
[**permissionProfilesPostPermissionProfiles**](AccountPermissionProfilesAPI.md#permissionprofilespostpermissionprofiles) | **POST** /v2.1/accounts/{accountId}/permission_profiles | Creates a new permission profile for an account.
[**permissionProfilesPutPermissionProfiles**](AccountPermissionProfilesAPI.md#permissionprofilesputpermissionprofiles) | **PUT** /v2.1/accounts/{accountId}/permission_profiles/{permissionProfileId} | Updates a permission profile.


# **permissionProfilesDeletePermissionProfiles**
```swift
    open class func permissionProfilesDeletePermissionProfiles(accountId: String, permissionProfileId: String, moveUsersTo: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<PermissionProfilesDeletePermissionProfiles>
```

Deletes a permission profile from an account.

This method deletes a permission profile from an account.  To delete a permission profile, it must not have any users associated with it. When you use this method to delete a permission profile, you can reassign the users associated with it to a new permission profile at the same time by using the `move_users_to` query parameter.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let permissionProfileId = "permissionProfileId_example" // String | The ID of the permission profile. Possible values include:  - `2301416` (for the `DocuSign Viewer` profile) - `2301415` (for the `DocuSign Sender` profile) - `2301414` (for the `Account Administrator` profile)  In addition, any custom permission profiles associated with your account will have an automatically generated `permissionProfileId`.
let moveUsersTo = "moveUsersTo_example" // String |  (optional)

// Deletes a permission profile from an account.
AccountPermissionProfilesAPI.permissionProfilesDeletePermissionProfiles(accountId: accountId, permissionProfileId: permissionProfileId, moveUsersTo: moveUsersTo).whenComplete { result in
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
 **permissionProfileId** | **String** | The ID of the permission profile. Possible values include:  - &#x60;2301416&#x60; (for the &#x60;DocuSign Viewer&#x60; profile) - &#x60;2301415&#x60; (for the &#x60;DocuSign Sender&#x60; profile) - &#x60;2301414&#x60; (for the &#x60;Account Administrator&#x60; profile)  In addition, any custom permission profiles associated with your account will have an automatically generated &#x60;permissionProfileId&#x60;. | 
 **moveUsersTo** | **String** |  | [optional] 

### Return type

#### PermissionProfilesDeletePermissionProfiles

```swift
public enum PermissionProfilesDeletePermissionProfiles {
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

# **permissionProfilesGetPermissionProfile**
```swift
    open class func permissionProfilesGetPermissionProfile(accountId: String, permissionProfileId: String, include: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<PermissionProfilesGetPermissionProfile>
```

Returns a permission profile for an account.

This method returns information about a specific permission profile that is associated with an account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let permissionProfileId = "permissionProfileId_example" // String | The ID of the permission profile. Possible values include:  - `2301416` (for the `DocuSign Viewer` profile) - `2301415` (for the `DocuSign Sender` profile) - `2301414` (for the `Account Administrator` profile)  In addition, any custom permission profiles associated with your account will have an automatically generated `permissionProfileId`.
let include = "include_example" // String | A comma-separated list of additional properties to return in the response. The only valid value for this request is `metadata`, which returns metadata indicating whether the properties associated with the account permission profile are editable. (optional)

// Returns a permission profile for an account.
AccountPermissionProfilesAPI.permissionProfilesGetPermissionProfile(accountId: accountId, permissionProfileId: permissionProfileId, include: include).whenComplete { result in
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
 **permissionProfileId** | **String** | The ID of the permission profile. Possible values include:  - &#x60;2301416&#x60; (for the &#x60;DocuSign Viewer&#x60; profile) - &#x60;2301415&#x60; (for the &#x60;DocuSign Sender&#x60; profile) - &#x60;2301414&#x60; (for the &#x60;Account Administrator&#x60; profile)  In addition, any custom permission profiles associated with your account will have an automatically generated &#x60;permissionProfileId&#x60;. | 
 **include** | **String** | A comma-separated list of additional properties to return in the response. The only valid value for this request is &#x60;metadata&#x60;, which returns metadata indicating whether the properties associated with the account permission profile are editable. | [optional] 

### Return type

#### PermissionProfilesGetPermissionProfile

```swift
public enum PermissionProfilesGetPermissionProfile {
    case http200(value: PermissionProfile?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: PermissionProfile?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **permissionProfilesGetPermissionProfiles**
```swift
    open class func permissionProfilesGetPermissionProfiles(accountId: String, include: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<PermissionProfilesGetPermissionProfiles>
```

Gets a list of permission profiles.

This method returns a list of permission profiles that are associated with an account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let include = "include_example" // String | A comma-separated list of additional properties to return in the response. Valid values are:  - `user_count`: The total number of users associated with the permission profile. - `closed_users`: Includes closed users in the `user_count`. - `account_management`: The account management settings. - `metadata`: Metadata indicating whether the properties associated with the account permission profile are editable.  Example: `user_count,closed_users`  (optional)

// Gets a list of permission profiles.
AccountPermissionProfilesAPI.permissionProfilesGetPermissionProfiles(accountId: accountId, include: include).whenComplete { result in
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
 **include** | **String** | A comma-separated list of additional properties to return in the response. Valid values are:  - &#x60;user_count&#x60;: The total number of users associated with the permission profile. - &#x60;closed_users&#x60;: Includes closed users in the &#x60;user_count&#x60;. - &#x60;account_management&#x60;: The account management settings. - &#x60;metadata&#x60;: Metadata indicating whether the properties associated with the account permission profile are editable.  Example: &#x60;user_count,closed_users&#x60;  | [optional] 

### Return type

#### PermissionProfilesGetPermissionProfiles

```swift
public enum PermissionProfilesGetPermissionProfiles {
    case http200(value: PermissionProfileInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: PermissionProfileInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **permissionProfilesPostPermissionProfiles**
```swift
    open class func permissionProfilesPostPermissionProfiles(accountId: String, include: String? = nil, permissionProfile: PermissionProfile? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<PermissionProfilesPostPermissionProfiles>
```

Creates a new permission profile for an account.

This method creates a new permission profile for an account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let include = "include_example" // String | A comma-separated list of additional properties to return in the response. The only valid value for this request is `metadata`, which returns metadata indicating whether the properties associated with the account permission profile are editable. (optional)
let permissionProfile = permissionProfile(modifiedByUsername: "modifiedByUsername_example", modifiedDateTime: "modifiedDateTime_example", permissionProfileId: "permissionProfileId_example", permissionProfileName: "permissionProfileName_example", settings: nil, userCount: "userCount_example", users: [nil]) // PermissionProfile |  (optional)

// Creates a new permission profile for an account.
AccountPermissionProfilesAPI.permissionProfilesPostPermissionProfiles(accountId: accountId, include: include, permissionProfile: permissionProfile).whenComplete { result in
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
 **include** | **String** | A comma-separated list of additional properties to return in the response. The only valid value for this request is &#x60;metadata&#x60;, which returns metadata indicating whether the properties associated with the account permission profile are editable. | [optional] 
 **permissionProfile** | [**PermissionProfile**](PermissionProfile.md) |  | [optional] 

### Return type

#### PermissionProfilesPostPermissionProfiles

```swift
public enum PermissionProfilesPostPermissionProfiles {
    case http201(value: PermissionProfile?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: PermissionProfile?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **permissionProfilesPutPermissionProfiles**
```swift
    open class func permissionProfilesPutPermissionProfiles(accountId: String, permissionProfileId: String, include: String? = nil, permissionProfile: PermissionProfile? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<PermissionProfilesPutPermissionProfiles>
```

Updates a permission profile.

This method updates an account permission profile.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let permissionProfileId = "permissionProfileId_example" // String | The ID of the permission profile. Possible values include:  - `2301416` (for the `DocuSign Viewer` profile) - `2301415` (for the `DocuSign Sender` profile) - `2301414` (for the `Account Administrator` profile)  In addition, any custom permission profiles associated with your account will have an automatically generated `permissionProfileId`.
let include = "include_example" // String | A comma-separated list of additional properties to return in the response. The only valid value for this request is `metadata`, which returns metadata indicating whether the properties associated with the account permission profile are editable. (optional)
let permissionProfile = permissionProfile(modifiedByUsername: "modifiedByUsername_example", modifiedDateTime: "modifiedDateTime_example", permissionProfileId: "permissionProfileId_example", permissionProfileName: "permissionProfileName_example", settings: nil, userCount: "userCount_example", users: [nil]) // PermissionProfile |  (optional)

// Updates a permission profile.
AccountPermissionProfilesAPI.permissionProfilesPutPermissionProfiles(accountId: accountId, permissionProfileId: permissionProfileId, include: include, permissionProfile: permissionProfile).whenComplete { result in
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
 **permissionProfileId** | **String** | The ID of the permission profile. Possible values include:  - &#x60;2301416&#x60; (for the &#x60;DocuSign Viewer&#x60; profile) - &#x60;2301415&#x60; (for the &#x60;DocuSign Sender&#x60; profile) - &#x60;2301414&#x60; (for the &#x60;Account Administrator&#x60; profile)  In addition, any custom permission profiles associated with your account will have an automatically generated &#x60;permissionProfileId&#x60;. | 
 **include** | **String** | A comma-separated list of additional properties to return in the response. The only valid value for this request is &#x60;metadata&#x60;, which returns metadata indicating whether the properties associated with the account permission profile are editable. | [optional] 
 **permissionProfile** | [**PermissionProfile**](PermissionProfile.md) |  | [optional] 

### Return type

#### PermissionProfilesPutPermissionProfiles

```swift
public enum PermissionProfilesPutPermissionProfiles {
    case http200(value: PermissionProfile?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: PermissionProfile?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

