# AccountsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accountsDeleteAccount**](AccountsAPI.md#accountsdeleteaccount) | **DELETE** /v2.1/accounts/{accountId} | Deletes the specified account.
[**accountsGetAccount**](AccountsAPI.md#accountsgetaccount) | **GET** /v2.1/accounts/{accountId} | Retrieves the account information for the specified account.
[**accountsGetProvisioning**](AccountsAPI.md#accountsgetprovisioning) | **GET** /v2.1/accounts/provisioning | Retrieves the account provisioning information for the account.
[**accountsPostAccounts**](AccountsAPI.md#accountspostaccounts) | **POST** /v2.1/accounts | Creates new accounts.
[**billingChargesGetAccountBillingCharges**](AccountsAPI.md#billingchargesgetaccountbillingcharges) | **GET** /v2.1/accounts/{accountId}/billing_charges | Gets list of recurring and usage charges for the account.
[**captiveRecipientsDeleteCaptiveRecipientsPart**](AccountsAPI.md#captiverecipientsdeletecaptiverecipientspart) | **DELETE** /v2.1/accounts/{accountId}/captive_recipients/{recipientPart} | Deletes the signature for one or more captive recipient records.
[**envelopePurgeConfigurationGetEnvelopePurgeConfiguration**](AccountsAPI.md#envelopepurgeconfigurationgetenvelopepurgeconfiguration) | **GET** /v2.1/accounts/{accountId}/settings/envelope_purge_configuration | Gets the envelope purge configuration for an account.
[**envelopePurgeConfigurationPutEnvelopePurgeConfiguration**](AccountsAPI.md#envelopepurgeconfigurationputenvelopepurgeconfiguration) | **PUT** /v2.1/accounts/{accountId}/settings/envelope_purge_configuration | Sets the envelope purge configuration for an account.
[**notificationDefaultsGetNotificationDefaults**](AccountsAPI.md#notificationdefaultsgetnotificationdefaults) | **GET** /v2.1/accounts/{accountId}/settings/notification_defaults | Gets envelope notification defaults.
[**notificationDefaultsPutNotificationDefaults**](AccountsAPI.md#notificationdefaultsputnotificationdefaults) | **PUT** /v2.1/accounts/{accountId}/settings/notification_defaults | Updates envelope notification default settings.
[**recipientNamesGetRecipientNames**](AccountsAPI.md#recipientnamesgetrecipientnames) | **GET** /v2.1/accounts/{accountId}/recipient_names | Gets the recipient names associated with an email address.
[**settingsGetSettings**](AccountsAPI.md#settingsgetsettings) | **GET** /v2.1/accounts/{accountId}/settings | Gets account settings information.
[**settingsPutSettings**](AccountsAPI.md#settingsputsettings) | **PUT** /v2.1/accounts/{accountId}/settings | Updates the account settings for an account.
[**sharedAccessGetSharedAccess**](AccountsAPI.md#sharedaccessgetsharedaccess) | **GET** /v2.1/accounts/{accountId}/shared_access | Reserved: Gets the shared item status for one or more users.
[**sharedAccessPutSharedAccess**](AccountsAPI.md#sharedaccessputsharedaccess) | **PUT** /v2.1/accounts/{accountId}/shared_access | Reserved: Sets the shared access information for users.
[**supportedLanguagesGetSupportedLanguages**](AccountsAPI.md#supportedlanguagesgetsupportedlanguages) | **GET** /v2.1/accounts/{accountId}/supported_languages | Gets the supported languages for envelope recipients.
[**unsupportedFileTypesGetUnsupportedFileTypes**](AccountsAPI.md#unsupportedfiletypesgetunsupportedfiletypes) | **GET** /v2.1/accounts/{accountId}/unsupported_file_types | Gets a list of unsupported file types.


# **accountsDeleteAccount**
```swift
    open class func accountsDeleteAccount(accountId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<AccountsDeleteAccount>
```

Deletes the specified account.

This closes the specified account. You must be an account admin to close your account. Once closed, an account must be reopened by DocuSign.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.

// Deletes the specified account.
AccountsAPI.accountsDeleteAccount(accountId: accountId).whenComplete { result in
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

#### AccountsDeleteAccount

```swift
public enum AccountsDeleteAccount {
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

# **accountsGetAccount**
```swift
    open class func accountsGetAccount(accountId: String, includeAccountSettings: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<AccountsGetAccount>
```

Retrieves the account information for the specified account.

Retrieves the account information for the specified account.  **Response** The `canUpgrade` property contains is a Boolean that indicates whether the account can be upgraded through the API. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let includeAccountSettings = "includeAccountSettings_example" // String | When set to **true**, includes account settings (defined by the [`accountSettings`](https://developers.docusign.com/esign-rest-api/reference/Accounts/Accounts/create/#account-settings) property) in the response. If you omit this parameter, the default behavior is **false**. (optional)

// Retrieves the account information for the specified account.
AccountsAPI.accountsGetAccount(accountId: accountId, includeAccountSettings: includeAccountSettings).whenComplete { result in
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
 **includeAccountSettings** | **String** | When set to **true**, includes account settings (defined by the [&#x60;accountSettings&#x60;](https://developers.docusign.com/esign-rest-api/reference/Accounts/Accounts/create/#account-settings) property) in the response. If you omit this parameter, the default behavior is **false**. | [optional] 

### Return type

#### AccountsGetAccount

```swift
public enum AccountsGetAccount {
    case http200(value: AccountInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: AccountInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountsGetProvisioning**
```swift
    open class func accountsGetProvisioning(headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<AccountsGetProvisioning>
```

Retrieves the account provisioning information for the account.

Retrieves the account provisioning information for the account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI


// Retrieves the account provisioning information for the account.
AccountsAPI.accountsGetProvisioning().whenComplete { result in
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

#### AccountsGetProvisioning

```swift
public enum AccountsGetProvisioning {
    case http200(value: ProvisioningInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ProvisioningInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountsPostAccounts**
```swift
    open class func accountsPostAccounts(newAccountDefinition: NewAccountDefinition? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<AccountsPostAccounts>
```

Creates new accounts.

Creates new DocuSign accounts. You can use this method to create a single account or up to 100 accounts at a time.  **Note**:  This method is restricted to partner integrations. You must work with DocuSign Professional Services or DocuSign Business Development, who will provide you with the Distributor Code and Distributor Password that you need to include in the request body.  You must include the `X-DocuSign-Authentication`  header.  Example:  `<DocuSignCredentials><IntegratorKey>{{integratorKey}}</IntegratorKey></DocuSignCredentials>`  When creating a single account, the body of the request is a [`newAccountRequest`][newAccountRequest] object.  Example:  ``` {  \"newAccountRequest\": [   {    \"accountName\":\"Test Account\",    \"distributorCode\":\"MY_DIST_CODE\",    \"distributorPassword\":\"MY_DIST_PWD\",    \"initialUser\":{     \"email\":\"user@emaildomain.com\",     \"firstName\":\"John\",     \"middleName\": \"Harry\",     \"lastName\":\"Doe\",     \"suffixName\": \"\",     \"userName\": \"John Doe\",     \"jobTitle\": \"Engineer\",     \"company\": \"Test Company\"    },    \"addressInformation\":{     \"address1\": \"1234 Main Street\",     \"address2\": \"Suite 100\",     \"city\": \"Seattle\",     \"state\": \"WA\",     \"postalCode\": \"98101\",     \"country\": \"US\",     \"phone\": \"1234567890\",     \"fax\": \"1234567891\"    },    \"planInformation\":{     \"planId\":\"37085696-xxxx-xxxx-xxxx-7ea067752959\"    },    \"referralInformation\":{     \"includedSeats\": \"1\",     \"referralCode\": \"code\",     \"referrerName\": \"name\"    }   }  ] }  ``` If the request succeeds, it returns a 201 (Created) HTTP response code. The response returns the new account ID, password, and the default user information for each newly created account.   When creating multiple accounts, the body of the request is a `newAccountRequests` object, which contains one or more  [`newAccountDefinition`][newAccountDefinition] objects. You can create up to 100 new accounts at a time this way.  The body for a multi-account creation request looks like this in JSON:  ``` {   \"newAccountRequests\": [     {       \"accountName\": \"accountone\",       . . .     },     {       \"accountName\": \"accounttwo\",       . . .     }   ] } ```  A multi-account request looks like this in XML:  ``` <newAccountsDefinition xmlns:i=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns=\"http://www.docusign.com/restapi\">   <newAccountRequests>     <newAccountDefinition>       . . .     </newAccountDefinition>     <newAccountDefinition>       . . .     </newAccountDefinition>   </newAccountRequests> </newAccountsDefinition> ```  A multi-account creation request may succeed (report a 201 code) even if some accounts could not be created. In this case, the `errorDetails` property in the response contains specific information about the failure.    [newAccountDefinition]: #/definitions/newAccountDefinition [nameValue]: #/definitions/nameValue [newAccountRequest]: #/definitions/newAccountRequest 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let newAccountDefinition = newAccountDefinition(accountName: "accountName_example", accountSettings: nil, addressInformation: nil, creditCardInformation: nil, directDebitProcessorInformation: nil, distributorCode: "distributorCode_example", distributorPassword: "distributorPassword_example", envelopePartitionId: "envelopePartitionId_example", initialUser: nil, paymentMethod: "paymentMethod_example", paymentProcessorInformation: nil, planInformation: nil, referralInformation: nil, socialAccountInformation: nil) // NewAccountDefinition |  (optional)

// Creates new accounts.
AccountsAPI.accountsPostAccounts(newAccountDefinition: newAccountDefinition).whenComplete { result in
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
 **newAccountDefinition** | [**NewAccountDefinition**](NewAccountDefinition.md) |  | [optional] 

### Return type

#### AccountsPostAccounts

```swift
public enum AccountsPostAccounts {
    case http201(value: NewAccountSummary?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: NewAccountSummary?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingChargesGetAccountBillingCharges**
```swift
    open class func billingChargesGetAccountBillingCharges(accountId: String, includeCharges: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BillingChargesGetAccountBillingCharges>
```

Gets list of recurring and usage charges for the account.

Retrieves the list of recurring and usage charges for the account. This can be used to determine the charge structure and usage of charge plan items.   Privileges required: account administrator 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let includeCharges = "includeCharges_example" // String | Specifies which billing charges to return. Valid values are:  * envelopes * seats  (optional)

// Gets list of recurring and usage charges for the account.
AccountsAPI.billingChargesGetAccountBillingCharges(accountId: accountId, includeCharges: includeCharges).whenComplete { result in
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
 **includeCharges** | **String** | Specifies which billing charges to return. Valid values are:  * envelopes * seats  | [optional] 

### Return type

#### BillingChargesGetAccountBillingCharges

```swift
public enum BillingChargesGetAccountBillingCharges {
    case http200(value: BillingChargeResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: BillingChargeResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **captiveRecipientsDeleteCaptiveRecipientsPart**
```swift
    open class func captiveRecipientsDeleteCaptiveRecipientsPart(accountId: String, recipientPart: String, captiveRecipientInformation: CaptiveRecipientInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<CaptiveRecipientsDeleteCaptiveRecipientsPart>
```

Deletes the signature for one or more captive recipient records.

This method deletes the signature for one or more captive recipient records. It is primarily used for testing. This functionality provides a way to reset the signature associated with a client user ID so that a new signature can be created the next time the client user ID is used.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let recipientPart = "recipientPart_example" // String | Signature is the only supported value. 
let captiveRecipientInformation = captiveRecipientInformation(captiveRecipients: [nil]) // CaptiveRecipientInformation |  (optional)

// Deletes the signature for one or more captive recipient records.
AccountsAPI.captiveRecipientsDeleteCaptiveRecipientsPart(accountId: accountId, recipientPart: recipientPart, captiveRecipientInformation: captiveRecipientInformation).whenComplete { result in
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
 **recipientPart** | **String** | Signature is the only supported value.  | 
 **captiveRecipientInformation** | [**CaptiveRecipientInformation**](CaptiveRecipientInformation.md) |  | [optional] 

### Return type

#### CaptiveRecipientsDeleteCaptiveRecipientsPart

```swift
public enum CaptiveRecipientsDeleteCaptiveRecipientsPart {
    case http200(value: CaptiveRecipientInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: CaptiveRecipientInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **envelopePurgeConfigurationGetEnvelopePurgeConfiguration**
```swift
    open class func envelopePurgeConfigurationGetEnvelopePurgeConfiguration(accountId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<EnvelopePurgeConfigurationGetEnvelopePurgeConfiguration>
```

Gets the envelope purge configuration for an account.

An envelope purge configuration enables account administrators to permanently remove documents and their field data from completed and voided envelopes after a specified retention period (`retentionDays`). This method retrieves the current envelope purge configuration for your account.  **Note**: To use this method, you must be an account administrator.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.

// Gets the envelope purge configuration for an account.
AccountsAPI.envelopePurgeConfigurationGetEnvelopePurgeConfiguration(accountId: accountId).whenComplete { result in
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

#### EnvelopePurgeConfigurationGetEnvelopePurgeConfiguration

```swift
public enum EnvelopePurgeConfigurationGetEnvelopePurgeConfiguration {
    case http200(value: EnvelopePurgeConfiguration?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopePurgeConfiguration?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **envelopePurgeConfigurationPutEnvelopePurgeConfiguration**
```swift
    open class func envelopePurgeConfigurationPutEnvelopePurgeConfiguration(accountId: String, envelopePurgeConfiguration: EnvelopePurgeConfiguration? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<EnvelopePurgeConfigurationPutEnvelopePurgeConfiguration>
```

Sets the envelope purge configuration for an account.

An envelope purge configuration enables account administrators to permanently remove documents and their field data from completed and voided envelopes after a specified retention period (`retentionDays`). This method sets the envelope purge configuration for your account.  **Note**: To use this method, you must be an account administrator.  For more information, see [Purge Envelopes](https://support.docusign.com/en/guides/ndse-user-guide-purge-envelopes).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopePurgeConfiguration = envelopePurgeConfiguration(purgeEnvelopes: "purgeEnvelopes_example", redactPII: "redactPII_example", removeTabsAndEnvelopeAttachments: "removeTabsAndEnvelopeAttachments_example", retentionDays: "retentionDays_example") // EnvelopePurgeConfiguration |  (optional)

// Sets the envelope purge configuration for an account.
AccountsAPI.envelopePurgeConfigurationPutEnvelopePurgeConfiguration(accountId: accountId, envelopePurgeConfiguration: envelopePurgeConfiguration).whenComplete { result in
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
 **envelopePurgeConfiguration** | [**EnvelopePurgeConfiguration**](EnvelopePurgeConfiguration.md) |  | [optional] 

### Return type

#### EnvelopePurgeConfigurationPutEnvelopePurgeConfiguration

```swift
public enum EnvelopePurgeConfigurationPutEnvelopePurgeConfiguration {
    case http200(value: EnvelopePurgeConfiguration?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopePurgeConfiguration?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notificationDefaultsGetNotificationDefaults**
```swift
    open class func notificationDefaultsGetNotificationDefaults(accountId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<NotificationDefaultsGetNotificationDefaults>
```

Gets envelope notification defaults.

This method returns the default settings for the email notifications that signers and senders receive about envelopes.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.

// Gets envelope notification defaults.
AccountsAPI.notificationDefaultsGetNotificationDefaults(accountId: accountId).whenComplete { result in
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

#### NotificationDefaultsGetNotificationDefaults

```swift
public enum NotificationDefaultsGetNotificationDefaults {
    case http200(value: NotificationDefaults?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: NotificationDefaults?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notificationDefaultsPutNotificationDefaults**
```swift
    open class func notificationDefaultsPutNotificationDefaults(accountId: String, notificationDefaults: NotificationDefaults? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<NotificationDefaultsPutNotificationDefaults>
```

Updates envelope notification default settings.

This method changes the default settings for the email notifications that signers and senders receive about envelopes.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let notificationDefaults = NotificationDefaults(apiEmailNotifications: nil, emailNotifications: nil) // NotificationDefaults |  (optional)

// Updates envelope notification default settings.
AccountsAPI.notificationDefaultsPutNotificationDefaults(accountId: accountId, notificationDefaults: notificationDefaults).whenComplete { result in
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
 **notificationDefaults** | [**NotificationDefaults**](NotificationDefaults.md) |  | [optional] 

### Return type

#### NotificationDefaultsPutNotificationDefaults

```swift
public enum NotificationDefaultsPutNotificationDefaults {
    case http200(value: NotificationDefaults?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: NotificationDefaults?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recipientNamesGetRecipientNames**
```swift
    open class func recipientNamesGetRecipientNames(accountId: String, email: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientNamesGetRecipientNames>
```

Gets the recipient names associated with an email address.

Retrieves a list of all of the names associated with the email address that you pass in. This list can include variants of a single recipient's name that are used for signing, as well as the names of multiple different recipients.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | (Required) The external account number (int) or account ID GUID.
let email = "email_example" // String | The email address for which you want to retrieve recipient names. (optional)

// Gets the recipient names associated with an email address.
AccountsAPI.recipientNamesGetRecipientNames(accountId: accountId, email: email).whenComplete { result in
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
 **accountId** | **String** | (Required) The external account number (int) or account ID GUID. | 
 **email** | **String** | The email address for which you want to retrieve recipient names. | [optional] 

### Return type

#### RecipientNamesGetRecipientNames

```swift
public enum RecipientNamesGetRecipientNames {
    case http200(value: RecipientNamesResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: RecipientNamesResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **settingsGetSettings**
```swift
    open class func settingsGetSettings(accountId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<SettingsGetSettings>
```

Gets account settings information.

Retrieves the account settings information for the specified account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.

// Gets account settings information.
AccountsAPI.settingsGetSettings(accountId: accountId).whenComplete { result in
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

#### SettingsGetSettings

```swift
public enum SettingsGetSettings {
    case http200(value: AccountSettingsInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: AccountSettingsInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **settingsPutSettings**
```swift
    open class func settingsPutSettings(accountId: String, accountSettingsInformation: AccountSettingsInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<SettingsPutSettings>
```

Updates the account settings for an account.

Updates the account settings for the specified account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let accountSettingsInformation = accountSettingsInformation(accessCodeFormat: nil, accountDateTimeFormat: "accountDateTimeFormat_example", accountDateTimeFormatMetadata: nil, accountDefaultLanguage: "accountDefaultLanguage_example", accountDefaultLanguageMetadata: nil, accountName: "accountName_example", accountNameMetadata: nil, accountNotification: nil, accountUISettings: nil, adoptSigConfig: "adoptSigConfig_example", adoptSigConfigMetadata: nil, advancedCorrect: "advancedCorrect_example", advancedCorrectMetadata: nil, allowAccessCodeFormat: "allowAccessCodeFormat_example", allowAccessCodeFormatMetadata: nil, allowAccountManagementGranular: "allowAccountManagementGranular_example", allowAccountManagementGranularMetadata: nil, allowAccountMemberNameChange: "allowAccountMemberNameChange_example", allowAccountMemberNameChangeMetadata: nil, allowAdvancedRecipientRoutingConditional: "allowAdvancedRecipientRoutingConditional_example", allowAdvancedRecipientRoutingConditionalMetadata: nil, allowAgentNameEmailEdit: "allowAgentNameEmailEdit_example", allowAgentNameEmailEditMetadata: nil, allowAgreementActions: "allowAgreementActions_example", allowAgreementActionsMetadata: nil, allowAutoNavSettings: "allowAutoNavSettings_example", allowAutoNavSettingsMetadata: nil, allowAutoTagging: "allowAutoTagging_example", allowAutoTaggingMetadata: nil, allowBulkSend: "allowBulkSend_example", allowBulkSendMetadata: nil, allowCDWithdraw: "allowCDWithdraw_example", allowCDWithdrawMetadata: nil, allowConnectHttpListenerConfigs: "allowConnectHttpListenerConfigs_example", allowConnectSendFinishLater: "allowConnectSendFinishLater_example", allowConnectSendFinishLaterMetadata: nil, allowConnectUnifiedPayloadUI: "allowConnectUnifiedPayloadUI_example", allowConsumerDisclosureOverride: "allowConsumerDisclosureOverride_example", allowConsumerDisclosureOverrideMetadata: nil, allowDataDownload: "allowDataDownload_example", allowDataDownloadMetadata: nil, allowDocumentDisclosures: "allowDocumentDisclosures_example", allowDocumentDisclosuresMetadata: nil, allowDocumentsOnSignedEnvelopes: "allowDocumentsOnSignedEnvelopes_example", allowDocumentsOnSignedEnvelopesMetadata: nil, allowDocumentVisibility: "allowDocumentVisibility_example", allowDocumentVisibilityMetadata: nil, allowEHankoStamps: "allowEHankoStamps_example", allowEHankoStampsMetadata: nil, allowENoteEOriginal: "allowENoteEOriginal_example", allowENoteEOriginalMetadata: nil, allowEnvelopeCorrect: "allowEnvelopeCorrect_example", allowEnvelopeCorrectMetadata: nil, allowEnvelopeCustodyTransfer: "allowEnvelopeCustodyTransfer_example", allowEnvelopeCustodyTransferMetadata: nil, allowEnvelopeCustomFields: "allowEnvelopeCustomFields_example", allowEnvelopeCustomFieldsMetadata: nil, allowEnvelopePublishReporting: "allowEnvelopePublishReporting_example", allowEnvelopePublishReportingMetadata: nil, allowEnvelopeReporting: "allowEnvelopeReporting_example", allowEnvelopeReportingMetadata: nil, allowExpression: "allowExpression_example", allowExpressionMetadata: nil, allowExpressSignerCertificate: "allowExpressSignerCertificate_example", allowExpressSignerCertificateMetadata: nil, allowExtendedSendingResourceFile: "allowExtendedSendingResourceFile_example", allowExtendedSendingResourceFileMetadata: nil, allowExternalSignaturePad: "allowExternalSignaturePad_example", allowExternalSignaturePadMetadata: nil, allowIDVLevel1: "allowIDVLevel1_example", allowIDVLevel1Metadata: nil, allowIDVPlatform: "allowIDVPlatform_example", allowIDVPlatformMetadata: nil, allowInPerson: "allowInPerson_example", allowInPersonMetadata: nil, allowManagedStamps: "allowManagedStamps_example", allowManagedStampsMetadata: nil, allowMarkup: "allowMarkup_example", allowMarkupMetadata: nil, allowMemberTimeZone: "allowMemberTimeZone_example", allowMemberTimeZoneMetadata: nil, allowMergeFields: "allowMergeFields_example", allowMergeFieldsMetadata: nil, allowMultipleBrandProfiles: "allowMultipleBrandProfiles_example", allowMultipleBrandProfilesMetadata: nil, allowMultipleSignerAttachments: "allowMultipleSignerAttachments_example", allowMultipleSignerAttachmentsMetadata: nil, allowNonUSPhoneAuth: "allowNonUSPhoneAuth_example", allowNonUSPhoneAuthMetadata: nil, allowOcrOfEnvelopeDocuments: "allowOcrOfEnvelopeDocuments_example", allowOcrOfEnvelopeDocumentsMetadata: nil, allowOfflineSigning: "allowOfflineSigning_example", allowOfflineSigningMetadata: nil, allowOpenTrustSignerCertificate: "allowOpenTrustSignerCertificate_example", allowOpenTrustSignerCertificateMetadata: nil, allowOrganizations: "allowOrganizations_example", allowOrganizationsMetadata: nil, allowPaymentProcessing: "allowPaymentProcessing_example", allowPaymentProcessingMetadata: nil, allowPersonalSignerCertificate: "allowPersonalSignerCertificate_example", allowPersonalSignerCertificateMetadata: nil, allowPhoneAuthentication: "allowPhoneAuthentication_example", allowPhoneAuthenticationMetadata: nil, allowPhoneAuthOverride: "allowPhoneAuthOverride_example", allowPhoneAuthOverrideMetadata: nil, allowPrivateSigningGroups: "allowPrivateSigningGroups_example", allowPrivateSigningGroupsMetadata: nil, allowReminders: "allowReminders_example", allowRemindersMetadata: nil, allowRemoteNotary: "allowRemoteNotary_example", allowRemoteNotaryMetadata: nil, allowResourceFileBranding: "allowResourceFileBranding_example", allowResourceFileBrandingMetadata: nil, allowSafeBioPharmaSignerCertificate: "allowSafeBioPharmaSignerCertificate_example", allowSafeBioPharmaSignerCertificateMetadata: nil, allowSecurityAppliance: "allowSecurityAppliance_example", allowSecurityApplianceMetadata: nil, allowSendToCertifiedDelivery: "allowSendToCertifiedDelivery_example", allowSendToCertifiedDeliveryMetadata: nil, allowSendToIntermediary: "allowSendToIntermediary_example", allowSendToIntermediaryMetadata: nil, allowServerTemplates: "allowServerTemplates_example", allowServerTemplatesMetadata: nil, allowSetEmbeddedRecipientStartURL: "allowSetEmbeddedRecipientStartURL_example", allowSetEmbeddedRecipientStartURLMetadata: nil, allowSharedTabs: "allowSharedTabs_example", allowSharedTabsMetadata: nil, allowSignatureStamps: "allowSignatureStamps_example", allowSignatureStampsMetadata: nil, allowSignDocumentFromHomePage: "allowSignDocumentFromHomePage_example", allowSignDocumentFromHomePageMetadata: nil, allowSignerReassign: "allowSignerReassign_example", allowSignerReassignMetadata: nil, allowSignerReassignOverride: "allowSignerReassignOverride_example", allowSignerReassignOverrideMetadata: nil, allowSigningExtensions: "allowSigningExtensions_example", allowSigningExtensionsMetadata: nil, allowSigningGroups: "allowSigningGroups_example", allowSigningGroupsMetadata: nil, allowSigningRadioDeselect: "allowSigningRadioDeselect_example", allowSigningRadioDeselectMetadata: nil, allowSignNow: "allowSignNow_example", allowSignNowMetadata: "allowSignNowMetadata_example", allowSMSDelivery: "allowSMSDelivery_example", allowSMSDeliveryMetadata: nil, allowSocialIdLogin: "allowSocialIdLogin_example", allowSocialIdLoginMetadata: nil, allowSupplementalDocuments: "allowSupplementalDocuments_example", allowSupplementalDocumentsMetadata: nil, allowUsersToAccessDirectory: "allowUsersToAccessDirectory_example", allowUsersToAccessDirectoryMetadata: nil, allowValueInsights: "allowValueInsights_example", allowValueInsightsMetadata: nil, anchorPopulationScope: "anchorPopulationScope_example", anchorPopulationScopeMetadata: nil, anchorTagVersionedPlacementEnabled: "anchorTagVersionedPlacementEnabled_example", anchorTagVersionedPlacementMetadataEnabled: nil, attachCompletedEnvelope: "attachCompletedEnvelope_example", attachCompletedEnvelopeMetadata: nil, authenticationCheck: "authenticationCheck_example", authenticationCheckMetadata: nil, autoNavRule: "autoNavRule_example", autoNavRuleMetadata: nil, autoProvisionSignerAccount: "autoProvisionSignerAccount_example", autoProvisionSignerAccountMetadata: nil, bccEmailArchive: "bccEmailArchive_example", bccEmailArchiveMetadata: nil, betaSwitchConfiguration: "betaSwitchConfiguration_example", betaSwitchConfigurationMetadata: nil, billingAddress: nil, billingAddressMetadata: nil, bulkSend: "bulkSend_example", bulkSendMaxCopiesInBatch: "bulkSendMaxCopiesInBatch_example", bulkSendMaxUnprocessedEnvelopesCount: "bulkSendMaxUnprocessedEnvelopesCount_example", bulkSendMetadata: nil, canSelfBrandSend: "canSelfBrandSend_example", canSelfBrandSendMetadata: nil, canSelfBrandSign: "canSelfBrandSign_example", canSelfBrandSignMetadata: nil, canUseSalesforceOAuth: "canUseSalesforceOAuth_example", canUseSalesforceOAuthMetadata: nil, captureVoiceRecording: "captureVoiceRecording_example", captureVoiceRecordingMetadata: nil, cfrUseWideImage: "cfrUseWideImage_example", cfrUseWideImageMetadata: nil, checkForMultipleAdminsOnAccount: "checkForMultipleAdminsOnAccount_example", checkForMultipleAdminsOnAccountMetadata: nil, chromeSignatureEnabled: "chromeSignatureEnabled_example", chromeSignatureEnabledMetadata: nil, commentEmailShowMessageText: "commentEmailShowMessageText_example", commentEmailShowMessageTextMetadata: nil, commentsAllowEnvelopeOverride: "commentsAllowEnvelopeOverride_example", commentsAllowEnvelopeOverrideMetadata: nil, conditionalFieldsEnabled: "conditionalFieldsEnabled_example", conditionalFieldsEnabledMetadata: nil, consumerDisclosureFrequency: "consumerDisclosureFrequency_example", consumerDisclosureFrequencyMetadata: nil, convertPdfFields: "convertPdfFields_example", convertPdfFieldsMetadata: nil, dataPopulationScope: "dataPopulationScope_example", dataPopulationScopeMetadata: nil, disableMobileApp: "disableMobileApp_example", disableMobileAppMetadata: nil, disableMobilePushNotifications: "disableMobilePushNotifications_example", disableMobilePushNotificationsMetadata: nil, disableMobileSending: "disableMobileSending_example", disableMobileSendingMetadata: nil, disableMultipleSessions: "disableMultipleSessions_example", disableMultipleSessionsMetadata: nil, disablePurgeNotificationsForSenderMetadata: nil, disableSignerCertView: "disableSignerCertView_example", disableSignerCertViewMetadata: nil, disableSignerHistoryView: "disableSignerHistoryView_example", disableSignerHistoryViewMetadata: nil, disableStyleSignature: "disableStyleSignature_example", disableStyleSignatureMetadata: nil, disableUploadSignature: "disableUploadSignature_example", disableUploadSignatureMetadata: nil, disableUserSharing: "disableUserSharing_example", disableUserSharingMetadata: nil, displayBetaSwitch: "displayBetaSwitch_example", displayBetaSwitchMetadata: nil, documentConversionRestrictions: "documentConversionRestrictions_example", documentConversionRestrictionsMetadata: nil, documentRetention: "documentRetention_example", documentRetentionMetadata: nil, documentRetentionPurgeTabs: "documentRetentionPurgeTabs_example", documentVisibility: "documentVisibility_example", documentVisibilityMetadata: nil, emailTemplateVersion: "emailTemplateVersion_example", emailTemplateVersionMetadata: nil, enableAccessCodeGenerator: "enableAccessCodeGenerator_example", enableAccessCodeGeneratorMetadata: nil, enableAdvancedPayments: "enableAdvancedPayments_example", enableAdvancedPaymentsMetadata: nil, enableAdvancedPowerForms: "enableAdvancedPowerForms_example", enableAdvancedPowerFormsMetadata: nil, enableAgreementActionsForCLM: "enableAgreementActionsForCLM_example", enableAgreementActionsForCLMMetadata: nil, enableAgreementActionsForESign: "enableAgreementActionsForESign_example", enableAgreementActionsForESignMetadata: nil, enableAutoNav: "enableAutoNav_example", enableAutoNavMetadata: nil, enableCalculatedFields: "enableCalculatedFields_example", enableCalculatedFieldsMetadata: nil, enableClickwraps: "enableClickwraps_example", enableClickwrapsMetadata: nil, enableCommentsHistoryDownloadInSigning: "enableCommentsHistoryDownloadInSigning_example", enableCommentsHistoryDownloadInSigningMetadata: nil, enableCustomerSatisfactionMetricTracking: "enableCustomerSatisfactionMetricTracking_example", enableCustomerSatisfactionMetricTrackingMetadata: nil, enableDSPro: "enableDSPro_example", enableDSProMetadata: nil, enableEnvelopeStampingByAccountAdmin: "enableEnvelopeStampingByAccountAdmin_example", enableEnvelopeStampingByAccountAdminMetadata: nil, enableEnvelopeStampingByDSAdmin: "enableEnvelopeStampingByDSAdmin_example", enableEnvelopeStampingByDSAdminMetadata: nil, enableInBrowserEditor: "enableInBrowserEditor_example", enableInBrowserEditorMetadata: nil, enablePaymentProcessing: "enablePaymentProcessing_example", enablePaymentProcessingMetadata: nil, enablePowerForm: "enablePowerForm_example", enablePowerFormDirect: "enablePowerFormDirect_example", enablePowerFormDirectMetadata: nil, enablePowerFormMetadata: nil, enableRecipientDomainValidation: "enableRecipientDomainValidation_example", enableRecipientDomainValidationMetadata: nil, enableReportLinks: "enableReportLinks_example", enableReportLinksMetadata: nil, enableRequireSignOnPaper: "enableRequireSignOnPaper_example", enableRequireSignOnPaperMetadata: nil, enableReservedDomain: "enableReservedDomain_example", enableReservedDomainMetadata: nil, enableResponsiveSigning: "enableResponsiveSigning_example", enableResponsiveSigningMetadata: nil, enableScheduledRelease: "enableScheduledRelease_example", enableScheduledReleaseMetadata: nil, enableSearchUI: "enableSearchUI_example", enableSearchUIMetadata: nil, enableSendingTagsFontSettings: "enableSendingTagsFontSettings_example", enableSendingTagsFontSettingsMetadata: nil, enableSendToAgent: "enableSendToAgent_example", enableSendToAgentMetadata: nil, enableSendToIntermediary: "enableSendToIntermediary_example", enableSendToIntermediaryMetadata: nil, enableSendToManage: "enableSendToManage_example", enableSendToManageMetadata: nil, enableSequentialSigningAPI: "enableSequentialSigningAPI_example", enableSequentialSigningAPIMetadata: nil, enableSequentialSigningUI: "enableSequentialSigningUI_example", enableSequentialSigningUIMetadata: nil, enableSignerAttachments: "enableSignerAttachments_example", enableSignerAttachmentsMetadata: nil, enableSigningExtensionComments: "enableSigningExtensionComments_example", enableSigningExtensionCommentsMetadata: nil, enableSigningExtensionConversations: "enableSigningExtensionConversations_example", enableSigningExtensionConversationsMetadata: nil, enableSigningOrderSettingsForAccount: "enableSigningOrderSettingsForAccount_example", enableSigningOrderSettingsForAccountMetadata: nil, enableSignOnPaper: "enableSignOnPaper_example", enableSignOnPaperMetadata: nil, enableSignOnPaperOverride: "enableSignOnPaperOverride_example", enableSignOnPaperOverrideMetadata: nil, enableSignWithNotary: "enableSignWithNotary_example", enableSignWithNotaryMetadata: nil, enableSmartContracts: "enableSmartContracts_example", enableSmartContractsMetadata: nil, enableSMSAuthentication: "enableSMSAuthentication_example", enableSMSAuthenticationMetadata: nil, enableSocialIdLogin: "enableSocialIdLogin_example", enableSocialIdLoginMetadata: nil, enableStrikeThrough: "enableStrikeThrough_example", enableStrikeThroughMetadata: nil, enableTransactionPoint: "enableTransactionPoint_example", enableTransactionPointMetadata: nil, enableVaulting: "enableVaulting_example", enableVaultingMetadata: nil, enableWitnessing: "enableWitnessing_example", enableWitnessingMetadata: nil, enforceTemplateNameUniqueness: "enforceTemplateNameUniqueness_example", enforceTemplateNameUniquenessMetadata: nil, envelopeIntegrationAllowed: "envelopeIntegrationAllowed_example", envelopeIntegrationAllowedMetadata: nil, envelopeIntegrationEnabled: "envelopeIntegrationEnabled_example", envelopeIntegrationEnabledMetadata: nil, envelopeStampingDefaultValue: "envelopeStampingDefaultValue_example", envelopeStampingDefaultValueMetadata: nil, expressSend: "expressSend_example", expressSendAllowTabs: "expressSendAllowTabs_example", expressSendAllowTabsMetadata: nil, expressSendMetadata: nil, externalDocumentSources: nil, externalSignaturePadType: "externalSignaturePadType_example", externalSignaturePadTypeMetadata: nil, faxOutEnabled: "faxOutEnabled_example", faxOutEnabledMetadata: nil, guidedFormsHtmlAllowed: "guidedFormsHtmlAllowed_example", guidedFormsHtmlAllowedMetadata: nil, hideAccountAddressInCoC: "hideAccountAddressInCoC_example", hideAccountAddressInCoCMetadata: nil, hidePricing: "hidePricing_example", hidePricingMetadata: nil, idCheckConfigurations: [nil], idCheckExpire: "idCheckExpire_example", idCheckExpireDays: "idCheckExpireDays_example", idCheckExpireDaysMetadata: nil, idCheckExpireMetadata: nil, idCheckExpireMinutes: "idCheckExpireMinutes_example", idCheckExpireMinutesMetadata: nil, idCheckRequired: "idCheckRequired_example", idCheckRequiredMetadata: nil, identityVerification: [nil], identityVerificationMetadata: nil, ignoreErrorIfAnchorTabNotFound: "ignoreErrorIfAnchorTabNotFound_example", ignoreErrorIfAnchorTabNotFoundMetadataEnabled: nil, inPersonIDCheckQuestion: "inPersonIDCheckQuestion_example", inPersonIDCheckQuestionMetadata: nil, inPersonSigningEnabled: "inPersonSigningEnabled_example", inPersonSigningEnabledMetadata: nil, inSessionEnabled: "inSessionEnabled_example", inSessionEnabledMetadata: nil, inSessionSuppressEmails: "inSessionSuppressEmails_example", inSessionSuppressEmailsMetadata: nil, maximumSigningGroups: "maximumSigningGroups_example", maximumSigningGroupsMetadata: nil, maximumUsersPerSigningGroup: "maximumUsersPerSigningGroup_example", maximumUsersPerSigningGroupMetadata: nil, maxNumberOfCustomStamps: "maxNumberOfCustomStamps_example", mobileSessionTimeout: "mobileSessionTimeout_example", mobileSessionTimeoutMetadata: nil, numberOfActiveCustomStamps: "numberOfActiveCustomStamps_example", optInMobileSigningV02: "optInMobileSigningV02_example", optInMobileSigningV02Metadata: nil, optOutAutoNavTextAndTabColorUpdates: "optOutAutoNavTextAndTabColorUpdates_example", optOutAutoNavTextAndTabColorUpdatesMetadata: nil, optOutNewPlatformSeal: "optOutNewPlatformSeal_example", optOutNewPlatformSealPlatformMetadata: nil, phoneAuthRecipientMayProvidePhoneNumber: "phoneAuthRecipientMayProvidePhoneNumber_example", phoneAuthRecipientMayProvidePhoneNumberMetadata: nil, pkiSignDownloadedPDFDocs: "pkiSignDownloadedPDFDocs_example", pkiSignDownloadedPDFDocsMetadata: nil, recipientsCanSignOffline: "recipientsCanSignOffline_example", recipientsCanSignOfflineMetadata: nil, recipientSigningAutoNavigationControl: "recipientSigningAutoNavigationControl_example", recipientSigningAutoNavigationControlMetadata: nil, require21CFRpt11Compliance: "require21CFRpt11Compliance_example", require21CFRpt11ComplianceMetadata: nil, requireDeclineReason: "requireDeclineReason_example", requireDeclineReasonMetadata: nil, requireExternalUserManagement: "requireExternalUserManagement_example", requireExternalUserManagementMetadata: nil, requireSignerCertificateType: "requireSignerCertificateType_example", requireSignerCertificateTypeMetadata: nil, rsaVeridAccountName: "rsaVeridAccountName_example", rsaVeridPassword: "rsaVeridPassword_example", rsaVeridRuleset: "rsaVeridRuleset_example", rsaVeridUserId: "rsaVeridUserId_example", selfSignedRecipientEmailDocument: "selfSignedRecipientEmailDocument_example", selfSignedRecipientEmailDocumentMetadata: nil, selfSignedRecipientEmailDocumentUserOverride: "selfSignedRecipientEmailDocumentUserOverride_example", selfSignedRecipientEmailDocumentUserOverrideMetadata: nil, senderCanSignInEachLocation: "senderCanSignInEachLocation_example", senderCanSignInEachLocationMetadata: nil, senderMustAuthenticateSigning: "senderMustAuthenticateSigning_example", senderMustAuthenticateSigningMetadata: nil, sendingTagsFontColor: "sendingTagsFontColor_example", sendingTagsFontColorMetadata: nil, sendingTagsFontName: "sendingTagsFontName_example", sendingTagsFontNameMetadata: nil, sendingTagsFontSize: "sendingTagsFontSize_example", sendingTagsFontSizeMetadata: nil, sendToCertifiedDeliveryEnabled: "sendToCertifiedDeliveryEnabled_example", sendToCertifiedDeliveryEnabledMetadata: nil, sessionTimeout: "sessionTimeout_example", sessionTimeoutMetadata: nil, setRecipEmailLang: "setRecipEmailLang_example", setRecipEmailLangMetadata: nil, setRecipSignLang: "setRecipSignLang_example", setRecipSignLangMetadata: nil, sharedTemplateFolders: "sharedTemplateFolders_example", sharedTemplateFoldersMetadata: nil, showCompleteDialogInEmbeddedSession: "showCompleteDialogInEmbeddedSession_example", showCompleteDialogInEmbeddedSessionMetadata: nil, showConditionalRoutingOnSend: "showConditionalRoutingOnSend_example", showConditionalRoutingOnSendMetadata: nil, showInitialConditionalFields: "showInitialConditionalFields_example", showInitialConditionalFieldsMetadata: nil, showLocalizedWatermarks: "showLocalizedWatermarks_example", showLocalizedWatermarksMetadata: nil, showTutorials: "showTutorials_example", showTutorialsMetadata: nil, signatureProviders: ["signatureProviders_example"], signatureProvidersMetadata: nil, signDateFormat: "signDateFormat_example", signDateFormatMetadata: nil, signerAttachCertificateToEnvelopePDF: "signerAttachCertificateToEnvelopePDF_example", signerAttachCertificateToEnvelopePDFMetadata: nil, signerAttachConcat: "signerAttachConcat_example", signerAttachConcatMetadata: nil, signerCanCreateAccount: "signerCanCreateAccount_example", signerCanCreateAccountMetadata: nil, signerCanSignOnMobile: "signerCanSignOnMobile_example", signerCanSignOnMobileMetadata: nil, signerInSessionUseEnvelopeCompleteEmail: "signerInSessionUseEnvelopeCompleteEmail_example", signerInSessionUseEnvelopeCompleteEmailMetadata: nil, signerLoginRequirements: "signerLoginRequirements_example", signerLoginRequirementsMetadata: nil, signerMustHaveAccount: "signerMustHaveAccount_example", signerMustHaveAccountMetadata: nil, signerMustLoginToSign: "signerMustLoginToSign_example", signerMustLoginToSignMetadata: nil, signerShowSecureFieldInitialValues: "signerShowSecureFieldInitialValues_example", signerShowSecureFieldInitialValuesMetadata: nil, signingSessionTimeout: "signingSessionTimeout_example", signingSessionTimeoutMetadata: nil, signingUiVersion: "signingUiVersion_example", signingUiVersionMetadata: nil, signTimeFormat: "signTimeFormat_example", signTimeFormatMetadata: nil, signTimeShowAmPm: "signTimeShowAmPm_example", signTimeShowAmPmMetadata: nil, simplifiedSendingEnabled: "simplifiedSendingEnabled_example", simplifiedSendingEnabledMetadata: nil, singleSignOnEnabled: "singleSignOnEnabled_example", singleSignOnEnabledMetadata: nil, skipAuthCompletedEnvelopes: "skipAuthCompletedEnvelopes_example", skipAuthCompletedEnvelopesMetadata: nil, socialIdRecipAuth: "socialIdRecipAuth_example", socialIdRecipAuthMetadata: nil, specifyDocumentVisibility: "specifyDocumentVisibility_example", specifyDocumentVisibilityMetadata: nil, startInAdvancedCorrect: "startInAdvancedCorrect_example", startInAdvancedCorrectMetadata: nil, supplementalDocumentsMustAccept: "supplementalDocumentsMustAccept_example", supplementalDocumentsMustAcceptMetadata: nil, supplementalDocumentsMustRead: "supplementalDocumentsMustRead_example", supplementalDocumentsMustReadMetadata: nil, supplementalDocumentsMustView: "supplementalDocumentsMustView_example", supplementalDocumentsMustViewMetadata: nil, suppressCertificateEnforcement: "suppressCertificateEnforcement_example", suppressCertificateEnforcementMetadata: nil, tabAccountSettings: nil, timezoneOffsetAPI: "timezoneOffsetAPI_example", timezoneOffsetAPIMetadata: nil, timezoneOffsetUI: "timezoneOffsetUI_example", timezoneOffsetUIMetadata: nil, universalSignatureOptIn: "universalSignatureOptIn_example", useAccountLevelEmail: "useAccountLevelEmail_example", useAccountLevelEmailMetadata: nil, useConsumerDisclosure: "useConsumerDisclosure_example", useConsumerDisclosureMetadata: nil, useConsumerDisclosureWithinAccount: "useConsumerDisclosureWithinAccount_example", useConsumerDisclosureWithinAccountMetadata: nil, useDerivedKeys: "useDerivedKeys_example", useDerivedKeysMetadata: nil, useDocuSignExpressSignerCertificate: "useDocuSignExpressSignerCertificate_example", useDocuSignExpressSignerCertificateMetadata: nil, useMultiAppGroupsData: "useMultiAppGroupsData_example", useMultiAppGroupsDataMetadata: nil, useNewBlobForPdf: "useNewBlobForPdf_example", useNewBlobForPdfMetadata: nil, useSAFESignerCertificates: "useSAFESignerCertificates_example", useSAFESignerCertificatesMetadata: nil, usesAPI: "usesAPI_example", usesAPIMetadata: nil, useSignatureProviderPlatform: "useSignatureProviderPlatform_example", useSignatureProviderPlatformMetadata: nil, validationsAllowed: "validationsAllowed_example", validationsAllowedMetadata: nil, validationsBrand: "validationsBrand_example", validationsBrandMetadata: nil, validationsCadence: "validationsCadence_example", validationsCadenceMetadata: nil, validationsEnabled: "validationsEnabled_example", validationsEnabledMetadata: nil, validationsReport: "validationsReport_example", validationsReportMetadata: nil, waterMarkEnabled: "waterMarkEnabled_example", waterMarkEnabledMetadata: nil, writeReminderToEnvelopeHistory: "writeReminderToEnvelopeHistory_example", writeReminderToEnvelopeHistoryMetadata: nil, wurflMinAllowableScreenSize: "wurflMinAllowableScreenSize_example", wurflMinAllowableScreenSizeMetadata: nil) // AccountSettingsInformation |  (optional)

// Updates the account settings for an account.
AccountsAPI.settingsPutSettings(accountId: accountId, accountSettingsInformation: accountSettingsInformation).whenComplete { result in
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
 **accountSettingsInformation** | [**AccountSettingsInformation**](AccountSettingsInformation.md) |  | [optional] 

### Return type

#### SettingsPutSettings

```swift
public enum SettingsPutSettings {
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

# **sharedAccessGetSharedAccess**
```swift
    open class func sharedAccessGetSharedAccess(accountId: String, count: String? = nil, envelopesNotSharedUserStatus: String? = nil, folderIds: String? = nil, itemType: String? = nil, searchText: String? = nil, shared: String? = nil, startPosition: String? = nil, userIds: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<SharedAccessGetSharedAccess>
```

Reserved: Gets the shared item status for one or more users.

Retrieves shared item status for one or more users and types of items.  Users with account administration privileges can retrieve shared access information for all account users. Users without account administrator privileges can only retrieve shared access information for themselves, and the returned information is limited to retrieving the status of the members of the account that are sharing their folders to the user. This is equivalent to setting the `shared` parameter to `shared_from`.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let count = "count_example" // String | Specifies the maximum number of results included in the response. If no value is specified, this defaults to 1000. (optional)
let envelopesNotSharedUserStatus = "envelopesNotSharedUserStatus_example" // String | This query parameter works in conjunction with `user_ids`. When you specify one of the following user statuses, the query limits the results to only users that match the specified status: - `ActivationRequired`: Membership Activation required - `ActivationSent`: Membership activation sent to user - `Active`: User Membership is active - `Closed`: User Membership is closed - `Disabled`: User Membership is disabled (optional)
let folderIds = "folderIds_example" // String | A comma-separated list of folder IDs for which to return shared item information. If `item_type` is set to `folders`, at least one folder ID is required. (optional)
let itemType = "itemType_example" // String | Specifies the type of shared item being requested. The possible values are:  - `envelopes`: Get information about envelope sharing between users. - `templates`: Get information about template sharing among users and groups. - `folders`: Get information about folder sharing among users and groups.  (optional)
let searchText = "searchText_example" // String | Filter user names based on the specified string. The wild-card '*' (asterisk) can be used in the string. (optional)
let shared = "shared_example" // String | A comma-separated list of sharing filters that specifies which users appear in the response.   - `not_shared`: The response lists users who do not share items of `item_type` with the current user.  - `shared_to`: The response lists users in `user_list` who are sharing items to current user.  - `shared_from`: The response lists users in `user_list` who are sharing items from the current user.  - `shared_to_and_from`: The response lists users in `user_list` who are sharing items to and from the current user.  If the current user does not have administrative privileges, only the `shared_to` option is valid. (optional)
let startPosition = "startPosition_example" // String | If the number of responses is greater than `count`, this specifies the number of responses to skip. Typically this value is a multiple of `count`. The default is 0. (optional)
let userIds = "userIds_example" // String | A comma-separated list of user IDs for whom the shared item information is being requested. (optional)

// Reserved: Gets the shared item status for one or more users.
AccountsAPI.sharedAccessGetSharedAccess(accountId: accountId, count: count, envelopesNotSharedUserStatus: envelopesNotSharedUserStatus, folderIds: folderIds, itemType: itemType, searchText: searchText, shared: shared, startPosition: startPosition, userIds: userIds).whenComplete { result in
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
 **count** | **String** | Specifies the maximum number of results included in the response. If no value is specified, this defaults to 1000. | [optional] 
 **envelopesNotSharedUserStatus** | **String** | This query parameter works in conjunction with &#x60;user_ids&#x60;. When you specify one of the following user statuses, the query limits the results to only users that match the specified status: - &#x60;ActivationRequired&#x60;: Membership Activation required - &#x60;ActivationSent&#x60;: Membership activation sent to user - &#x60;Active&#x60;: User Membership is active - &#x60;Closed&#x60;: User Membership is closed - &#x60;Disabled&#x60;: User Membership is disabled | [optional] 
 **folderIds** | **String** | A comma-separated list of folder IDs for which to return shared item information. If &#x60;item_type&#x60; is set to &#x60;folders&#x60;, at least one folder ID is required. | [optional] 
 **itemType** | **String** | Specifies the type of shared item being requested. The possible values are:  - &#x60;envelopes&#x60;: Get information about envelope sharing between users. - &#x60;templates&#x60;: Get information about template sharing among users and groups. - &#x60;folders&#x60;: Get information about folder sharing among users and groups.  | [optional] 
 **searchText** | **String** | Filter user names based on the specified string. The wild-card &#39;*&#39; (asterisk) can be used in the string. | [optional] 
 **shared** | **String** | A comma-separated list of sharing filters that specifies which users appear in the response.   - &#x60;not_shared&#x60;: The response lists users who do not share items of &#x60;item_type&#x60; with the current user.  - &#x60;shared_to&#x60;: The response lists users in &#x60;user_list&#x60; who are sharing items to current user.  - &#x60;shared_from&#x60;: The response lists users in &#x60;user_list&#x60; who are sharing items from the current user.  - &#x60;shared_to_and_from&#x60;: The response lists users in &#x60;user_list&#x60; who are sharing items to and from the current user.  If the current user does not have administrative privileges, only the &#x60;shared_to&#x60; option is valid. | [optional] 
 **startPosition** | **String** | If the number of responses is greater than &#x60;count&#x60;, this specifies the number of responses to skip. Typically this value is a multiple of &#x60;count&#x60;. The default is 0. | [optional] 
 **userIds** | **String** | A comma-separated list of user IDs for whom the shared item information is being requested. | [optional] 

### Return type

#### SharedAccessGetSharedAccess

```swift
public enum SharedAccessGetSharedAccess {
    case http200(value: AccountSharedAccess?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: AccountSharedAccess?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sharedAccessPutSharedAccess**
```swift
    open class func sharedAccessPutSharedAccess(accountId: String, itemType: String? = nil, preserveExistingSharedAccess: String? = nil, userIds: String? = nil, accountSharedAccess: AccountSharedAccess? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<SharedAccessPutSharedAccess>
```

Reserved: Sets the shared access information for users.

This sets the shared access status for one or more users or templates.  When setting user shared access, only users with account administration privileges can set shared access status for envelopes.  When setting template shared access, only users who own a template and have sharing permission or with account administration privileges can set shared access for templates.  Changes to the shared items status are not additive. The change always replaces the current status.  To change template shared access, add the query parameter `item_type` = `templates` to the request. When this is set, the user and envelopes properties are not required.  **Note**: This functionality is a newer version of the [Update Group Share](https://developers.docusign.com/esign-rest-api/reference/Templates/Templates/updateGroupShare) functionality.  

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let itemType = "itemType_example" // String | Specifies the type of shared item being set: - `envelopes`: Set envelope sharing between users. - `templates`: Set information about template sharing among users and groups. - `folders`: Get information about folder sharing among users and groups.  (optional)
let preserveExistingSharedAccess = "preserveExistingSharedAccess_example" // String | When **true**, preserve the existing shared access settings. (optional)
let userIds = "userIds_example" // String | A comma-separated list of IDs for users whose shared item access is being set. (optional)
let accountSharedAccess = accountSharedAccess(accountId: "accountId_example", endPosition: "endPosition_example", errorDetails: nil, nextUri: "nextUri_example", previousUri: "previousUri_example", resultSetSize: "resultSetSize_example", sharedAccess: [nil], startPosition: "startPosition_example", totalSetSize: "totalSetSize_example") // AccountSharedAccess |  (optional)

// Reserved: Sets the shared access information for users.
AccountsAPI.sharedAccessPutSharedAccess(accountId: accountId, itemType: itemType, preserveExistingSharedAccess: preserveExistingSharedAccess, userIds: userIds, accountSharedAccess: accountSharedAccess).whenComplete { result in
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
 **itemType** | **String** | Specifies the type of shared item being set: - &#x60;envelopes&#x60;: Set envelope sharing between users. - &#x60;templates&#x60;: Set information about template sharing among users and groups. - &#x60;folders&#x60;: Get information about folder sharing among users and groups.  | [optional] 
 **preserveExistingSharedAccess** | **String** | When **true**, preserve the existing shared access settings. | [optional] 
 **userIds** | **String** | A comma-separated list of IDs for users whose shared item access is being set. | [optional] 
 **accountSharedAccess** | [**AccountSharedAccess**](AccountSharedAccess.md) |  | [optional] 

### Return type

#### SharedAccessPutSharedAccess

```swift
public enum SharedAccessPutSharedAccess {
    case http200(value: AccountSharedAccess?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: AccountSharedAccess?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **supportedLanguagesGetSupportedLanguages**
```swift
    open class func supportedLanguagesGetSupportedLanguages(accountId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<SupportedLanguagesGetSupportedLanguages>
```

Gets the supported languages for envelope recipients.

Retrieves a list of supported languages that you can set for an individual recipient when creating an envelope, as well as their simple type enumeration values. These are the languages that you can set for the standard email format and signing view for each recipient.  For example, in the recipient's email notification, this setting affects elements such as the standard introductory text describing the request to sign. It also determines the language used for buttons and tabs in both the email notification and the signing experience.  **Note**: Setting a language for a recipient affects only the DocuSign standard text. Any custom text that you enter for the `emailBody` and `emailSubject` of the notification is not translated, and appears exactly as you enter it.  For more information, see [Set Recipient Language and Specify Custom Email Messages](https://support.docusign.com/en/guides/ndse-user-guide-recipient-language).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.

// Gets the supported languages for envelope recipients.
AccountsAPI.supportedLanguagesGetSupportedLanguages(accountId: accountId).whenComplete { result in
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

#### SupportedLanguagesGetSupportedLanguages

```swift
public enum SupportedLanguagesGetSupportedLanguages {
    case http200(value: SupportedLanguages?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: SupportedLanguages?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unsupportedFileTypesGetUnsupportedFileTypes**
```swift
    open class func unsupportedFileTypesGetUnsupportedFileTypes(accountId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<UnsupportedFileTypesGetUnsupportedFileTypes>
```

Gets a list of unsupported file types.

Retrieves a list of file types (mime-types and file-extensions) that are not supported for upload through the DocuSign system.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.

// Gets a list of unsupported file types.
AccountsAPI.unsupportedFileTypesGetUnsupportedFileTypes(accountId: accountId).whenComplete { result in
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

#### UnsupportedFileTypesGetUnsupportedFileTypes

```swift
public enum UnsupportedFileTypesGetUnsupportedFileTypes {
    case http200(value: FileTypeList?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: FileTypeList?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

