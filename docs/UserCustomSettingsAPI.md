# UserCustomSettingsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userCustomSettingsDeleteCustomSettings**](UserCustomSettingsAPI.md#usercustomsettingsdeletecustomsettings) | **DELETE** /v2.1/accounts/{accountId}/users/{userId}/custom_settings | Deletes custom user settings for a specified user.
[**userCustomSettingsGetCustomSettings**](UserCustomSettingsAPI.md#usercustomsettingsgetcustomsettings) | **GET** /v2.1/accounts/{accountId}/users/{userId}/custom_settings | Retrieves the custom user settings for a specified user.
[**userCustomSettingsPutCustomSettings**](UserCustomSettingsAPI.md#usercustomsettingsputcustomsettings) | **PUT** /v2.1/accounts/{accountId}/users/{userId}/custom_settings | Adds or updates custom user settings for the specified user.


# **userCustomSettingsDeleteCustomSettings**
```swift
    open class func userCustomSettingsDeleteCustomSettings(accountId: String, userId: String, customSettingsInformation: CustomSettingsInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<UserCustomSettingsDeleteCustomSettings>
```

Deletes custom user settings for a specified user.

Deletes the specified custom user settings for a single user.  ###Deleting Grouped Custom User Settings###  If the custom user settings you want to delete are grouped, you must include the following information in the header, after Content-Type, in the request:  `X-DocuSign-User-Settings-Key:group_name`  Where the `group_name` is your designated name for the group of customer user settings.  If the extra header information is not included, only the custom user settings that were added without a group are deleted.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let userId = "userId_example" // String | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing. 
let customSettingsInformation = customSettingsInformation(customSettings: [nameValue(errorDetails: errorDetails(errorCode: "errorCode_example", message: "message_example"), name: "name_example", originalValue: "originalValue_example", value: "value_example")]) // CustomSettingsInformation |  (optional)

// Deletes custom user settings for a specified user.
UserCustomSettingsAPI.userCustomSettingsDeleteCustomSettings(accountId: accountId, userId: userId, customSettingsInformation: customSettingsInformation).whenComplete { result in
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
 **customSettingsInformation** | [**CustomSettingsInformation**](CustomSettingsInformation.md) |  | [optional] 

### Return type

#### UserCustomSettingsDeleteCustomSettings

```swift
public enum UserCustomSettingsDeleteCustomSettings {
    case http200(value: CustomSettingsInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: CustomSettingsInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCustomSettingsGetCustomSettings**
```swift
    open class func userCustomSettingsGetCustomSettings(accountId: String, userId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<UserCustomSettingsGetCustomSettings>
```

Retrieves the custom user settings for a specified user.

Retrieves a list of custom user settings for a single user.  Custom settings provide a flexible way to store and retrieve custom user information that can be used in your own system.  **Note**: Custom user settings are not the same as user account settings.  ###Getting Grouped Custom User Settings###  If the custom user settings you want to retrieve are grouped, you must include the following information in the header, after Content-Type, in the request:  `X-DocuSign-User-Settings-Key:group_name`  Where the `group_name` is your designated name for the group of customer user settings.  If the extra header information is not included, only the custom user settings that were added without a group are retrieved.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let userId = "userId_example" // String | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing. 

// Retrieves the custom user settings for a specified user.
UserCustomSettingsAPI.userCustomSettingsGetCustomSettings(accountId: accountId, userId: userId).whenComplete { result in
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

#### UserCustomSettingsGetCustomSettings

```swift
public enum UserCustomSettingsGetCustomSettings {
    case http200(value: CustomSettingsInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: CustomSettingsInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCustomSettingsPutCustomSettings**
```swift
    open class func userCustomSettingsPutCustomSettings(accountId: String, userId: String, customSettingsInformation: CustomSettingsInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<UserCustomSettingsPutCustomSettings>
```

Adds or updates custom user settings for the specified user.

Adds or updates custom user settings for the specified user.  ***Note**: Custom user settings are not the same as user account settings.  Custom settings provide a flexible way to store and retrieve custom user information that you can use in your own system.  **Important**: There is a limit on the size for all the custom user settings for a single user. The limit is 4,000 characters, which includes the XML and JSON structure for the settings.  ### Grouping Custom User Settings ###  You can group custom user settings when adding them. Grouping allows you to retrieve settings that are in a specific group, instead of retrieving all the user custom settings.  To group custom user settings, add the following information in the header, after Content-Type:  `X-DocuSign-User-Settings-Key:group_name`  Where the `group_name` is your designated name for the group of customer user settings. Grouping is shown in the Example Request Body below.  When getting or deleting grouped custom user settings, you must include the extra header information.  Grouping custom user settings is not required and if the extra header information is not included, the custom user settings are added normally and can be retrieved or deleted without including the additional header.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let userId = "userId_example" // String | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing. 
let customSettingsInformation = customSettingsInformation(customSettings: [nameValue(errorDetails: errorDetails(errorCode: "errorCode_example", message: "message_example"), name: "name_example", originalValue: "originalValue_example", value: "value_example")]) // CustomSettingsInformation |  (optional)

// Adds or updates custom user settings for the specified user.
UserCustomSettingsAPI.userCustomSettingsPutCustomSettings(accountId: accountId, userId: userId, customSettingsInformation: customSettingsInformation).whenComplete { result in
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
 **customSettingsInformation** | [**CustomSettingsInformation**](CustomSettingsInformation.md) |  | [optional] 

### Return type

#### UserCustomSettingsPutCustomSettings

```swift
public enum UserCustomSettingsPutCustomSettings {
    case http200(value: CustomSettingsInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: CustomSettingsInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

