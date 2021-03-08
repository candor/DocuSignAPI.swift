# GroupsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**groupsDeleteGroups**](GroupsAPI.md#groupsdeletegroups) | **DELETE** /v2.1/accounts/{accountId}/groups | Deletes an existing user group.
[**groupsGetGroups**](GroupsAPI.md#groupsgetgroups) | **GET** /v2.1/accounts/{accountId}/groups | Gets information about groups associated with the account.
[**groupsPostGroups**](GroupsAPI.md#groupspostgroups) | **POST** /v2.1/accounts/{accountId}/groups | Creates one or more groups for the account.
[**groupsPutGroups**](GroupsAPI.md#groupsputgroups) | **PUT** /v2.1/accounts/{accountId}/groups | Updates the group information for a group.


# **groupsDeleteGroups**
```swift
    open class func groupsDeleteGroups(accountId: String, groupInformation: GroupInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<GroupsDeleteGroups>
```

Deletes an existing user group.

Deletes an existing user group.  When you delete a group, you include only the `groupId` in the request body.  Example:  ``` {   \"groups\": [     {       \"groupId\": \"12345\"     } } ``` 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let groupInformation = groupInformation(endPosition: "endPosition_example", groups: [nil], nextUri: "nextUri_example", previousUri: "previousUri_example", resultSetSize: "resultSetSize_example", startPosition: "startPosition_example", totalSetSize: "totalSetSize_example") // GroupInformation |  (optional)

// Deletes an existing user group.
GroupsAPI.groupsDeleteGroups(accountId: accountId, groupInformation: groupInformation).whenComplete { result in
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
 **groupInformation** | [**GroupInformation**](GroupInformation.md) |  | [optional] 

### Return type

#### GroupsDeleteGroups

```swift
public enum GroupsDeleteGroups {
    case http200(value: GroupInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: GroupInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupsGetGroups**
```swift
    open class func groupsGetGroups(accountId: String, count: String? = nil, groupType: String? = nil, includeUsercount: String? = nil, searchText: String? = nil, startPosition: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<GroupsGetGroups>
```

Gets information about groups associated with the account.

Retrieves information about groups associated with the account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let count = "count_example" // String | Number of records to return. The number must be greater than 1 and less than or equal to 100. (optional)
let groupType = "groupType_example" // String |  (optional)
let includeUsercount = "includeUsercount_example" // String | When set to **true**, every group returned in the response includes a `userCount` property that contains the total number of users in the group. The default is **true**. (optional)
let searchText = "searchText_example" // String | Filters the results of a GET request based on the text that you specify. (optional)
let startPosition = "startPosition_example" // String | The starting value for the list. (optional)

// Gets information about groups associated with the account.
GroupsAPI.groupsGetGroups(accountId: accountId, count: count, groupType: groupType, includeUsercount: includeUsercount, searchText: searchText, startPosition: startPosition).whenComplete { result in
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
 **count** | **String** | Number of records to return. The number must be greater than 1 and less than or equal to 100. | [optional] 
 **groupType** | **String** |  | [optional] 
 **includeUsercount** | **String** | When set to **true**, every group returned in the response includes a &#x60;userCount&#x60; property that contains the total number of users in the group. The default is **true**. | [optional] 
 **searchText** | **String** | Filters the results of a GET request based on the text that you specify. | [optional] 
 **startPosition** | **String** | The starting value for the list. | [optional] 

### Return type

#### GroupsGetGroups

```swift
public enum GroupsGetGroups {
    case http200(value: GroupInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: GroupInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupsPostGroups**
```swift
    open class func groupsPostGroups(accountId: String, groupInformation: GroupInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<GroupsPostGroups>
```

Creates one or more groups for the account.

Creates one or more groups for the account.  Groups can be used to help manage users by associating users with a group. You can associate a group with a Permission Profile, which sets the user permissions for users in that group without having to set the `userSettings` property for each user. You are not required to set Permission Profiles for a group, but it makes it easier to manage user permissions for a large number of users. You can also use groups with template sharing to limit user access to templates.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let groupInformation = groupInformation(endPosition: "endPosition_example", groups: [nil], nextUri: "nextUri_example", previousUri: "previousUri_example", resultSetSize: "resultSetSize_example", startPosition: "startPosition_example", totalSetSize: "totalSetSize_example") // GroupInformation |  (optional)

// Creates one or more groups for the account.
GroupsAPI.groupsPostGroups(accountId: accountId, groupInformation: groupInformation).whenComplete { result in
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
 **groupInformation** | [**GroupInformation**](GroupInformation.md) |  | [optional] 

### Return type

#### GroupsPostGroups

```swift
public enum GroupsPostGroups {
    case http201(value: GroupInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: GroupInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupsPutGroups**
```swift
    open class func groupsPutGroups(accountId: String, groupInformation: GroupInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<GroupsPutGroups>
```

Updates the group information for a group.

Updates the group name and modifies, or sets, the permission profile for the group.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let groupInformation = groupInformation(endPosition: "endPosition_example", groups: [nil], nextUri: "nextUri_example", previousUri: "previousUri_example", resultSetSize: "resultSetSize_example", startPosition: "startPosition_example", totalSetSize: "totalSetSize_example") // GroupInformation |  (optional)

// Updates the group information for a group.
GroupsAPI.groupsPutGroups(accountId: accountId, groupInformation: groupInformation).whenComplete { result in
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
 **groupInformation** | [**GroupInformation**](GroupInformation.md) |  | [optional] 

### Return type

#### GroupsPutGroups

```swift
public enum GroupsPutGroups {
    case http200(value: GroupInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: GroupInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

