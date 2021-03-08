# AccountTabSettingsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tabSettingsGetTabSettings**](AccountTabSettingsAPI.md#tabsettingsgettabsettings) | **GET** /v2.1/accounts/{accountId}/settings/tabs | Returns tab settings list for specified account
[**tabSettingsPutSettings**](AccountTabSettingsAPI.md#tabsettingsputsettings) | **PUT** /v2.1/accounts/{accountId}/settings/tabs | Modifies tab settings for specified account


# **tabSettingsGetTabSettings**
```swift
    open class func tabSettingsGetTabSettings(accountId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TabSettingsGetTabSettings>
```

Returns tab settings list for specified account

This method returns information about the tab types and tab functionality that is currently enabled for an account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.

// Returns tab settings list for specified account
AccountTabSettingsAPI.tabSettingsGetTabSettings(accountId: accountId).whenComplete { result in
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

#### TabSettingsGetTabSettings

```swift
public enum TabSettingsGetTabSettings {
    case http200(value: TabAccountSettings?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: TabAccountSettings?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tabSettingsPutSettings**
```swift
    open class func tabSettingsPutSettings(accountId: String, tabAccountSettings: TabAccountSettings? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TabSettingsPutSettings>
```

Modifies tab settings for specified account

This method modifies the tab types and tab functionality that is enabled for an account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let tabAccountSettings = tabAccountSettings(allowTabOrder: "allowTabOrder_example", allowTabOrderMetadata: nil, approveDeclineTabsEnabled: "approveDeclineTabsEnabled_example", approveDeclineTabsMetadata: nil, calculatedFieldsEnabled: "calculatedFieldsEnabled_example", calculatedFieldsMetadata: nil, checkboxTabsEnabled: "checkboxTabsEnabled_example", checkBoxTabsMetadata: nil, dataFieldRegexEnabled: "dataFieldRegexEnabled_example", dataFieldRegexMetadata: nil, dataFieldSizeEnabled: "dataFieldSizeEnabled_example", dataFieldSizeMetadata: nil, drawTabsEnabled: "drawTabsEnabled_example", drawTabsMetadata: nil, firstLastEmailTabsEnabled: "firstLastEmailTabsEnabled_example", firstLastEmailTabsMetadata: nil, listTabsEnabled: "listTabsEnabled_example", listTabsMetadata: nil, noteTabsEnabled: "noteTabsEnabled_example", noteTabsMetadata: nil, radioTabsEnabled: "radioTabsEnabled_example", radioTabsMetadata: nil, savingCustomTabsEnabled: "savingCustomTabsEnabled_example", savingCustomTabsMetadata: nil, senderToChangeTabAssignmentsEnabled: "senderToChangeTabAssignmentsEnabled_example", senderToChangeTabAssignmentsMetadata: nil, sharedCustomTabsEnabled: "sharedCustomTabsEnabled_example", sharedCustomTabsMetadata: nil, tabDataLabelEnabled: "tabDataLabelEnabled_example", tabDataLabelMetadata: nil, tabLocationEnabled: "tabLocationEnabled_example", tabLocationMetadata: nil, tabLockingEnabled: "tabLockingEnabled_example", tabLockingMetadata: nil, tabScaleEnabled: "tabScaleEnabled_example", tabScaleMetadata: nil, tabTextFormattingEnabled: "tabTextFormattingEnabled_example", tabTextFormattingMetadata: nil, textTabsEnabled: "textTabsEnabled_example", textTabsMetadata: nil) // TabAccountSettings | Account-wide tab settings. (optional)

// Modifies tab settings for specified account
AccountTabSettingsAPI.tabSettingsPutSettings(accountId: accountId, tabAccountSettings: tabAccountSettings).whenComplete { result in
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
 **tabAccountSettings** | [**TabAccountSettings**](TabAccountSettings.md) | Account-wide tab settings. | [optional] 

### Return type

#### TabSettingsPutSettings

```swift
public enum TabSettingsPutSettings {
    case http200(value: TabAccountSettings?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: TabAccountSettings?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

