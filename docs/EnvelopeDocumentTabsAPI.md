# EnvelopeDocumentTabsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tabsDeleteDocumentTabs**](EnvelopeDocumentTabsAPI.md#tabsdeletedocumenttabs) | **DELETE** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/tabs | 
[**tabsGetDocumentTabs**](EnvelopeDocumentTabsAPI.md#tabsgetdocumenttabs) | **GET** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/tabs | Returns the tabs on a document.
[**tabsGetPageTabs**](EnvelopeDocumentTabsAPI.md#tabsgetpagetabs) | **GET** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/pages/{pageNumber}/tabs | Returns tabs on the specified page.
[**tabsPostDocumentTabs**](EnvelopeDocumentTabsAPI.md#tabspostdocumenttabs) | **POST** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/tabs | 
[**tabsPutDocumentTabs**](EnvelopeDocumentTabsAPI.md#tabsputdocumenttabs) | **PUT** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/tabs | 


# **tabsDeleteDocumentTabs**
```swift
    open class func tabsDeleteDocumentTabs(accountId: String, documentId: String, envelopeId: String, tabs: Tabs? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TabsDeleteDocumentTabs>
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let tabs = tabs(approveTabs: [nil], checkboxTabs: [nil], commentThreadTabs: [nil], commissionCountyTabs: [nil], commissionExpirationTabs: [nil], commissionNumberTabs: [nil], commissionStateTabs: [nil], companyTabs: [nil], dateSignedTabs: [nil], dateTabs: [Date()], declineTabs: [nil], drawTabs: [nil], emailAddressTabs: [nil], emailTabs: [nil], envelopeIdTabs: [nil], firstNameTabs: [nil], formulaTabs: [nil], fullNameTabs: [nil], initialHereTabs: [nil], lastNameTabs: [nil], listTabs: [nil], notarizeTabs: [nil], notarySealTabs: [nil], noteTabs: [nil], numberTabs: [123], phoneNumberTabs: [nil], polyLineOverlayTabs: [nil], radioGroupTabs: [nil], signerAttachmentTabs: [nil], signHereTabs: [nil], smartSectionTabs: [nil], ssnTabs: [nil], tabGroups: [nil], textTabs: [nil], titleTabs: [nil], viewTabs: [nil], zipTabs: [nil]) // Tabs | A list of tabs, which are represented graphically as symbols on documents at the time of signing. Tabs show recipients where to sign, initial, or enter data. They may also display data to the recipients. (optional)

EnvelopeDocumentTabsAPI.tabsDeleteDocumentTabs(accountId: accountId, documentId: documentId, envelopeId: envelopeId, tabs: tabs).whenComplete { result in
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
 **documentId** | **String** | The &#x60;documentId&#x60; is set by the API client. It is an integer that falls between &#x60;1&#x60; and 2,147,483,647. The value is encoded as a string without commas. The values &#x60;1&#x60;, &#x60;2&#x60;, &#x60;3&#x60;, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a &#x60;documentId&#x60; property that specifies the document on which to place the tab. | 
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **tabs** | [**Tabs**](Tabs.md) | A list of tabs, which are represented graphically as symbols on documents at the time of signing. Tabs show recipients where to sign, initial, or enter data. They may also display data to the recipients. | [optional] 

### Return type

#### TabsDeleteDocumentTabs

```swift
public enum TabsDeleteDocumentTabs {
    case http200(value: Tabs?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Tabs?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tabsGetDocumentTabs**
```swift
    open class func tabsGetDocumentTabs(accountId: String, documentId: String, envelopeId: String, pageNumbers: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TabsGetDocumentTabs>
```

Returns the tabs on a document.

This method returns the tabs associated with a document.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let pageNumbers = "pageNumbers_example" // String | Filters for tabs that occur on the pages that you specify. Enter as a comma-separated list of page GUIDs.  Example: `page_numbers=2,6`  Note: You can only enter individual page numbers, and not a page range. (optional)

// Returns the tabs on a document.
EnvelopeDocumentTabsAPI.tabsGetDocumentTabs(accountId: accountId, documentId: documentId, envelopeId: envelopeId, pageNumbers: pageNumbers).whenComplete { result in
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
 **documentId** | **String** | The &#x60;documentId&#x60; is set by the API client. It is an integer that falls between &#x60;1&#x60; and 2,147,483,647. The value is encoded as a string without commas. The values &#x60;1&#x60;, &#x60;2&#x60;, &#x60;3&#x60;, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a &#x60;documentId&#x60; property that specifies the document on which to place the tab. | 
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **pageNumbers** | **String** | Filters for tabs that occur on the pages that you specify. Enter as a comma-separated list of page GUIDs.  Example: &#x60;page_numbers&#x3D;2,6&#x60;  Note: You can only enter individual page numbers, and not a page range. | [optional] 

### Return type

#### TabsGetDocumentTabs

```swift
public enum TabsGetDocumentTabs {
    case http200(value: EnvelopeDocumentTabs?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeDocumentTabs?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tabsGetPageTabs**
```swift
    open class func tabsGetPageTabs(accountId: String, documentId: String, envelopeId: String, pageNumber: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TabsGetPageTabs>
```

Returns tabs on the specified page.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let pageNumber = "pageNumber_example" // String | The page number being accessed.

// Returns tabs on the specified page.
EnvelopeDocumentTabsAPI.tabsGetPageTabs(accountId: accountId, documentId: documentId, envelopeId: envelopeId, pageNumber: pageNumber).whenComplete { result in
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
 **documentId** | **String** | The &#x60;documentId&#x60; is set by the API client. It is an integer that falls between &#x60;1&#x60; and 2,147,483,647. The value is encoded as a string without commas. The values &#x60;1&#x60;, &#x60;2&#x60;, &#x60;3&#x60;, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a &#x60;documentId&#x60; property that specifies the document on which to place the tab. | 
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **pageNumber** | **String** | The page number being accessed. | 

### Return type

#### TabsGetPageTabs

```swift
public enum TabsGetPageTabs {
    case http200(value: EnvelopeDocumentTabs?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeDocumentTabs?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tabsPostDocumentTabs**
```swift
    open class func tabsPostDocumentTabs(accountId: String, documentId: String, envelopeId: String, tabs: Tabs? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TabsPostDocumentTabs>
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let tabs = tabs(approveTabs: [nil], checkboxTabs: [nil], commentThreadTabs: [nil], commissionCountyTabs: [nil], commissionExpirationTabs: [nil], commissionNumberTabs: [nil], commissionStateTabs: [nil], companyTabs: [nil], dateSignedTabs: [nil], dateTabs: [Date()], declineTabs: [nil], drawTabs: [nil], emailAddressTabs: [nil], emailTabs: [nil], envelopeIdTabs: [nil], firstNameTabs: [nil], formulaTabs: [nil], fullNameTabs: [nil], initialHereTabs: [nil], lastNameTabs: [nil], listTabs: [nil], notarizeTabs: [nil], notarySealTabs: [nil], noteTabs: [nil], numberTabs: [123], phoneNumberTabs: [nil], polyLineOverlayTabs: [nil], radioGroupTabs: [nil], signerAttachmentTabs: [nil], signHereTabs: [nil], smartSectionTabs: [nil], ssnTabs: [nil], tabGroups: [nil], textTabs: [nil], titleTabs: [nil], viewTabs: [nil], zipTabs: [nil]) // Tabs | A list of tabs, which are represented graphically as symbols on documents at the time of signing. Tabs show recipients where to sign, initial, or enter data. They may also display data to the recipients. (optional)

EnvelopeDocumentTabsAPI.tabsPostDocumentTabs(accountId: accountId, documentId: documentId, envelopeId: envelopeId, tabs: tabs).whenComplete { result in
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
 **documentId** | **String** | The &#x60;documentId&#x60; is set by the API client. It is an integer that falls between &#x60;1&#x60; and 2,147,483,647. The value is encoded as a string without commas. The values &#x60;1&#x60;, &#x60;2&#x60;, &#x60;3&#x60;, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a &#x60;documentId&#x60; property that specifies the document on which to place the tab. | 
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **tabs** | [**Tabs**](Tabs.md) | A list of tabs, which are represented graphically as symbols on documents at the time of signing. Tabs show recipients where to sign, initial, or enter data. They may also display data to the recipients. | [optional] 

### Return type

#### TabsPostDocumentTabs

```swift
public enum TabsPostDocumentTabs {
    case http201(value: Tabs?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Tabs?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tabsPutDocumentTabs**
```swift
    open class func tabsPutDocumentTabs(accountId: String, documentId: String, envelopeId: String, tabs: Tabs? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TabsPutDocumentTabs>
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let tabs = tabs(approveTabs: [nil], checkboxTabs: [nil], commentThreadTabs: [nil], commissionCountyTabs: [nil], commissionExpirationTabs: [nil], commissionNumberTabs: [nil], commissionStateTabs: [nil], companyTabs: [nil], dateSignedTabs: [nil], dateTabs: [Date()], declineTabs: [nil], drawTabs: [nil], emailAddressTabs: [nil], emailTabs: [nil], envelopeIdTabs: [nil], firstNameTabs: [nil], formulaTabs: [nil], fullNameTabs: [nil], initialHereTabs: [nil], lastNameTabs: [nil], listTabs: [nil], notarizeTabs: [nil], notarySealTabs: [nil], noteTabs: [nil], numberTabs: [123], phoneNumberTabs: [nil], polyLineOverlayTabs: [nil], radioGroupTabs: [nil], signerAttachmentTabs: [nil], signHereTabs: [nil], smartSectionTabs: [nil], ssnTabs: [nil], tabGroups: [nil], textTabs: [nil], titleTabs: [nil], viewTabs: [nil], zipTabs: [nil]) // Tabs | A list of tabs, which are represented graphically as symbols on documents at the time of signing. Tabs show recipients where to sign, initial, or enter data. They may also display data to the recipients. (optional)

EnvelopeDocumentTabsAPI.tabsPutDocumentTabs(accountId: accountId, documentId: documentId, envelopeId: envelopeId, tabs: tabs).whenComplete { result in
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
 **documentId** | **String** | The &#x60;documentId&#x60; is set by the API client. It is an integer that falls between &#x60;1&#x60; and 2,147,483,647. The value is encoded as a string without commas. The values &#x60;1&#x60;, &#x60;2&#x60;, &#x60;3&#x60;, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a &#x60;documentId&#x60; property that specifies the document on which to place the tab. | 
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **tabs** | [**Tabs**](Tabs.md) | A list of tabs, which are represented graphically as symbols on documents at the time of signing. Tabs show recipients where to sign, initial, or enter data. They may also display data to the recipients. | [optional] 

### Return type

#### TabsPutDocumentTabs

```swift
public enum TabsPutDocumentTabs {
    case http200(value: Tabs?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Tabs?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

