# UserProfilesAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userProfileGetProfile**](UserProfilesAPI.md#userprofilegetprofile) | **GET** /v2.1/accounts/{accountId}/users/{userId}/profile | Retrieves the user profile for a specified user.
[**userProfilePutProfile**](UserProfilesAPI.md#userprofileputprofile) | **PUT** /v2.1/accounts/{accountId}/users/{userId}/profile | Updates the user profile information for the specified user.


# **userProfileGetProfile**
```swift
    open class func userProfileGetProfile(accountId: String, userId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<UserProfileGetProfile>
```

Retrieves the user profile for a specified user.

Retrieves the user profile information, the privacy settings and personal information (address, phone number, etc.) for the specified user.  The userId parameter specified in the endpoint must match the authenticated user's user ID and the user must be a member of the specified account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let userId = "userId_example" // String | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing. 

// Retrieves the user profile for a specified user.
UserProfilesAPI.userProfileGetProfile(accountId: accountId, userId: userId).whenComplete { result in
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

### Return type

#### UserProfileGetProfile

```swift
public enum UserProfileGetProfile {
    case http200(value: UserProfile?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: UserProfile?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userProfilePutProfile**
```swift
    open class func userProfilePutProfile(accountId: String, userId: String, userProfile: UserProfile? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<UserProfilePutProfile>
```

Updates the user profile information for the specified user.

Updates the user's detail information, profile information, privacy settings, and personal information in the user ID card.  You can also change a user's name by changing the information in the `userDetails` property. When changing a user's name, you can either change the information in the `userName` property OR change the information in `firstName`, `middleName`, `lastName, suffixName`, and `title` properties. Changes to `firstName`, `middleName`, `lastName`, `suffixName`, and `title` properties take precedence over changes to the `userName` property.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let userId = "userId_example" // String | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing. 
let userProfile = userProfile(address: nil, authenticationMethods: [nil], companyName: "companyName_example", displayOrganizationInfo: "displayOrganizationInfo_example", displayPersonalInfo: "displayPersonalInfo_example", displayProfile: "displayProfile_example", displayUsageHistory: "displayUsageHistory_example", profileImageUri: "profileImageUri_example", title: "title_example", usageHistory: nil, userDetails: nil, userProfileLastModifiedDate: "userProfileLastModifiedDate_example") // UserProfile |  (optional)

// Updates the user profile information for the specified user.
UserProfilesAPI.userProfilePutProfile(accountId: accountId, userId: userId, userProfile: userProfile).whenComplete { result in
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
 **userProfile** | [**UserProfile**](UserProfile.md) |  | [optional] 

### Return type

#### UserProfilePutProfile

```swift
public enum UserProfilePutProfile {
    case http200(value: Void?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Void?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

