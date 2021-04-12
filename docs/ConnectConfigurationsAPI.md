# ConnectConfigurationsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**connectDeleteConnectConfig**](ConnectConfigurationsAPI.md#connectdeleteconnectconfig) | **DELETE** /v2.1/accounts/{accountId}/connect/{connectId} | Deletes the specified connect configuration.
[**connectGetConnectConfig**](ConnectConfigurationsAPI.md#connectgetconnectconfig) | **GET** /v2.1/accounts/{accountId}/connect/{connectId} | Gets the details about a Connect configuration.
[**connectGetConnectConfigs**](ConnectConfigurationsAPI.md#connectgetconnectconfigs) | **GET** /v2.1/accounts/{accountId}/connect | Get Connect Configuration Information
[**connectGetConnectUsers**](ConnectConfigurationsAPI.md#connectgetconnectusers) | **GET** /v2.1/accounts/{accountId}/connect/{connectId}/users | Returns users from the configured Connect service.
[**connectPostConnectConfiguration**](ConnectConfigurationsAPI.md#connectpostconnectconfiguration) | **POST** /v2.1/accounts/{accountId}/connect | Creates a connect configuration for the specified account.
[**connectPutConnectConfiguration**](ConnectConfigurationsAPI.md#connectputconnectconfiguration) | **PUT** /v2.1/accounts/{accountId}/connect | Updates a specified Connect configuration.


# **connectDeleteConnectConfig**
```swift
    open class func connectDeleteConnectConfig(accountId: String, connectId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ConnectDeleteConnectConfig>
```

Deletes the specified connect configuration.

Deletes the specified DocuSign Connect configuration.  **Note**: Connect must be enabled for your account to use this function.   

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let connectId = "connectId_example" // String | The ID of the custom Connect configuration being accessed.

// Deletes the specified connect configuration.
ConnectConfigurationsAPI.connectDeleteConnectConfig(accountId: accountId, connectId: connectId).whenComplete { result in
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
 **connectId** | **String** | The ID of the custom Connect configuration being accessed. | 

### Return type

#### ConnectDeleteConnectConfig

```swift
public enum ConnectDeleteConnectConfig {
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

# **connectGetConnectConfig**
```swift
    open class func connectGetConnectConfig(accountId: String, connectId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ConnectGetConnectConfig>
```

Gets the details about a Connect configuration.

Retrieves the information for the specified DocuSign Connect configuration.  **Note**: Connect must be enabled for your account to use this function. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let connectId = "connectId_example" // String | The ID of the custom Connect configuration being accessed.

// Gets the details about a Connect configuration.
ConnectConfigurationsAPI.connectGetConnectConfig(accountId: accountId, connectId: connectId).whenComplete { result in
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
 **connectId** | **String** | The ID of the custom Connect configuration being accessed. | 

### Return type

#### ConnectGetConnectConfig

```swift
public enum ConnectGetConnectConfig {
    case http200(value: ConnectConfigResults?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ConnectConfigResults?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **connectGetConnectConfigs**
```swift
    open class func connectGetConnectConfigs(accountId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ConnectGetConnectConfigs>
```

Get Connect Configuration Information

Retrieves all the DocuSign Custom Connect definitions for the specified account.  **Note**: Connect must be enabled for your account to use this function. This does not retrieve information for Connect configurations for Box, eOriginal, or Salesforce.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.

// Get Connect Configuration Information
ConnectConfigurationsAPI.connectGetConnectConfigs(accountId: accountId).whenComplete { result in
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

#### ConnectGetConnectConfigs

```swift
public enum ConnectGetConnectConfigs {
    case http200(value: ConnectConfigResults?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ConnectConfigResults?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **connectGetConnectUsers**
```swift
    open class func connectGetConnectUsers(accountId: String, connectId: String, count: String? = nil, emailSubstring: String? = nil, listIncludedUsers: String? = nil, startPosition: String? = nil, status: String? = nil, userNameSubstring: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ConnectGetConnectUsers>
```

Returns users from the configured Connect service.

Returns users from the configured Connect service.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let connectId = "connectId_example" // String | The ID of the custom Connect configuration being accessed.
let count = "count_example" // String | Optional. Number of items to return.  (optional)
let emailSubstring = "emailSubstring_example" // String | Filters returned user records by full email address or a substring of email address. (optional)
let listIncludedUsers = "listIncludedUsers_example" // String |  (optional)
let startPosition = "startPosition_example" // String | The position within the total result set from which to start returning values. The value **thumbnail** may be used to return the page image. (optional)
let status = "status_example" // String | Filters the results by user status. You can specify a comma-separated list of the following statuses:  * ActivationRequired  * ActivationSent  * Active * Closed  * Disabled  (optional)
let userNameSubstring = "userNameSubstring_example" // String | Filters results based on a full or partial user name.  **Note**: When you enter a partial user name, you do not use a wildcard character. (optional)

// Returns users from the configured Connect service.
ConnectConfigurationsAPI.connectGetConnectUsers(accountId: accountId, connectId: connectId, count: count, emailSubstring: emailSubstring, listIncludedUsers: listIncludedUsers, startPosition: startPosition, status: status, userNameSubstring: userNameSubstring).whenComplete { result in
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
 **connectId** | **String** | The ID of the custom Connect configuration being accessed. | 
 **count** | **String** | Optional. Number of items to return.  | [optional] 
 **emailSubstring** | **String** | Filters returned user records by full email address or a substring of email address. | [optional] 
 **listIncludedUsers** | **String** |  | [optional] 
 **startPosition** | **String** | The position within the total result set from which to start returning values. The value **thumbnail** may be used to return the page image. | [optional] 
 **status** | **String** | Filters the results by user status. You can specify a comma-separated list of the following statuses:  * ActivationRequired  * ActivationSent  * Active * Closed  * Disabled  | [optional] 
 **userNameSubstring** | **String** | Filters results based on a full or partial user name.  **Note**: When you enter a partial user name, you do not use a wildcard character. | [optional] 

### Return type

#### ConnectGetConnectUsers

```swift
public enum ConnectGetConnectUsers {
    case http200(value: IntegratedUserInfoList?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: IntegratedUserInfoList?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **connectPostConnectConfiguration**
```swift
    open class func connectPostConnectConfiguration(accountId: String, connectCustomConfiguration: ConnectCustomConfiguration? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ConnectPostConnectConfiguration>
```

Creates a connect configuration for the specified account.

Creates a DocuSign Custom Connect definition for your account. DocuSign Connect enables the sending of real-time data updates to external applications. These updates are generated by user transactions as the envelope progresses through actions to completion. The Connect Service provides updated information about the status of these transactions and returns updates that include the actual content of document form fields. Be aware that, these updates might or might not include the document itself. For more information about Connect, see the [DocuSign Connect](https://developers.docusign.com/esign-rest-api/guides/connect).  **Note**: Connect must be enabled for your account to use this function. This cannot be used to set up Connect configurations for Salesforce or eOriginal. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let connectCustomConfiguration = connectCustomConfiguration(allowEnvelopePublish: "allowEnvelopePublish_example", allowSalesforcePublish: "allowSalesforcePublish_example", allUsers: "allUsers_example", configurationType: "configurationType_example", connectId: "connectId_example", enableLog: "enableLog_example", envelopeEvents: ["envelopeEvents_example"], eventData: connectEventData(format: "format_example", includeData: ["includeData_example"], version: "version_example"), externalFolderId: "externalFolderId_example", externalFolderLabel: "externalFolderLabel_example", includeCertificateOfCompletion: "includeCertificateOfCompletion_example", includeCertSoapHeader: "includeCertSoapHeader_example", includeDocumentFields: "includeDocumentFields_example", includeDocuments: "includeDocuments_example", includeEnvelopeVoidReason: "includeEnvelopeVoidReason_example", includeHMAC: "includeHMAC_example", includeSenderAccountasCustomField: "includeSenderAccountasCustomField_example", includeTimeZoneInformation: "includeTimeZoneInformation_example", name: "name_example", password: "password_example", recipientEvents: ["recipientEvents_example"], requireMutualTls: "requireMutualTls_example", requiresAcknowledgement: "requiresAcknowledgement_example", salesforceApiVersion: "salesforceApiVersion_example", salesforceAuthcode: "salesforceAuthcode_example", salesforceCallBackUrl: "salesforceCallBackUrl_example", salesforceDocumentsAsContentFiles: "salesforceDocumentsAsContentFiles_example", senderOverride: "senderOverride_example", senderSelectableItems: ["senderSelectableItems_example"], sfObjects: [connectSalesforceObject(active: "active_example", description: "description_example", id: "id_example", insert: "insert_example", onCompleteOnly: "onCompleteOnly_example", selectFields: [connectSalesforceField(dsAttribute: "dsAttribute_example", dsLink: "dsLink_example", dsNode: "dsNode_example", id: "id_example", sfField: "sfField_example", sfFieldName: "sfFieldName_example", sfFolder: "sfFolder_example", sfLockedValue: "sfLockedValue_example")], sfObject: "sfObject_example", sfObjectName: "sfObjectName_example", updateFields: [nil])], signMessageWithX509Certificate: "signMessageWithX509Certificate_example", soapNamespace: "soapNamespace_example", urlToPublishTo: "urlToPublishTo_example", userIds: ["userIds_example"], userName: "userName_example", useSoapInterface: "useSoapInterface_example") // ConnectCustomConfiguration |  (optional)

// Creates a connect configuration for the specified account.
ConnectConfigurationsAPI.connectPostConnectConfiguration(accountId: accountId, connectCustomConfiguration: connectCustomConfiguration).whenComplete { result in
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
 **connectCustomConfiguration** | [**ConnectCustomConfiguration**](ConnectCustomConfiguration.md) |  | [optional] 

### Return type

#### ConnectPostConnectConfiguration

```swift
public enum ConnectPostConnectConfiguration {
    case http201(value: ConnectCustomConfiguration?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ConnectCustomConfiguration?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **connectPutConnectConfiguration**
```swift
    open class func connectPutConnectConfiguration(accountId: String, connectCustomConfiguration: ConnectCustomConfiguration? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ConnectPutConnectConfiguration>
```

Updates a specified Connect configuration.

Updates the specified DocuSign Connect configuration in your account.  **Note**: Connect must be enabled for your account to use this function. This cannot be used to update Connect configurations for Box, eOriginal, or Salesforce.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let connectCustomConfiguration = connectCustomConfiguration(allowEnvelopePublish: "allowEnvelopePublish_example", allowSalesforcePublish: "allowSalesforcePublish_example", allUsers: "allUsers_example", configurationType: "configurationType_example", connectId: "connectId_example", enableLog: "enableLog_example", envelopeEvents: ["envelopeEvents_example"], eventData: connectEventData(format: "format_example", includeData: ["includeData_example"], version: "version_example"), externalFolderId: "externalFolderId_example", externalFolderLabel: "externalFolderLabel_example", includeCertificateOfCompletion: "includeCertificateOfCompletion_example", includeCertSoapHeader: "includeCertSoapHeader_example", includeDocumentFields: "includeDocumentFields_example", includeDocuments: "includeDocuments_example", includeEnvelopeVoidReason: "includeEnvelopeVoidReason_example", includeHMAC: "includeHMAC_example", includeSenderAccountasCustomField: "includeSenderAccountasCustomField_example", includeTimeZoneInformation: "includeTimeZoneInformation_example", name: "name_example", password: "password_example", recipientEvents: ["recipientEvents_example"], requireMutualTls: "requireMutualTls_example", requiresAcknowledgement: "requiresAcknowledgement_example", salesforceApiVersion: "salesforceApiVersion_example", salesforceAuthcode: "salesforceAuthcode_example", salesforceCallBackUrl: "salesforceCallBackUrl_example", salesforceDocumentsAsContentFiles: "salesforceDocumentsAsContentFiles_example", senderOverride: "senderOverride_example", senderSelectableItems: ["senderSelectableItems_example"], sfObjects: [connectSalesforceObject(active: "active_example", description: "description_example", id: "id_example", insert: "insert_example", onCompleteOnly: "onCompleteOnly_example", selectFields: [connectSalesforceField(dsAttribute: "dsAttribute_example", dsLink: "dsLink_example", dsNode: "dsNode_example", id: "id_example", sfField: "sfField_example", sfFieldName: "sfFieldName_example", sfFolder: "sfFolder_example", sfLockedValue: "sfLockedValue_example")], sfObject: "sfObject_example", sfObjectName: "sfObjectName_example", updateFields: [nil])], signMessageWithX509Certificate: "signMessageWithX509Certificate_example", soapNamespace: "soapNamespace_example", urlToPublishTo: "urlToPublishTo_example", userIds: ["userIds_example"], userName: "userName_example", useSoapInterface: "useSoapInterface_example") // ConnectCustomConfiguration |  (optional)

// Updates a specified Connect configuration.
ConnectConfigurationsAPI.connectPutConnectConfiguration(accountId: accountId, connectCustomConfiguration: connectCustomConfiguration).whenComplete { result in
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
 **connectCustomConfiguration** | [**ConnectCustomConfiguration**](ConnectCustomConfiguration.md) |  | [optional] 

### Return type

#### ConnectPutConnectConfiguration

```swift
public enum ConnectPutConnectConfiguration {
    case http200(value: ConnectCustomConfiguration?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ConnectCustomConfiguration?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

