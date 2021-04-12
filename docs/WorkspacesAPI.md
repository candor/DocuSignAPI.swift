# WorkspacesAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**workspaceDeleteWorkspace**](WorkspacesAPI.md#workspacedeleteworkspace) | **DELETE** /v2.1/accounts/{accountId}/workspaces/{workspaceId} | Delete Workspace
[**workspaceGetWorkspace**](WorkspacesAPI.md#workspacegetworkspace) | **GET** /v2.1/accounts/{accountId}/workspaces/{workspaceId} | Get Workspace
[**workspaceGetWorkspaces**](WorkspacesAPI.md#workspacegetworkspaces) | **GET** /v2.1/accounts/{accountId}/workspaces | List Workspaces
[**workspacePostWorkspace**](WorkspacesAPI.md#workspacepostworkspace) | **POST** /v2.1/accounts/{accountId}/workspaces | Create a Workspace
[**workspacePutWorkspace**](WorkspacesAPI.md#workspaceputworkspace) | **PUT** /v2.1/accounts/{accountId}/workspaces/{workspaceId} | Update Workspace


# **workspaceDeleteWorkspace**
```swift
    open class func workspaceDeleteWorkspace(accountId: String, workspaceId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<WorkspaceDeleteWorkspace>
```

Delete Workspace

Deletes an existing workspace (logically).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let workspaceId = "workspaceId_example" // String | The id of the workspace.

// Delete Workspace
WorkspacesAPI.workspaceDeleteWorkspace(accountId: accountId, workspaceId: workspaceId).whenComplete { result in
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
 **workspaceId** | **String** | The id of the workspace. | 

### Return type

#### WorkspaceDeleteWorkspace

```swift
public enum WorkspaceDeleteWorkspace {
    case http200(value: Workspace?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Workspace?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceGetWorkspace**
```swift
    open class func workspaceGetWorkspace(accountId: String, workspaceId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<WorkspaceGetWorkspace>
```

Get Workspace

Retrives properties about a workspace given a unique workspaceId. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let workspaceId = "workspaceId_example" // String | The id of the workspace.

// Get Workspace
WorkspacesAPI.workspaceGetWorkspace(accountId: accountId, workspaceId: workspaceId).whenComplete { result in
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
 **workspaceId** | **String** | The id of the workspace. | 

### Return type

#### WorkspaceGetWorkspace

```swift
public enum WorkspaceGetWorkspace {
    case http200(value: Workspace?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Workspace?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceGetWorkspaces**
```swift
    open class func workspaceGetWorkspaces(accountId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<WorkspaceGetWorkspaces>
```

List Workspaces

Gets information about the Workspaces that have been created.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.

// List Workspaces
WorkspacesAPI.workspaceGetWorkspaces(accountId: accountId).whenComplete { result in
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

#### WorkspaceGetWorkspaces

```swift
public enum WorkspaceGetWorkspaces {
    case http200(value: WorkspaceList?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: WorkspaceList?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspacePostWorkspace**
```swift
    open class func workspacePostWorkspace(accountId: String, workspace: Workspace? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<WorkspacePostWorkspace>
```

Create a Workspace

This method creates a new workspace.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let workspace = workspace(billableAccountId: "billableAccountId_example", callerInformation: workspaceUser(accountId: "accountId_example", accountName: "accountName_example", activeSince: "activeSince_example", created: "created_example", createdById: "createdById_example", email: "email_example", errorDetails: errorDetails(errorCode: "errorCode_example", message: "message_example"), invitationEmailBlurb: "invitationEmailBlurb_example", invitationEmailSubject: "invitationEmailSubject_example", lastModified: "lastModified_example", lastModifiedById: "lastModifiedById_example", status: "status_example", type: "type_example", userId: "userId_example", userName: "userName_example", workspaceId: "workspaceId_example", workspaceUserBaseUrl: "workspaceUserBaseUrl_example", workspaceUserId: "workspaceUserId_example", workspaceUserUri: "workspaceUserUri_example"), created: "created_example", createdByInformation: nil, lastModified: "lastModified_example", lastModifiedByInformation: nil, settings: workspaceSettings(commentsAllowed: "commentsAllowed_example"), status: "status_example", workspaceBaseUrl: "workspaceBaseUrl_example", workspaceDescription: "workspaceDescription_example", workspaceId: "workspaceId_example", workspaceName: "workspaceName_example", workspaceUri: "workspaceUri_example") // Workspace |  (optional)

// Create a Workspace
WorkspacesAPI.workspacePostWorkspace(accountId: accountId, workspace: workspace).whenComplete { result in
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
 **workspace** | [**Workspace**](Workspace.md) |  | [optional] 

### Return type

#### WorkspacePostWorkspace

```swift
public enum WorkspacePostWorkspace {
    case http201(value: Workspace?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Workspace?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspacePutWorkspace**
```swift
    open class func workspacePutWorkspace(accountId: String, workspaceId: String, workspace: Workspace? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<WorkspacePutWorkspace>
```

Update Workspace

Updates information about a specific workspace.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let workspaceId = "workspaceId_example" // String | The id of the workspace.
let workspace = workspace(billableAccountId: "billableAccountId_example", callerInformation: workspaceUser(accountId: "accountId_example", accountName: "accountName_example", activeSince: "activeSince_example", created: "created_example", createdById: "createdById_example", email: "email_example", errorDetails: errorDetails(errorCode: "errorCode_example", message: "message_example"), invitationEmailBlurb: "invitationEmailBlurb_example", invitationEmailSubject: "invitationEmailSubject_example", lastModified: "lastModified_example", lastModifiedById: "lastModifiedById_example", status: "status_example", type: "type_example", userId: "userId_example", userName: "userName_example", workspaceId: "workspaceId_example", workspaceUserBaseUrl: "workspaceUserBaseUrl_example", workspaceUserId: "workspaceUserId_example", workspaceUserUri: "workspaceUserUri_example"), created: "created_example", createdByInformation: nil, lastModified: "lastModified_example", lastModifiedByInformation: nil, settings: workspaceSettings(commentsAllowed: "commentsAllowed_example"), status: "status_example", workspaceBaseUrl: "workspaceBaseUrl_example", workspaceDescription: "workspaceDescription_example", workspaceId: "workspaceId_example", workspaceName: "workspaceName_example", workspaceUri: "workspaceUri_example") // Workspace |  (optional)

// Update Workspace
WorkspacesAPI.workspacePutWorkspace(accountId: accountId, workspaceId: workspaceId, workspace: workspace).whenComplete { result in
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
 **workspaceId** | **String** | The id of the workspace. | 
 **workspace** | [**Workspace**](Workspace.md) |  | [optional] 

### Return type

#### WorkspacePutWorkspace

```swift
public enum WorkspacePutWorkspace {
    case http200(value: Workspace?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Workspace?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

