# CustomTabsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tabDeleteCustomTab**](CustomTabsAPI.md#tabdeletecustomtab) | **DELETE** /v2.1/accounts/{accountId}/tab_definitions/{customTabId} | Deletes custom tab information.
[**tabGetCustomTab**](CustomTabsAPI.md#tabgetcustomtab) | **GET** /v2.1/accounts/{accountId}/tab_definitions/{customTabId} | Gets custom tab information.
[**tabPutCustomTab**](CustomTabsAPI.md#tabputcustomtab) | **PUT** /v2.1/accounts/{accountId}/tab_definitions/{customTabId} | Updates custom tab information.  
[**tabsGetTabDefinitions**](CustomTabsAPI.md#tabsgettabdefinitions) | **GET** /v2.1/accounts/{accountId}/tab_definitions | Gets a list of all account tabs.
[**tabsPostTabDefinitions**](CustomTabsAPI.md#tabsposttabdefinitions) | **POST** /v2.1/accounts/{accountId}/tab_definitions | Creates a custom tab.


# **tabDeleteCustomTab**
```swift
    open class func tabDeleteCustomTab(accountId: String, customTabId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TabDeleteCustomTab>
```

Deletes custom tab information.

Deletes the custom from the specified account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let customTabId = "customTabId_example" // String | The DocuSign-generated custom tab id for the custom tab to be applied. This can only be used when adding new tabs for a recipient. When used, the new tab inherits all the custom tab properties.

// Deletes custom tab information.
CustomTabsAPI.tabDeleteCustomTab(accountId: accountId, customTabId: customTabId).whenComplete { result in
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
 **customTabId** | **String** | The DocuSign-generated custom tab id for the custom tab to be applied. This can only be used when adding new tabs for a recipient. When used, the new tab inherits all the custom tab properties. | 

### Return type

#### TabDeleteCustomTab

```swift
public enum TabDeleteCustomTab {
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

# **tabGetCustomTab**
```swift
    open class func tabGetCustomTab(accountId: String, customTabId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TabGetCustomTab>
```

Gets custom tab information.

Retrieves information about the requested custom tab on the specified account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let customTabId = "customTabId_example" // String | The DocuSign-generated custom tab id for the custom tab to be applied. This can only be used when adding new tabs for a recipient. When used, the new tab inherits all the custom tab properties.

// Gets custom tab information.
CustomTabsAPI.tabGetCustomTab(accountId: accountId, customTabId: customTabId).whenComplete { result in
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
 **customTabId** | **String** | The DocuSign-generated custom tab id for the custom tab to be applied. This can only be used when adding new tabs for a recipient. When used, the new tab inherits all the custom tab properties. | 

### Return type

#### TabGetCustomTab

```swift
public enum TabGetCustomTab {
    case http200(value: TabMetadata?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: TabMetadata?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tabPutCustomTab**
```swift
    open class func tabPutCustomTab(accountId: String, customTabId: String, tabMetadata: TabMetadata? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TabPutCustomTab>
```

Updates custom tab information.  

Updates the information in a custom tab for the specified account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let customTabId = "customTabId_example" // String | The DocuSign-generated custom tab id for the custom tab to be applied. This can only be used when adding new tabs for a recipient. When used, the new tab inherits all the custom tab properties.
let tabMetadata = tabMetadata(anchor: "anchor_example", anchorCaseSensitive: "anchorCaseSensitive_example", anchorHorizontalAlignment: "anchorHorizontalAlignment_example", anchorIgnoreIfNotPresent: "anchorIgnoreIfNotPresent_example", anchorMatchWholeWord: "anchorMatchWholeWord_example", anchorUnits: "anchorUnits_example", anchorXOffset: "anchorXOffset_example", anchorYOffset: "anchorYOffset_example", bold: "bold_example", collaborative: "collaborative_example", concealValueOnDocument: "concealValueOnDocument_example", createdByDisplayName: "createdByDisplayName_example", createdByUserId: "createdByUserId_example", customTabId: "customTabId_example", disableAutoSize: "disableAutoSize_example", editable: "editable_example", font: "font_example", fontColor: "fontColor_example", fontSize: "fontSize_example", height: "height_example", includedInEmail: "includedInEmail_example", initialValue: "initialValue_example", italic: "italic_example", items: ["items_example"], lastModified: "lastModified_example", lastModifiedByDisplayName: "lastModifiedByDisplayName_example", lastModifiedByUserId: "lastModifiedByUserId_example", locked: "locked_example", maximumLength: "maximumLength_example", mergeField: nil, name: "name_example", paymentItemCode: "paymentItemCode_example", paymentItemDescription: "paymentItemDescription_example", paymentItemName: "paymentItemName_example", requireAll: "requireAll_example", `required`: "`required`_example", requireInitialOnSharedChange: "requireInitialOnSharedChange_example", scaleValue: "scaleValue_example", selected: "selected_example", shared: "shared_example", stampType: "stampType_example", stampTypeMetadata: nil, tabLabel: "tabLabel_example", type: "type_example", underline: "underline_example", validationMessage: "validationMessage_example", validationPattern: "validationPattern_example", width: "width_example") // TabMetadata |  (optional)

// Updates custom tab information.  
CustomTabsAPI.tabPutCustomTab(accountId: accountId, customTabId: customTabId, tabMetadata: tabMetadata).whenComplete { result in
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
 **customTabId** | **String** | The DocuSign-generated custom tab id for the custom tab to be applied. This can only be used when adding new tabs for a recipient. When used, the new tab inherits all the custom tab properties. | 
 **tabMetadata** | [**TabMetadata**](TabMetadata.md) |  | [optional] 

### Return type

#### TabPutCustomTab

```swift
public enum TabPutCustomTab {
    case http200(value: TabMetadata?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: TabMetadata?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tabsGetTabDefinitions**
```swift
    open class func tabsGetTabDefinitions(accountId: String, customTabOnly: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TabsGetTabDefinitions>
```

Gets a list of all account tabs.

Retrieves a list of all tabs associated with the account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let customTabOnly = "customTabOnly_example" // String | When set to **true**, only custom tabs are returned in the response.  (optional)

// Gets a list of all account tabs.
CustomTabsAPI.tabsGetTabDefinitions(accountId: accountId, customTabOnly: customTabOnly).whenComplete { result in
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
 **customTabOnly** | **String** | When set to **true**, only custom tabs are returned in the response.  | [optional] 

### Return type

#### TabsGetTabDefinitions

```swift
public enum TabsGetTabDefinitions {
    case http200(value: TabMetadataList?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: TabMetadataList?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tabsPostTabDefinitions**
```swift
    open class func tabsPostTabDefinitions(accountId: String, tabMetadata: TabMetadata? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TabsPostTabDefinitions>
```

Creates a custom tab.

Creates a tab with pre-defined properties, such as a text tab with a certain font type and validation pattern. Users can access the custom tabs when sending documents through the DocuSign web application.  Custom tabs can be created for approve, checkbox, company, date, date signed, decline, email, email address, envelope ID, first name, formula, full name, initial here, last name, list, note, number, radio, sign here, signer attachment, SSN, text, title, and zip tabs.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let tabMetadata = tabMetadata(anchor: "anchor_example", anchorCaseSensitive: "anchorCaseSensitive_example", anchorHorizontalAlignment: "anchorHorizontalAlignment_example", anchorIgnoreIfNotPresent: "anchorIgnoreIfNotPresent_example", anchorMatchWholeWord: "anchorMatchWholeWord_example", anchorUnits: "anchorUnits_example", anchorXOffset: "anchorXOffset_example", anchorYOffset: "anchorYOffset_example", bold: "bold_example", collaborative: "collaborative_example", concealValueOnDocument: "concealValueOnDocument_example", createdByDisplayName: "createdByDisplayName_example", createdByUserId: "createdByUserId_example", customTabId: "customTabId_example", disableAutoSize: "disableAutoSize_example", editable: "editable_example", font: "font_example", fontColor: "fontColor_example", fontSize: "fontSize_example", height: "height_example", includedInEmail: "includedInEmail_example", initialValue: "initialValue_example", italic: "italic_example", items: ["items_example"], lastModified: "lastModified_example", lastModifiedByDisplayName: "lastModifiedByDisplayName_example", lastModifiedByUserId: "lastModifiedByUserId_example", locked: "locked_example", maximumLength: "maximumLength_example", mergeField: nil, name: "name_example", paymentItemCode: "paymentItemCode_example", paymentItemDescription: "paymentItemDescription_example", paymentItemName: "paymentItemName_example", requireAll: "requireAll_example", `required`: "`required`_example", requireInitialOnSharedChange: "requireInitialOnSharedChange_example", scaleValue: "scaleValue_example", selected: "selected_example", shared: "shared_example", stampType: "stampType_example", stampTypeMetadata: nil, tabLabel: "tabLabel_example", type: "type_example", underline: "underline_example", validationMessage: "validationMessage_example", validationPattern: "validationPattern_example", width: "width_example") // TabMetadata |  (optional)

// Creates a custom tab.
CustomTabsAPI.tabsPostTabDefinitions(accountId: accountId, tabMetadata: tabMetadata).whenComplete { result in
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
 **tabMetadata** | [**TabMetadata**](TabMetadata.md) |  | [optional] 

### Return type

#### TabsPostTabDefinitions

```swift
public enum TabsPostTabDefinitions {
    case http201(value: TabMetadata?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: TabMetadata?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

