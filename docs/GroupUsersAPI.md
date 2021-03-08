# GroupUsersAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**groupsDeleteGroupUsers**](GroupUsersAPI.md#groupsdeletegroupusers) | **DELETE** /v2.1/accounts/{accountId}/groups/{groupId}/users | Deletes one or more users from a group
[**groupsGetGroupUsers**](GroupUsersAPI.md#groupsgetgroupusers) | **GET** /v2.1/accounts/{accountId}/groups/{groupId}/users | Gets a list of users in a group.
[**groupsPutGroupUsers**](GroupUsersAPI.md#groupsputgroupusers) | **PUT** /v2.1/accounts/{accountId}/groups/{groupId}/users | Adds one or more users to an existing group.


# **groupsDeleteGroupUsers**
```swift
    open class func groupsDeleteGroupUsers(accountId: String, groupId: String, userInfoList: UserInfoList? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<GroupsDeleteGroupUsers>
```

Deletes one or more users from a group

Deletes one or more users from a group. This request takes a `userInfoList` that contains the users that you want to delete. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let groupId = "groupId_example" // String | The ID of the group being accessed.
let userInfoList = userInfoList(users: [nil]) // UserInfoList |  (optional)

// Deletes one or more users from a group
GroupUsersAPI.groupsDeleteGroupUsers(accountId: accountId, groupId: groupId, userInfoList: userInfoList).whenComplete { result in
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
 **userInfoList** | [**UserInfoList**](UserInfoList.md) |  | [optional] 

### Return type

#### GroupsDeleteGroupUsers

```swift
public enum GroupsDeleteGroupUsers {
    case http200(value: UsersResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: UsersResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupsGetGroupUsers**
```swift
    open class func groupsGetGroupUsers(accountId: String, groupId: String, count: String? = nil, startPosition: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<GroupsGetGroupUsers>
```

Gets a list of users in a group.

Retrieves a list of users in a group.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let groupId = "groupId_example" // String | The ID of the group being accessed.
let count = "count_example" // String | Number of records to return. The number must be greater than 1 and less than or equal to 100.  (optional)
let startPosition = "startPosition_example" // String | Starting value for the list. (optional)

// Gets a list of users in a group.
GroupUsersAPI.groupsGetGroupUsers(accountId: accountId, groupId: groupId, count: count, startPosition: startPosition).whenComplete { result in
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
 **count** | **String** | Number of records to return. The number must be greater than 1 and less than or equal to 100.  | [optional] 
 **startPosition** | **String** | Starting value for the list. | [optional] 

### Return type

#### GroupsGetGroupUsers

```swift
public enum GroupsGetGroupUsers {
    case http200(value: UsersResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: UsersResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupsPutGroupUsers**
```swift
    open class func groupsPutGroupUsers(accountId: String, groupId: String, userInfoList: UserInfoList? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<GroupsPutGroupUsers>
```

Adds one or more users to an existing group.

Adds one or more existing DocuSign users to an existing group.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let groupId = "groupId_example" // String | The ID of the group being accessed.
let userInfoList = userInfoList(users: [nil]) // UserInfoList |  (optional)

// Adds one or more users to an existing group.
GroupUsersAPI.groupsPutGroupUsers(accountId: accountId, groupId: groupId, userInfoList: userInfoList).whenComplete { result in
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
 **userInfoList** | [**UserInfoList**](UserInfoList.md) |  | [optional] 

### Return type

#### GroupsPutGroupUsers

```swift
public enum GroupsPutGroupUsers {
    case http200(value: UsersResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: UsersResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

