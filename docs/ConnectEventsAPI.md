# ConnectEventsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**connectFailuresDeleteConnectFailureLog**](ConnectEventsAPI.md#connectfailuresdeleteconnectfailurelog) | **DELETE** /v2.1/accounts/{accountId}/connect/failures/{failureId} | Deletes a Connect failure log entry.
[**connectFailuresGetConnectLogs**](ConnectEventsAPI.md#connectfailuresgetconnectlogs) | **GET** /v2.1/accounts/{accountId}/connect/failures | Gets the Connect failure log information.
[**connectLogDeleteConnectLog**](ConnectEventsAPI.md#connectlogdeleteconnectlog) | **DELETE** /v2.1/accounts/{accountId}/connect/logs/{logId} | Deletes a specified Connect log entry.
[**connectLogDeleteConnectLogs**](ConnectEventsAPI.md#connectlogdeleteconnectlogs) | **DELETE** /v2.1/accounts/{accountId}/connect/logs | Deletes a list of Connect log entries.
[**connectLogGetConnectLog**](ConnectEventsAPI.md#connectloggetconnectlog) | **GET** /v2.1/accounts/{accountId}/connect/logs/{logId} | Gets a Connect log entry.
[**connectLogGetConnectLogs**](ConnectEventsAPI.md#connectloggetconnectlogs) | **GET** /v2.1/accounts/{accountId}/connect/logs | Gets the Connect log.
[**connectPublishPutConnectRetry**](ConnectEventsAPI.md#connectpublishputconnectretry) | **PUT** /v2.1/accounts/{accountId}/connect/envelopes/retry_queue | Republishes Connect information for multiple envelopes.
[**connectPublishPutConnectRetryByEnvelope**](ConnectEventsAPI.md#connectpublishputconnectretrybyenvelope) | **PUT** /v2.1/accounts/{accountId}/connect/envelopes/{envelopeId}/retry_queue | Republishes Connect information for the specified envelope.


# **connectFailuresDeleteConnectFailureLog**
```swift
    open class func connectFailuresDeleteConnectFailureLog(accountId: String, failureId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ConnectFailuresDeleteConnectFailureLog>
```

Deletes a Connect failure log entry.

Deletes the Connect failure log information for the specified entry.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let failureId = "failureId_example" // String | The id of the Connect post failure.

// Deletes a Connect failure log entry.
ConnectEventsAPI.connectFailuresDeleteConnectFailureLog(accountId: accountId, failureId: failureId).whenComplete { result in
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
 **failureId** | **String** | The id of the Connect post failure. | 

### Return type

#### ConnectFailuresDeleteConnectFailureLog

```swift
public enum ConnectFailuresDeleteConnectFailureLog {
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

# **connectFailuresGetConnectLogs**
```swift
    open class func connectFailuresGetConnectLogs(accountId: String, fromDate: String? = nil, toDate: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ConnectFailuresGetConnectLogs>
```

Gets the Connect failure log information.

Retrieves the Connect failure log information. You can use this log to determine which envelopes failed to post, in order to create a republish request.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let fromDate = "fromDate_example" // String | The start date for a date range in UTC DateTime format.  **Note**: If this property is null, no date filtering is applied. (optional)
let toDate = "toDate_example" // String | The end of a search date range in UTC DateTime format. When you use this parameter, only templates created up to this date and time are returned.  **Note**: If this property is null, the value defaults to the current date. (optional)

// Gets the Connect failure log information.
ConnectEventsAPI.connectFailuresGetConnectLogs(accountId: accountId, fromDate: fromDate, toDate: toDate).whenComplete { result in
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
 **fromDate** | **String** | The start date for a date range in UTC DateTime format.  **Note**: If this property is null, no date filtering is applied. | [optional] 
 **toDate** | **String** | The end of a search date range in UTC DateTime format. When you use this parameter, only templates created up to this date and time are returned.  **Note**: If this property is null, the value defaults to the current date. | [optional] 

### Return type

#### ConnectFailuresGetConnectLogs

```swift
public enum ConnectFailuresGetConnectLogs {
    case http200(value: ConnectLogs?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ConnectLogs?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **connectLogDeleteConnectLog**
```swift
    open class func connectLogDeleteConnectLog(accountId: String, logId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ConnectLogDeleteConnectLog>
```

Deletes a specified Connect log entry.

Deletes a specified entry from the Connect Log. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let logId = "logId_example" // String | The id of the Connect log entry.

// Deletes a specified Connect log entry.
ConnectEventsAPI.connectLogDeleteConnectLog(accountId: accountId, logId: logId).whenComplete { result in
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
 **logId** | **String** | The id of the Connect log entry. | 

### Return type

#### ConnectLogDeleteConnectLog

```swift
public enum ConnectLogDeleteConnectLog {
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

# **connectLogDeleteConnectLogs**
```swift
    open class func connectLogDeleteConnectLogs(accountId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ConnectLogDeleteConnectLogs>
```

Deletes a list of Connect log entries.

Deletes a list of Connect log entries for your account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.

// Deletes a list of Connect log entries.
ConnectEventsAPI.connectLogDeleteConnectLogs(accountId: accountId).whenComplete { result in
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

### Return type

#### ConnectLogDeleteConnectLogs

```swift
public enum ConnectLogDeleteConnectLogs {
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

# **connectLogGetConnectLog**
```swift
    open class func connectLogGetConnectLog(accountId: String, logId: String, additionalInfo: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ConnectLogGetConnectLog>
```

Gets a Connect log entry.

Retrieves the specified Connect log entry for your account.  **Note**: The `enableLog` setting in the Connect configuration must be set to true to enable logging. If logging is not enabled, then no log entries are recorded.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let logId = "logId_example" // String | The id of the Connect log entry.
let additionalInfo = "additionalInfo_example" // String | When set to **true**, the response includes the `connectDebugLog` information. (optional)

// Gets a Connect log entry.
ConnectEventsAPI.connectLogGetConnectLog(accountId: accountId, logId: logId, additionalInfo: additionalInfo).whenComplete { result in
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
 **logId** | **String** | The id of the Connect log entry. | 
 **additionalInfo** | **String** | When set to **true**, the response includes the &#x60;connectDebugLog&#x60; information. | [optional] 

### Return type

#### ConnectLogGetConnectLog

```swift
public enum ConnectLogGetConnectLog {
    case http200(value: ConnectLog?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ConnectLog?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **connectLogGetConnectLogs**
```swift
    open class func connectLogGetConnectLogs(accountId: String, fromDate: String? = nil, toDate: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ConnectLogGetConnectLogs>
```

Gets the Connect log.

Retrieves a list of connect log entries for your account.  **Note**: The `enableLog` setting in the Connect configuration must be set to true to enable logging. If logging is not enabled, then no log entries are recorded.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let fromDate = "fromDate_example" // String | The start date for a date range in UTC DateTime format.  **Note**: If this property is null, no date filtering is applied. (optional)
let toDate = "toDate_example" // String | The end of a search date range in UTC DateTime format. When you use this parameter, only templates created up to this date and time are returned.  **Note**: If this property is null, the value defaults to the current date. (optional)

// Gets the Connect log.
ConnectEventsAPI.connectLogGetConnectLogs(accountId: accountId, fromDate: fromDate, toDate: toDate).whenComplete { result in
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
 **fromDate** | **String** | The start date for a date range in UTC DateTime format.  **Note**: If this property is null, no date filtering is applied. | [optional] 
 **toDate** | **String** | The end of a search date range in UTC DateTime format. When you use this parameter, only templates created up to this date and time are returned.  **Note**: If this property is null, the value defaults to the current date. | [optional] 

### Return type

#### ConnectLogGetConnectLogs

```swift
public enum ConnectLogGetConnectLogs {
    case http200(value: ConnectLogs?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ConnectLogs?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **connectPublishPutConnectRetry**
```swift
    open class func connectPublishPutConnectRetry(accountId: String, connectFailureFilter: ConnectFailureFilter? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ConnectPublishPutConnectRetry>
```

Republishes Connect information for multiple envelopes.

Republishes Connect information for the  specified set of envelopes. The primary use is to republish Connect post failures by including envelope IDs for the envelopes that failed to post in the request. The list of envelope IDs that failed to post correctly can be retrieved by calling to [Connect::listEventLogs](https://developers.docusign.com/esign-rest-api/reference/Connect/ConnectEvents/list) retrieve the failure log. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let connectFailureFilter = connectFailureFilter(envelopeIds: ["envelopeIds_example"], synchronous: "synchronous_example") // ConnectFailureFilter |  (optional)

// Republishes Connect information for multiple envelopes.
ConnectEventsAPI.connectPublishPutConnectRetry(accountId: accountId, connectFailureFilter: connectFailureFilter).whenComplete { result in
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
 **connectFailureFilter** | [**ConnectFailureFilter**](ConnectFailureFilter.md) |  | [optional] 

### Return type

#### ConnectPublishPutConnectRetry

```swift
public enum ConnectPublishPutConnectRetry {
    case http200(value: ConnectFailureResults?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ConnectFailureResults?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **connectPublishPutConnectRetryByEnvelope**
```swift
    open class func connectPublishPutConnectRetryByEnvelope(accountId: String, envelopeId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ConnectPublishPutConnectRetryByEnvelope>
```

Republishes Connect information for the specified envelope.

Republishes Connect information for the specified envelope.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 

// Republishes Connect information for the specified envelope.
ConnectEventsAPI.connectPublishPutConnectRetryByEnvelope(accountId: accountId, envelopeId: envelopeId).whenComplete { result in
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

#### ConnectPublishPutConnectRetryByEnvelope

```swift
public enum ConnectPublishPutConnectRetryByEnvelope {
    case http200(value: ConnectFailureResults?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ConnectFailureResults?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

