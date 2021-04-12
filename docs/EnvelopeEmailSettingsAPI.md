# EnvelopeEmailSettingsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**emailSettingsDeleteEmailSettings**](EnvelopeEmailSettingsAPI.md#emailsettingsdeleteemailsettings) | **DELETE** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/email_settings | Deletes the email setting overrides for an envelope.
[**emailSettingsGetEmailSettings**](EnvelopeEmailSettingsAPI.md#emailsettingsgetemailsettings) | **GET** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/email_settings | Gets the email setting overrides for an envelope.
[**emailSettingsPostEmailSettings**](EnvelopeEmailSettingsAPI.md#emailsettingspostemailsettings) | **POST** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/email_settings | Adds email setting overrides to an envelope.
[**emailSettingsPutEmailSettings**](EnvelopeEmailSettingsAPI.md#emailsettingsputemailsettings) | **PUT** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/email_settings | Updates the email setting overrides for an envelope.


# **emailSettingsDeleteEmailSettings**
```swift
    open class func emailSettingsDeleteEmailSettings(accountId: String, envelopeId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<EmailSettingsDeleteEmailSettings>
```

Deletes the email setting overrides for an envelope.

Deletes all existing email override settings for the envelope. If you want to delete an individual email override setting, use the PUT and set the value to an empty string. Note that deleting email settings will only affect email communications that occur after the deletion and the normal account email settings are used for future email communications.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 

// Deletes the email setting overrides for an envelope.
EnvelopeEmailSettingsAPI.emailSettingsDeleteEmailSettings(accountId: accountId, envelopeId: envelopeId).whenComplete { result in
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
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 

### Return type

#### EmailSettingsDeleteEmailSettings

```swift
public enum EmailSettingsDeleteEmailSettings {
    case http200(value: EmailSettings?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EmailSettings?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emailSettingsGetEmailSettings**
```swift
    open class func emailSettingsGetEmailSettings(accountId: String, envelopeId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<EmailSettingsGetEmailSettings>
```

Gets the email setting overrides for an envelope.

Retrieves the email override settings for the specified envelope.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 

// Gets the email setting overrides for an envelope.
EnvelopeEmailSettingsAPI.emailSettingsGetEmailSettings(accountId: accountId, envelopeId: envelopeId).whenComplete { result in
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
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 

### Return type

#### EmailSettingsGetEmailSettings

```swift
public enum EmailSettingsGetEmailSettings {
    case http200(value: EmailSettings?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EmailSettings?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emailSettingsPostEmailSettings**
```swift
    open class func emailSettingsPostEmailSettings(accountId: String, envelopeId: String, emailSettings: EmailSettings? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<EmailSettingsPostEmailSettings>
```

Adds email setting overrides to an envelope.

Adds email override settings, changing the email address to reply to an email address, name, or the BCC for email archive information, for the envelope. Note that adding email settings will only affect email communications that occur after the addition was made.  ### Important: The BCC Email address feature is designed to provide a copy of all email communications for external archiving purposes. DocuSign recommends that envelopes sent using the BCC for Email Archive feature, including the BCC Email Override option, include additional signer authentication options. To send a copy of the envelope to a recipient who does not need to sign, use a Carbon Copy or Certified Delivery recipient type.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let emailSettings = emailSettings(bccEmailAddresses: [bccEmailAddress(bccEmailAddressId: "bccEmailAddressId_example", email: "email_example")], replyEmailAddressOverride: "replyEmailAddressOverride_example", replyEmailNameOverride: "replyEmailNameOverride_example") // EmailSettings | A complex type that contains email settings. (optional)

// Adds email setting overrides to an envelope.
EnvelopeEmailSettingsAPI.emailSettingsPostEmailSettings(accountId: accountId, envelopeId: envelopeId, emailSettings: emailSettings).whenComplete { result in
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
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **emailSettings** | [**EmailSettings**](EmailSettings.md) | A complex type that contains email settings. | [optional] 

### Return type

#### EmailSettingsPostEmailSettings

```swift
public enum EmailSettingsPostEmailSettings {
    case http201(value: EmailSettings?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EmailSettings?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **emailSettingsPutEmailSettings**
```swift
    open class func emailSettingsPutEmailSettings(accountId: String, envelopeId: String, emailSettings: EmailSettings? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<EmailSettingsPutEmailSettings>
```

Updates the email setting overrides for an envelope.

Updates the existing email override settings for the specified envelope. Note that modifying email settings will only affect email communications that occur after the modification was made.  This can also be used to delete an individual email override setting by using an empty string for the value to be deleted.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let emailSettings = emailSettings(bccEmailAddresses: [bccEmailAddress(bccEmailAddressId: "bccEmailAddressId_example", email: "email_example")], replyEmailAddressOverride: "replyEmailAddressOverride_example", replyEmailNameOverride: "replyEmailNameOverride_example") // EmailSettings | A complex type that contains email settings. (optional)

// Updates the email setting overrides for an envelope.
EnvelopeEmailSettingsAPI.emailSettingsPutEmailSettings(accountId: accountId, envelopeId: envelopeId, emailSettings: emailSettings).whenComplete { result in
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
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **emailSettings** | [**EmailSettings**](EmailSettings.md) | A complex type that contains email settings. | [optional] 

### Return type

#### EmailSettingsPutEmailSettings

```swift
public enum EmailSettingsPutEmailSettings {
    case http200(value: EmailSettings?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EmailSettings?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

