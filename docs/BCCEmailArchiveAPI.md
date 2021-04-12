# BCCEmailArchiveAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bCCEmailArchiveDeleteBCCEmailArchive**](BCCEmailArchiveAPI.md#bccemailarchivedeletebccemailarchive) | **DELETE** /v2.1/accounts/{accountId}/settings/bcc_email_archives/{bccEmailArchiveId} | Deletes a BCC email archive configuration.
[**bCCEmailArchiveGetBCCEmailArchiveHistoryList**](BCCEmailArchiveAPI.md#bccemailarchivegetbccemailarchivehistorylist) | **GET** /v2.1/accounts/{accountId}/settings/bcc_email_archives/{bccEmailArchiveId} | Gets a BCC email archive configuration and its history.
[**bCCEmailArchiveGetBCCEmailArchiveList**](BCCEmailArchiveAPI.md#bccemailarchivegetbccemailarchivelist) | **GET** /v2.1/accounts/{accountId}/settings/bcc_email_archives | Gets the BCC email archive configurations for an account.
[**bCCEmailArchivePostBCCEmailArchive**](BCCEmailArchiveAPI.md#bccemailarchivepostbccemailarchive) | **POST** /v2.1/accounts/{accountId}/settings/bcc_email_archives | Creates a BCC email archive configuration.


# **bCCEmailArchiveDeleteBCCEmailArchive**
```swift
    open class func bCCEmailArchiveDeleteBCCEmailArchive(accountId: String, bccEmailArchiveId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BCCEmailArchiveDeleteBCCEmailArchive>
```

Deletes a BCC email archive configuration.

This method deletes a BCC email archive configuration from an account.  When you use this method, the status of the BCC email archive configuration switches to `closed` and the BCC email address is no longer used to archive DocuSign-generated email messages. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let bccEmailArchiveId = "bccEmailArchiveId_example" // String | The id of the BCC email archive configuration.

// Deletes a BCC email archive configuration.
BCCEmailArchiveAPI.bCCEmailArchiveDeleteBCCEmailArchive(accountId: accountId, bccEmailArchiveId: bccEmailArchiveId).whenComplete { result in
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
 **bccEmailArchiveId** | **String** | The id of the BCC email archive configuration. | 

### Return type

#### BCCEmailArchiveDeleteBCCEmailArchive

```swift
public enum BCCEmailArchiveDeleteBCCEmailArchive {
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

# **bCCEmailArchiveGetBCCEmailArchiveHistoryList**
```swift
    open class func bCCEmailArchiveGetBCCEmailArchiveHistoryList(accountId: String, bccEmailArchiveId: String, count: String? = nil, startPosition: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BCCEmailArchiveGetBCCEmailArchiveHistoryList>
```

Gets a BCC email archive configuration and its history.

This method returns a specific BCC email archive configuration for an account, as well as the history of changes to the email address.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let bccEmailArchiveId = "bccEmailArchiveId_example" // String | The id of the BCC email archive configuration.
let count = "count_example" // String | (Optional) The maximum number of results (changes) to return. (optional)
let startPosition = "startPosition_example" // String | (Optional) The index position within the total result set from which to start returning values. The default value is `0`. (optional)

// Gets a BCC email archive configuration and its history.
BCCEmailArchiveAPI.bCCEmailArchiveGetBCCEmailArchiveHistoryList(accountId: accountId, bccEmailArchiveId: bccEmailArchiveId, count: count, startPosition: startPosition).whenComplete { result in
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
 **bccEmailArchiveId** | **String** | The id of the BCC email archive configuration. | 
 **count** | **String** | (Optional) The maximum number of results (changes) to return. | [optional] 
 **startPosition** | **String** | (Optional) The index position within the total result set from which to start returning values. The default value is &#x60;0&#x60;. | [optional] 

### Return type

#### BCCEmailArchiveGetBCCEmailArchiveHistoryList

```swift
public enum BCCEmailArchiveGetBCCEmailArchiveHistoryList {
    case http200(value: BccEmailArchiveHistoryList?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: BccEmailArchiveHistoryList?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bCCEmailArchiveGetBCCEmailArchiveList**
```swift
    open class func bCCEmailArchiveGetBCCEmailArchiveList(accountId: String, count: String? = nil, startPosition: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BCCEmailArchiveGetBCCEmailArchiveList>
```

Gets the BCC email archive configurations for an account.

This method retrieves all of the BCC email archive configurations associated with an account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let count = "count_example" // String | (Optional) The maximum number of results to return. (optional)
let startPosition = "startPosition_example" // String | (Optional) The index position within the total result set from which to start returning values. The default value is `0`. (optional)

// Gets the BCC email archive configurations for an account.
BCCEmailArchiveAPI.bCCEmailArchiveGetBCCEmailArchiveList(accountId: accountId, count: count, startPosition: startPosition).whenComplete { result in
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
 **count** | **String** | (Optional) The maximum number of results to return. | [optional] 
 **startPosition** | **String** | (Optional) The index position within the total result set from which to start returning values. The default value is &#x60;0&#x60;. | [optional] 

### Return type

#### BCCEmailArchiveGetBCCEmailArchiveList

```swift
public enum BCCEmailArchiveGetBCCEmailArchiveList {
    case http200(value: BccEmailArchiveList?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: BccEmailArchiveList?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bCCEmailArchivePostBCCEmailArchive**
```swift
    open class func bCCEmailArchivePostBCCEmailArchive(accountId: String, bccEmailArchive: BccEmailArchive? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BCCEmailArchivePostBCCEmailArchive>
```

Creates a BCC email archive configuration.

This method creates a BCC email archive configuration for an account (adds a BCC email address to the account for archiving the emails that DocuSign generates).  The only property that you must set in the request body is the BCC email address that you want to use.  **Note**: An account can have up to five active and pending email archive addresses combined, but you must use this method to add them to the account one at a time. Each email address is considered a separate BCC email archive configuration. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let bccEmailArchive = bccEmailArchive(accountId: "accountId_example", bccEmailArchiveId: "bccEmailArchiveId_example", created: "created_example", createdBy: userInfo(accountId: "accountId_example", accountName: "accountName_example", activationAccessCode: "activationAccessCode_example", email: "email_example", errorDetails: errorDetails(errorCode: "errorCode_example", message: "message_example"), loginStatus: "loginStatus_example", membershipId: "membershipId_example", sendActivationEmail: "sendActivationEmail_example", uri: "uri_example", userId: "userId_example", userName: "userName_example", userStatus: "userStatus_example", userType: "userType_example"), email: "email_example", emailNotificationId: "emailNotificationId_example", modified: "modified_example", modifiedBy: nil, status: "status_example", uri: "uri_example") // BccEmailArchive | Boolean that specifies whether BCC for Email Archive is enabled for the account. BCC for Email Archive allows you to set up an archive email address so that a BCC copy of an envelope is sent only to that address. (optional)

// Creates a BCC email archive configuration.
BCCEmailArchiveAPI.bCCEmailArchivePostBCCEmailArchive(accountId: accountId, bccEmailArchive: bccEmailArchive).whenComplete { result in
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
 **bccEmailArchive** | [**BccEmailArchive**](BccEmailArchive.md) | Boolean that specifies whether BCC for Email Archive is enabled for the account. BCC for Email Archive allows you to set up an archive email address so that a BCC copy of an envelope is sent only to that address. | [optional] 

### Return type

#### BCCEmailArchivePostBCCEmailArchive

```swift
public enum BCCEmailArchivePostBCCEmailArchive {
    case http201(value: BccEmailArchive?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: BccEmailArchive?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

