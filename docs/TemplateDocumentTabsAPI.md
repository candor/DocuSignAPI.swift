# TemplateDocumentTabsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tabsDeleteTemplateDocumentTabs**](TemplateDocumentTabsAPI.md#tabsdeletetemplatedocumenttabs) | **DELETE** /v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/tabs | 
[**tabsGetTemplateDocumentTabs**](TemplateDocumentTabsAPI.md#tabsgettemplatedocumenttabs) | **GET** /v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/tabs | Returns tabs on the document.
[**tabsGetTemplatePageTabs**](TemplateDocumentTabsAPI.md#tabsgettemplatepagetabs) | **GET** /v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/pages/{pageNumber}/tabs | Returns tabs on the specified page.
[**tabsPostTemplateDocumentTabs**](TemplateDocumentTabsAPI.md#tabsposttemplatedocumenttabs) | **POST** /v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/tabs | Create Template Document Tabs
[**tabsPutTemplateDocumentTabs**](TemplateDocumentTabsAPI.md#tabsputtemplatedocumenttabs) | **PUT** /v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/tabs | 


# **tabsDeleteTemplateDocumentTabs**
```swift
    open class func tabsDeleteTemplateDocumentTabs(accountId: String, documentId: String, templateId: String, templateTabs: TemplateTabs? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TabsDeleteTemplateDocumentTabs>
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
let templateId = "templateId_example" // String | The id of the template.
let templateTabs = templateTabs(approveTabs: [nil], checkboxTabs: [nil], commentThreadTabs: [nil], commissionCountyTabs: [nil], commissionExpirationTabs: [nil], commissionNumberTabs: [nil], commissionStateTabs: [nil], companyTabs: [nil], dateSignedTabs: [nil], dateTabs: [Date()], declineTabs: [nil], drawTabs: [nil], emailAddressTabs: [nil], emailTabs: [nil], envelopeIdTabs: [nil], firstNameTabs: [nil], formulaTabs: [nil], fullNameTabs: [nil], initialHereTabs: [nil], lastNameTabs: [nil], listTabs: [nil], notarizeTabs: [nil], notarySealTabs: [nil], noteTabs: [nil], numberTabs: [123], phoneNumberTabs: [nil], polyLineOverlayTabs: [nil], radioGroupTabs: [nil], signerAttachmentTabs: [nil], signHereTabs: [nil], smartSectionTabs: [nil], ssnTabs: [nil], tabGroups: [nil], textTabs: [nil], titleTabs: [nil], viewTabs: [nil], zipTabs: [nil]) // TemplateTabs |  (optional)

TemplateDocumentTabsAPI.tabsDeleteTemplateDocumentTabs(accountId: accountId, documentId: documentId, templateId: templateId, templateTabs: templateTabs).whenComplete { result in
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
 **templateId** | **String** | The id of the template. | 
 **templateTabs** | [**TemplateTabs**](TemplateTabs.md) |  | [optional] 

### Return type

#### TabsDeleteTemplateDocumentTabs

```swift
public enum TabsDeleteTemplateDocumentTabs {
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

# **tabsGetTemplateDocumentTabs**
```swift
    open class func tabsGetTemplateDocumentTabs(accountId: String, documentId: String, templateId: String, pageNumbers: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TabsGetTemplateDocumentTabs>
```

Returns tabs on the document.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
let templateId = "templateId_example" // String | The id of the template.
let pageNumbers = "pageNumbers_example" // String | Filters for tabs that occur on the pages that you specify. Enter as a comma-separated list of page Guids.  Example: `page_numbers=2,6` (optional)

// Returns tabs on the document.
TemplateDocumentTabsAPI.tabsGetTemplateDocumentTabs(accountId: accountId, documentId: documentId, templateId: templateId, pageNumbers: pageNumbers).whenComplete { result in
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
 **templateId** | **String** | The id of the template. | 
 **pageNumbers** | **String** | Filters for tabs that occur on the pages that you specify. Enter as a comma-separated list of page Guids.  Example: &#x60;page_numbers&#x3D;2,6&#x60; | [optional] 

### Return type

#### TabsGetTemplateDocumentTabs

```swift
public enum TabsGetTemplateDocumentTabs {
    case http200(value: TemplateDocumentTabs?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: TemplateDocumentTabs?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tabsGetTemplatePageTabs**
```swift
    open class func tabsGetTemplatePageTabs(accountId: String, documentId: String, pageNumber: String, templateId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TabsGetTemplatePageTabs>
```

Returns tabs on the specified page.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
let pageNumber = "pageNumber_example" // String | The page number being accessed.
let templateId = "templateId_example" // String | The id of the template.

// Returns tabs on the specified page.
TemplateDocumentTabsAPI.tabsGetTemplatePageTabs(accountId: accountId, documentId: documentId, pageNumber: pageNumber, templateId: templateId).whenComplete { result in
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
 **pageNumber** | **String** | The page number being accessed. | 
 **templateId** | **String** | The id of the template. | 

### Return type

#### TabsGetTemplatePageTabs

```swift
public enum TabsGetTemplatePageTabs {
    case http200(value: TemplateDocumentTabs?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: TemplateDocumentTabs?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tabsPostTemplateDocumentTabs**
```swift
    open class func tabsPostTemplateDocumentTabs(accountId: String, documentId: String, templateId: String, templateTabs: TemplateTabs? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TabsPostTemplateDocumentTabs>
```

Create Template Document Tabs

This method creates Template Document Tabs.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
let templateId = "templateId_example" // String | The id of the template.
let templateTabs = templateTabs(approveTabs: [nil], checkboxTabs: [nil], commentThreadTabs: [nil], commissionCountyTabs: [nil], commissionExpirationTabs: [nil], commissionNumberTabs: [nil], commissionStateTabs: [nil], companyTabs: [nil], dateSignedTabs: [nil], dateTabs: [Date()], declineTabs: [nil], drawTabs: [nil], emailAddressTabs: [nil], emailTabs: [nil], envelopeIdTabs: [nil], firstNameTabs: [nil], formulaTabs: [nil], fullNameTabs: [nil], initialHereTabs: [nil], lastNameTabs: [nil], listTabs: [nil], notarizeTabs: [nil], notarySealTabs: [nil], noteTabs: [nil], numberTabs: [123], phoneNumberTabs: [nil], polyLineOverlayTabs: [nil], radioGroupTabs: [nil], signerAttachmentTabs: [nil], signHereTabs: [nil], smartSectionTabs: [nil], ssnTabs: [nil], tabGroups: [nil], textTabs: [nil], titleTabs: [nil], viewTabs: [nil], zipTabs: [nil]) // TemplateTabs |  (optional)

// Create Template Document Tabs
TemplateDocumentTabsAPI.tabsPostTemplateDocumentTabs(accountId: accountId, documentId: documentId, templateId: templateId, templateTabs: templateTabs).whenComplete { result in
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
 **templateId** | **String** | The id of the template. | 
 **templateTabs** | [**TemplateTabs**](TemplateTabs.md) |  | [optional] 

### Return type

#### TabsPostTemplateDocumentTabs

```swift
public enum TabsPostTemplateDocumentTabs {
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

# **tabsPutTemplateDocumentTabs**
```swift
    open class func tabsPutTemplateDocumentTabs(accountId: String, documentId: String, templateId: String, templateTabs: TemplateTabs? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TabsPutTemplateDocumentTabs>
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
let templateId = "templateId_example" // String | The id of the template.
let templateTabs = templateTabs(approveTabs: [nil], checkboxTabs: [nil], commentThreadTabs: [nil], commissionCountyTabs: [nil], commissionExpirationTabs: [nil], commissionNumberTabs: [nil], commissionStateTabs: [nil], companyTabs: [nil], dateSignedTabs: [nil], dateTabs: [Date()], declineTabs: [nil], drawTabs: [nil], emailAddressTabs: [nil], emailTabs: [nil], envelopeIdTabs: [nil], firstNameTabs: [nil], formulaTabs: [nil], fullNameTabs: [nil], initialHereTabs: [nil], lastNameTabs: [nil], listTabs: [nil], notarizeTabs: [nil], notarySealTabs: [nil], noteTabs: [nil], numberTabs: [123], phoneNumberTabs: [nil], polyLineOverlayTabs: [nil], radioGroupTabs: [nil], signerAttachmentTabs: [nil], signHereTabs: [nil], smartSectionTabs: [nil], ssnTabs: [nil], tabGroups: [nil], textTabs: [nil], titleTabs: [nil], viewTabs: [nil], zipTabs: [nil]) // TemplateTabs |  (optional)

TemplateDocumentTabsAPI.tabsPutTemplateDocumentTabs(accountId: accountId, documentId: documentId, templateId: templateId, templateTabs: templateTabs).whenComplete { result in
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
 **templateId** | **String** | The id of the template. | 
 **templateTabs** | [**TemplateTabs**](TemplateTabs.md) |  | [optional] 

### Return type

#### TabsPutTemplateDocumentTabs

```swift
public enum TabsPutTemplateDocumentTabs {
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

