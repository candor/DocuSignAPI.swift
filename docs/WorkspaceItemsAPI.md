# WorkspaceItemsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**workspaceFileGetWorkspaceFile**](WorkspaceItemsAPI.md#workspacefilegetworkspacefile) | **GET** /v2.1/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId}/files/{fileId} | Gets a workspace file
[**workspaceFilePagesGetWorkspaceFilePages**](WorkspaceItemsAPI.md#workspacefilepagesgetworkspacefilepages) | **GET** /v2.1/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId}/files/{fileId}/pages | List File Pages
[**workspaceFilePostWorkspaceFiles**](WorkspaceItemsAPI.md#workspacefilepostworkspacefiles) | **POST** /v2.1/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId}/files | Creates a workspace file.
[**workspaceFilePutWorkspaceFile**](WorkspaceItemsAPI.md#workspacefileputworkspacefile) | **PUT** /v2.1/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId}/files/{fileId} | Update workspace file or folder metadata
[**workspaceFolderDeleteWorkspaceItems**](WorkspaceItemsAPI.md#workspacefolderdeleteworkspaceitems) | **DELETE** /v2.1/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId} | Deletes files or sub-folders from a workspace.
[**workspaceFolderGetWorkspaceFolder**](WorkspaceItemsAPI.md#workspacefoldergetworkspacefolder) | **GET** /v2.1/accounts/{accountId}/workspaces/{workspaceId}/folders/{folderId} | List workspace folder contents


# **workspaceFileGetWorkspaceFile**
```swift
    open class func workspaceFileGetWorkspaceFile(accountId: String, fileId: String, folderId: String, workspaceId: String, isDownload: String? = nil, pdfVersion: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<WorkspaceFileGetWorkspaceFile>
```

Gets a workspace file

This method returns a binary version of a file in a workspace.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let fileId = "fileId_example" // String | The id of the file.
let folderId = "folderId_example" // String | The id of the folder.
let workspaceId = "workspaceId_example" // String | The id of the workspace.
let isDownload = "isDownload_example" // String | When set to **true**, the `Content-Disposition` header is set in the response. The value of the header provides the filename of the file. The default is **false**. (optional)
let pdfVersion = "pdfVersion_example" // String | When set to **true** the file is returned in PDF format. (optional)

// Gets a workspace file
WorkspaceItemsAPI.workspaceFileGetWorkspaceFile(accountId: accountId, fileId: fileId, folderId: folderId, workspaceId: workspaceId, isDownload: isDownload, pdfVersion: pdfVersion).whenComplete { result in
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
 **fileId** | **String** | The id of the file. | 
 **folderId** | **String** | The id of the folder. | 
 **workspaceId** | **String** | The id of the workspace. | 
 **isDownload** | **String** | When set to **true**, the &#x60;Content-Disposition&#x60; header is set in the response. The value of the header provides the filename of the file. The default is **false**. | [optional] 
 **pdfVersion** | **String** | When set to **true** the file is returned in PDF format. | [optional] 

### Return type

#### WorkspaceFileGetWorkspaceFile

```swift
public enum WorkspaceFileGetWorkspaceFile {
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

# **workspaceFilePagesGetWorkspaceFilePages**
```swift
    open class func workspaceFilePagesGetWorkspaceFilePages(accountId: String, fileId: String, folderId: String, workspaceId: String, count: String? = nil, dpi: String? = nil, maxHeight: String? = nil, maxWidth: String? = nil, startPosition: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<WorkspaceFilePagesGetWorkspaceFilePages>
```

List File Pages

This method returns a workspace file as rasterized pages.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let fileId = "fileId_example" // String | The id of the file.
let folderId = "folderId_example" // String | The id of the folder.
let workspaceId = "workspaceId_example" // String | The id of the workspace.
let count = "count_example" // String | The maximum number of results to return. (optional)
let dpi = "dpi_example" // String | The number of dots per inch (DPI) for the resulting images. Valid values are 1-310 DPI. The default value is 94. (optional)
let maxHeight = "maxHeight_example" // String | Sets the maximum height of the returned images in pixels. (optional)
let maxWidth = "maxWidth_example" // String | Sets the maximum width of the returned images in pixels. (optional)
let startPosition = "startPosition_example" // String | The position within the total result set from which to start returning values. The value **thumbnail** may be used to return the page image. (optional)

// List File Pages
WorkspaceItemsAPI.workspaceFilePagesGetWorkspaceFilePages(accountId: accountId, fileId: fileId, folderId: folderId, workspaceId: workspaceId, count: count, dpi: dpi, maxHeight: maxHeight, maxWidth: maxWidth, startPosition: startPosition).whenComplete { result in
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
 **fileId** | **String** | The id of the file. | 
 **folderId** | **String** | The id of the folder. | 
 **workspaceId** | **String** | The id of the workspace. | 
 **count** | **String** | The maximum number of results to return. | [optional] 
 **dpi** | **String** | The number of dots per inch (DPI) for the resulting images. Valid values are 1-310 DPI. The default value is 94. | [optional] 
 **maxHeight** | **String** | Sets the maximum height of the returned images in pixels. | [optional] 
 **maxWidth** | **String** | Sets the maximum width of the returned images in pixels. | [optional] 
 **startPosition** | **String** | The position within the total result set from which to start returning values. The value **thumbnail** may be used to return the page image. | [optional] 

### Return type

#### WorkspaceFilePagesGetWorkspaceFilePages

```swift
public enum WorkspaceFilePagesGetWorkspaceFilePages {
    case http200(value: PageImages?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: PageImages?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceFilePostWorkspaceFiles**
```swift
    open class func workspaceFilePostWorkspaceFiles(accountId: String, folderId: String, workspaceId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<WorkspaceFilePostWorkspaceFiles>
```

Creates a workspace file.

This method adds a file to a workspace.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let folderId = "folderId_example" // String | The id of the folder.
let workspaceId = "workspaceId_example" // String | The id of the workspace.

// Creates a workspace file.
WorkspaceItemsAPI.workspaceFilePostWorkspaceFiles(accountId: accountId, folderId: folderId, workspaceId: workspaceId).whenComplete { result in
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
 **folderId** | **String** | The id of the folder. | 
 **workspaceId** | **String** | The id of the workspace. | 

### Return type

#### WorkspaceFilePostWorkspaceFiles

```swift
public enum WorkspaceFilePostWorkspaceFiles {
    case http201(value: WorkspaceItem?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: WorkspaceItem?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceFilePutWorkspaceFile**
```swift
    open class func workspaceFilePutWorkspaceFile(accountId: String, fileId: String, folderId: String, workspaceId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<WorkspaceFilePutWorkspaceFile>
```

Update workspace file or folder metadata

This method updates the metadata for one or more specific files or folders in a workspace.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let fileId = "fileId_example" // String | The id of the file.
let folderId = "folderId_example" // String | The id of the folder.
let workspaceId = "workspaceId_example" // String | The id of the workspace.

// Update workspace file or folder metadata
WorkspaceItemsAPI.workspaceFilePutWorkspaceFile(accountId: accountId, fileId: fileId, folderId: folderId, workspaceId: workspaceId).whenComplete { result in
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
 **fileId** | **String** | The id of the file. | 
 **folderId** | **String** | The id of the folder. | 
 **workspaceId** | **String** | The id of the workspace. | 

### Return type

#### WorkspaceFilePutWorkspaceFile

```swift
public enum WorkspaceFilePutWorkspaceFile {
    case http200(value: WorkspaceItem?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: WorkspaceItem?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workspaceFolderDeleteWorkspaceItems**
```swift
    open class func workspaceFolderDeleteWorkspaceItems(accountId: String, folderId: String, workspaceId: String, workspaceItemList: WorkspaceItemList? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<WorkspaceFolderDeleteWorkspaceItems>
```

Deletes files or sub-folders from a workspace.

This method deletes one or more files or sub-folders from a workspace folder or root.  Note: To delete items from a workspace, the `status` of the workspace must be `active`.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let folderId = "folderId_example" // String | The id of the folder.
let workspaceId = "workspaceId_example" // String | The id of the workspace.
let workspaceItemList = workspaceItemList(items: [nil]) // WorkspaceItemList |  (optional)

// Deletes files or sub-folders from a workspace.
WorkspaceItemsAPI.workspaceFolderDeleteWorkspaceItems(accountId: accountId, folderId: folderId, workspaceId: workspaceId, workspaceItemList: workspaceItemList).whenComplete { result in
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
 **folderId** | **String** | The id of the folder. | 
 **workspaceId** | **String** | The id of the workspace. | 
 **workspaceItemList** | [**WorkspaceItemList**](WorkspaceItemList.md) |  | [optional] 

### Return type

#### WorkspaceFolderDeleteWorkspaceItems

```swift
public enum WorkspaceFolderDeleteWorkspaceItems {
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

# **workspaceFolderGetWorkspaceFolder**
```swift
    open class func workspaceFolderGetWorkspaceFolder(accountId: String, folderId: String, workspaceId: String, count: String? = nil, includeFiles: String? = nil, includeSubFolders: String? = nil, includeThumbnails: String? = nil, includeUserDetail: String? = nil, startPosition: String? = nil, workspaceUserId: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<WorkspaceFolderGetWorkspaceFolder>
```

List workspace folder contents

This method returns the contents of a workspace folder, which can include sub-folders and files.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let folderId = "folderId_example" // String | The id of the folder.
let workspaceId = "workspaceId_example" // String | The id of the workspace.
let count = "count_example" // String | The maximum number of results to return. (optional)
let includeFiles = "includeFiles_example" // String | When set to **true**, the response includes file information (in addition to folder information). The default is **false**. (optional)
let includeSubFolders = "includeSubFolders_example" // String | When set to **true**, the response includes information about the sub-folders of the current folder. The default is **false**. (optional)
let includeThumbnails = "includeThumbnails_example" // String | When set to **true**, the response returns thumbnails.  The default is **false**. (optional)
let includeUserDetail = "includeUserDetail_example" // String | When set to **true**, the response includes extended details about the user. The default is **false**. (optional)
let startPosition = "startPosition_example" // String | The position within the total result set from which to start returning values. (optional)
let workspaceUserId = "workspaceUserId_example" // String | If set, the response only includes results associated with the `userId` that you specify. (optional)

// List workspace folder contents
WorkspaceItemsAPI.workspaceFolderGetWorkspaceFolder(accountId: accountId, folderId: folderId, workspaceId: workspaceId, count: count, includeFiles: includeFiles, includeSubFolders: includeSubFolders, includeThumbnails: includeThumbnails, includeUserDetail: includeUserDetail, startPosition: startPosition, workspaceUserId: workspaceUserId).whenComplete { result in
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
 **folderId** | **String** | The id of the folder. | 
 **workspaceId** | **String** | The id of the workspace. | 
 **count** | **String** | The maximum number of results to return. | [optional] 
 **includeFiles** | **String** | When set to **true**, the response includes file information (in addition to folder information). The default is **false**. | [optional] 
 **includeSubFolders** | **String** | When set to **true**, the response includes information about the sub-folders of the current folder. The default is **false**. | [optional] 
 **includeThumbnails** | **String** | When set to **true**, the response returns thumbnails.  The default is **false**. | [optional] 
 **includeUserDetail** | **String** | When set to **true**, the response includes extended details about the user. The default is **false**. | [optional] 
 **startPosition** | **String** | The position within the total result set from which to start returning values. | [optional] 
 **workspaceUserId** | **String** | If set, the response only includes results associated with the &#x60;userId&#x60; that you specify. | [optional] 

### Return type

#### WorkspaceFolderGetWorkspaceFolder

```swift
public enum WorkspaceFolderGetWorkspaceFolder {
    case http200(value: WorkspaceFolderContents?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: WorkspaceFolderContents?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

