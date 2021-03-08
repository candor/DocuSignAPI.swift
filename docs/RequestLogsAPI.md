# RequestLogsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**aPIRequestLogDeleteRequestLogs**](RequestLogsAPI.md#apirequestlogdeleterequestlogs) | **DELETE** /v2.1/diagnostics/request_logs | Deletes the request log files.
[**aPIRequestLogGetRequestLog**](RequestLogsAPI.md#apirequestloggetrequestlog) | **GET** /v2.1/diagnostics/request_logs/{requestLogId} | Gets a request logging log file.
[**aPIRequestLogGetRequestLogSettings**](RequestLogsAPI.md#apirequestloggetrequestlogsettings) | **GET** /v2.1/diagnostics/settings | Gets the API request logging settings.
[**aPIRequestLogGetRequestLogs**](RequestLogsAPI.md#apirequestloggetrequestlogs) | **GET** /v2.1/diagnostics/request_logs | Gets the API request logging log files.
[**aPIRequestLogPutRequestLogSettings**](RequestLogsAPI.md#apirequestlogputrequestlogsettings) | **PUT** /v2.1/diagnostics/settings | Enables or disables API request logging for troubleshooting.


# **aPIRequestLogDeleteRequestLogs**
```swift
    open class func aPIRequestLogDeleteRequestLogs(headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<APIRequestLogDeleteRequestLogs>
```

Deletes the request log files.

Deletes the request log files.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI


// Deletes the request log files.
RequestLogsAPI.aPIRequestLogDeleteRequestLogs().whenComplete { result in
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
This endpoint does not need any parameter.

### Return type

#### APIRequestLogDeleteRequestLogs

```swift
public enum APIRequestLogDeleteRequestLogs {
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

# **aPIRequestLogGetRequestLog**
```swift
    open class func aPIRequestLogGetRequestLog(requestLogId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<APIRequestLogGetRequestLog>
```

Gets a request logging log file.

Retrieves information for a single log entry.  **Request** The `requestLogfId` property can be retrieved by getting the list of log entries. The Content-Transfer-Encoding header can be set to base64 to retrieve the API request/response as base 64 string. Otherwise the bytes of the request/response are returned.  **Response** If the Content-Transfer-Encoding header was set to base64, the log is returned as a base64 string.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let requestLogId = "requestLogId_example" // String | 

// Gets a request logging log file.
RequestLogsAPI.aPIRequestLogGetRequestLog(requestLogId: requestLogId).whenComplete { result in
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
 **requestLogId** | **String** |  | 

### Return type

#### APIRequestLogGetRequestLog

```swift
public enum APIRequestLogGetRequestLog {
    case http200(value: Data?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Data?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aPIRequestLogGetRequestLogSettings**
```swift
    open class func aPIRequestLogGetRequestLogSettings(headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<APIRequestLogGetRequestLogSettings>
```

Gets the API request logging settings.

Retrieves the current API request logging setting for the user and remaining log entries.  **Response** The response includes the current API request logging setting for the user, along with the maximum log entries and remaining log entries.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI


// Gets the API request logging settings.
RequestLogsAPI.aPIRequestLogGetRequestLogSettings().whenComplete { result in
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
This endpoint does not need any parameter.

### Return type

#### APIRequestLogGetRequestLogSettings

```swift
public enum APIRequestLogGetRequestLogSettings {
    case http200(value: DiagnosticsSettingsInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: DiagnosticsSettingsInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aPIRequestLogGetRequestLogs**
```swift
    open class func aPIRequestLogGetRequestLogs(encoding: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<APIRequestLogGetRequestLogs>
```

Gets the API request logging log files.

Retrieves a list of log entries as a JSON or xml object or as a zip file containing the entries.  If the Accept header is set to application/zip, the response is a zip file containing individual text files, each representing an API request.  If the Accept header is set to `application/json` or `application/xml`, the response returns list of log entries in either JSON or XML. An example JSON response body is shown below. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let encoding = "encoding_example" // String | Reserved for DocuSign. (optional)

// Gets the API request logging log files.
RequestLogsAPI.aPIRequestLogGetRequestLogs(encoding: encoding).whenComplete { result in
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
 **encoding** | **String** | Reserved for DocuSign. | [optional] 

### Return type

#### APIRequestLogGetRequestLogs

```swift
public enum APIRequestLogGetRequestLogs {
    case http200(value: ApiRequestLogsResult?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ApiRequestLogsResult?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **aPIRequestLogPutRequestLogSettings**
```swift
    open class func aPIRequestLogPutRequestLogSettings(diagnosticsSettingsInformation: DiagnosticsSettingsInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<APIRequestLogPutRequestLogSettings>
```

Enables or disables API request logging for troubleshooting.

Enables or disables API request logging for troubleshooting.  When enabled (`apiRequestLogging` is **true**), REST API requests and responses for the user are added to a log. A log can have up to 50 requests/responses and the current number of log entries can be determined by getting the settings. Logging is automatically disabled when the log limit of 50 is reached.  You can call [Diagnostics::getRequestLog ](https://developers.docusign.com/esign-rest-api/reference/Diagnostics/RequestLogs/get) or [Diagnostics::listRequestLogs](https://developers.docusign.com/esign-rest-api/reference/Diagnostics/RequestLogs/list) to download the log files (individually or as a zip file). Call [Diagnostics::deleteRequestLogs ](https://developers.docusign.com/esign-rest-api/reference/Diagnostics/RequestLogs/delete) to clear the log by deleting current entries.  Private information, such as passwords and integrator key information, which is normally located in the call header is omitted from the request/response log.  API request logging only captures requests from the authenticated user. Any call that does not authenticate the user and resolve a userId is not logged. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let diagnosticsSettingsInformation = diagnosticsSettingsInformation(apiRequestLogging: "apiRequestLogging_example", apiRequestLogMaxEntries: "apiRequestLogMaxEntries_example", apiRequestLogRemainingEntries: "apiRequestLogRemainingEntries_example") // DiagnosticsSettingsInformation |  (optional)

// Enables or disables API request logging for troubleshooting.
RequestLogsAPI.aPIRequestLogPutRequestLogSettings(diagnosticsSettingsInformation: diagnosticsSettingsInformation).whenComplete { result in
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
 **diagnosticsSettingsInformation** | [**DiagnosticsSettingsInformation**](DiagnosticsSettingsInformation.md) |  | [optional] 

### Return type

#### APIRequestLogPutRequestLogSettings

```swift
public enum APIRequestLogPutRequestLogSettings {
    case http200(value: DiagnosticsSettingsInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: DiagnosticsSettingsInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

