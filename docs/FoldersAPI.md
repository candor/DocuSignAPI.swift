# FoldersAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**foldersGetFolderItems**](FoldersAPI.md#foldersgetfolderitems) | **GET** /v2.1/accounts/{accountId}/folders/{folderId} | Gets a list of the envelopes in the specified folder.
[**foldersGetFolders**](FoldersAPI.md#foldersgetfolders) | **GET** /v2.1/accounts/{accountId}/folders | Gets a list of the folders for the account.
[**foldersPutFolderById**](FoldersAPI.md#foldersputfolderbyid) | **PUT** /v2.1/accounts/{accountId}/folders/{folderId} | Moves an envelope from its current folder to the specified folder.
[**searchFoldersGetSearchFolderContents**](FoldersAPI.md#searchfoldersgetsearchfoldercontents) | **GET** /v2.1/accounts/{accountId}/search_folders/{searchFolderId} | Gets a list of envelopes in folders matching the specified criteria.


# **foldersGetFolderItems**
```swift
    open class func foldersGetFolderItems(accountId: String, folderId: String, fromDate: String? = nil, includeItems: String? = nil, ownerEmail: String? = nil, ownerName: String? = nil, searchText: String? = nil, startPosition: String? = nil, status: String? = nil, toDate: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<FoldersGetFolderItems>
```

Gets a list of the envelopes in the specified folder.

Retrieves a list of the envelopes in the specified folder. You can narrow the query by specifying search criteria in the query string parameters.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let folderId = "folderId_example" // String | The id of the folder.
let fromDate = "fromDate_example" // String | Reserved for DocuSign. (optional)
let includeItems = "includeItems_example" // String | Indicates whether folder items are included in the response. If this parameter is omitted, the default is false. (optional)
let ownerEmail = "ownerEmail_example" // String | Reserved for DocuSign. (optional)
let ownerName = "ownerName_example" // String | Reserved for DocuSign. (optional)
let searchText = "searchText_example" // String | Reserved for DocuSign. (optional)
let startPosition = "startPosition_example" // String | Reserved for DocuSign. (optional)
let status = "status_example" // String | Reserved for DocuSign. (optional)
let toDate = "toDate_example" // String | Reserved for DocuSign. (optional)

// Gets a list of the envelopes in the specified folder.
FoldersAPI.foldersGetFolderItems(accountId: accountId, folderId: folderId, fromDate: fromDate, includeItems: includeItems, ownerEmail: ownerEmail, ownerName: ownerName, searchText: searchText, startPosition: startPosition, status: status, toDate: toDate).whenComplete { result in
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
 **fromDate** | **String** | Reserved for DocuSign. | [optional] 
 **includeItems** | **String** | Indicates whether folder items are included in the response. If this parameter is omitted, the default is false. | [optional] 
 **ownerEmail** | **String** | Reserved for DocuSign. | [optional] 
 **ownerName** | **String** | Reserved for DocuSign. | [optional] 
 **searchText** | **String** | Reserved for DocuSign. | [optional] 
 **startPosition** | **String** | Reserved for DocuSign. | [optional] 
 **status** | **String** | Reserved for DocuSign. | [optional] 
 **toDate** | **String** | Reserved for DocuSign. | [optional] 

### Return type

#### FoldersGetFolderItems

```swift
public enum FoldersGetFolderItems {
    case http200(value: FolderItemsResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: FolderItemsResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **foldersGetFolders**
```swift
    open class func foldersGetFolders(accountId: String, include: String? = nil, includeItems: String? = nil, startPosition: String? = nil, template: String? = nil, userFilter: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<FoldersGetFolders>
```

Gets a list of the folders for the account.

Retrieves a list of the folders for the account, including the folder hierarchy. You can specify whether to return just the template folder or template folder and normal folders by setting the `template` query string parameter.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let include = "include_example" // String | A comma-separated list of folder types to include in the response. Valid values are:  - `envelope_folders`: Returns a list of envelope folders. (Default) - `template_folders`: Returns a list of template folders.  - `shared_template_folders`: Returns a list of shared template folders.  (optional)
let includeItems = "includeItems_example" // String | Indicates whether folder items are included in the response. If this parameter is omitted, the default is false. (optional)
let startPosition = "startPosition_example" // String | The position within the total result set from which to start returning values. (optional)
let template = "template_example" // String | This parameter is deprecated as of version 2.1. Use `include` instead. (optional)
let userFilter = "userFilter_example" // String | Narrows down the resulting folder list by the following values:  - `all`: Returns all templates owned or shared with the user. (default) - `owned_by_me`: Returns only  templates the user owns. - `shared_with_me`: Returns only templates that are shared with the user.  (optional)

// Gets a list of the folders for the account.
FoldersAPI.foldersGetFolders(accountId: accountId, include: include, includeItems: includeItems, startPosition: startPosition, template: template, userFilter: userFilter).whenComplete { result in
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
 **include** | **String** | A comma-separated list of folder types to include in the response. Valid values are:  - &#x60;envelope_folders&#x60;: Returns a list of envelope folders. (Default) - &#x60;template_folders&#x60;: Returns a list of template folders.  - &#x60;shared_template_folders&#x60;: Returns a list of shared template folders.  | [optional] 
 **includeItems** | **String** | Indicates whether folder items are included in the response. If this parameter is omitted, the default is false. | [optional] 
 **startPosition** | **String** | The position within the total result set from which to start returning values. | [optional] 
 **template** | **String** | This parameter is deprecated as of version 2.1. Use &#x60;include&#x60; instead. | [optional] 
 **userFilter** | **String** | Narrows down the resulting folder list by the following values:  - &#x60;all&#x60;: Returns all templates owned or shared with the user. (default) - &#x60;owned_by_me&#x60;: Returns only  templates the user owns. - &#x60;shared_with_me&#x60;: Returns only templates that are shared with the user.  | [optional] 

### Return type

#### FoldersGetFolders

```swift
public enum FoldersGetFolders {
    case http200(value: FoldersResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: FoldersResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **foldersPutFolderById**
```swift
    open class func foldersPutFolderById(accountId: String, folderId: String, foldersRequest: FoldersRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<FoldersPutFolderById>
```

Moves an envelope from its current folder to the specified folder.

Moves an envelope from its current folder to the specified folder.  You can use this method to delete envelopes by specifying `recyclebin` in the `folderId` parameter. Placing an in-process envelope (envelope status of `sent` or `delivered`) in the recycle bin voids the envelope.  You can also use this method to delete templates by specifying a template ID instead of an envelope ID in the `envelopeIds` property and specifying `recyclebin` in the `folderId` parameter. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let folderId = "folderId_example" // String | The id of the folder.
let foldersRequest = foldersRequest(envelopeIds: ["envelopeIds_example"], folders: [nil], fromFolderId: "fromFolderId_example") // FoldersRequest |  (optional)

// Moves an envelope from its current folder to the specified folder.
FoldersAPI.foldersPutFolderById(accountId: accountId, folderId: folderId, foldersRequest: foldersRequest).whenComplete { result in
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
 **foldersRequest** | [**FoldersRequest**](FoldersRequest.md) |  | [optional] 

### Return type

#### FoldersPutFolderById

```swift
public enum FoldersPutFolderById {
    case http200(value: FoldersResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: FoldersResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchFoldersGetSearchFolderContents**
```swift
    open class func searchFoldersGetSearchFolderContents(accountId: String, searchFolderId: String, all: String? = nil, count: String? = nil, fromDate: String? = nil, includeRecipients: String? = nil, order: String? = nil, orderBy: String? = nil, startPosition: String? = nil, toDate: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<SearchFoldersGetSearchFolderContents>
```

Gets a list of envelopes in folders matching the specified criteria.

**This method is deprecated in API v2.1.**  Use  [Envelopes::listStatusChanges](https://developers.docusign.com/esign-rest-api/reference/Envelopes/Envelopes/listStatusChanges) instead.  Retrieves a list of items that match the criteria specified in the query.  If the user ID of the user making the call is the same as the user ID for any returned recipient, then the userId property is added to the returned information for those recipients.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let searchFolderId = "searchFolderId_example" // String | Specifies the envelope group that is searched by the request. These are logical groupings, not actual folder names. Valid values are: drafts, awaiting_my_signature, completed, out_for_signature.
let all = "all_example" // String | Specifies that all envelopes that match the criteria are returned. (optional)
let count = "count_example" // String | Specifies the number of records returned in the cache. The number must be greater than 0 and less than or equal to 100. (optional)
let fromDate = "fromDate_example" // String | Specifies the start of the date range to return. If no value is provided, the default search is the previous 30 days. (optional)
let includeRecipients = "includeRecipients_example" // String | When set to **true**, the recipient information is returned in the response. (optional)
let order = "order_example" // String | Specifies the order in which the list is returned. Valid values are: `asc` for ascending order, and `desc` for descending order. (optional)
let orderBy = "orderBy_example" // String | Specifies the property used to sort the list. Valid values are: `action_required`, `created`, `completed`, `sent`, `signer_list`, `status`, or `subject`. (optional)
let startPosition = "startPosition_example" // String | Specifies the the starting location in the result set of the items that are returned. (optional)
let toDate = "toDate_example" // String | Specifies the end of the date range to return. (optional)

// Gets a list of envelopes in folders matching the specified criteria.
FoldersAPI.searchFoldersGetSearchFolderContents(accountId: accountId, searchFolderId: searchFolderId, all: all, count: count, fromDate: fromDate, includeRecipients: includeRecipients, order: order, orderBy: orderBy, startPosition: startPosition, toDate: toDate).whenComplete { result in
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
 **searchFolderId** | **String** | Specifies the envelope group that is searched by the request. These are logical groupings, not actual folder names. Valid values are: drafts, awaiting_my_signature, completed, out_for_signature. | 
 **all** | **String** | Specifies that all envelopes that match the criteria are returned. | [optional] 
 **count** | **String** | Specifies the number of records returned in the cache. The number must be greater than 0 and less than or equal to 100. | [optional] 
 **fromDate** | **String** | Specifies the start of the date range to return. If no value is provided, the default search is the previous 30 days. | [optional] 
 **includeRecipients** | **String** | When set to **true**, the recipient information is returned in the response. | [optional] 
 **order** | **String** | Specifies the order in which the list is returned. Valid values are: &#x60;asc&#x60; for ascending order, and &#x60;desc&#x60; for descending order. | [optional] 
 **orderBy** | **String** | Specifies the property used to sort the list. Valid values are: &#x60;action_required&#x60;, &#x60;created&#x60;, &#x60;completed&#x60;, &#x60;sent&#x60;, &#x60;signer_list&#x60;, &#x60;status&#x60;, or &#x60;subject&#x60;. | [optional] 
 **startPosition** | **String** | Specifies the the starting location in the result set of the items that are returned. | [optional] 
 **toDate** | **String** | Specifies the end of the date range to return. | [optional] 

### Return type

#### SearchFoldersGetSearchFolderContents

```swift
public enum SearchFoldersGetSearchFolderContents {
    case http200(value: FolderItemResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: FolderItemResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

