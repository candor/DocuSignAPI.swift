# TemplateRecipientTabsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**recipientsDeleteTemplateRecipientTabs**](TemplateRecipientTabsAPI.md#recipientsdeletetemplaterecipienttabs) | **DELETE** /v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs | Deletes the tabs associated with a recipient in a template.
[**recipientsGetTemplateRecipientTabs**](TemplateRecipientTabsAPI.md#recipientsgettemplaterecipienttabs) | **GET** /v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs | Gets the tabs information for a signer or sign-in-person recipient in a template.
[**recipientsPostTemplateRecipientTabs**](TemplateRecipientTabsAPI.md#recipientsposttemplaterecipienttabs) | **POST** /v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs | Adds tabs for a recipient.
[**recipientsPutTemplateRecipientTabs**](TemplateRecipientTabsAPI.md#recipientsputtemplaterecipienttabs) | **PUT** /v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId}/tabs | Updates the tabs for a recipient.


# **recipientsDeleteTemplateRecipientTabs**
```swift
    open class func recipientsDeleteTemplateRecipientTabs(accountId: String, recipientId: String, templateId: String, templateTabs: TemplateTabs? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientsDeleteTemplateRecipientTabs>
```

Deletes the tabs associated with a recipient in a template.

Deletes one or more tabs associated with a recipient in a template.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let recipientId = "recipientId_example" // String | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
let templateId = "templateId_example" // String | The id of the template.
let templateTabs = templateTabs(approveTabs: [nil], checkboxTabs: [nil], commentThreadTabs: [nil], commissionCountyTabs: [nil], commissionExpirationTabs: [nil], commissionNumberTabs: [nil], commissionStateTabs: [nil], companyTabs: [nil], dateSignedTabs: [nil], dateTabs: [Date()], declineTabs: [nil], drawTabs: [nil], emailAddressTabs: [nil], emailTabs: [nil], envelopeIdTabs: [nil], firstNameTabs: [nil], formulaTabs: [nil], fullNameTabs: [nil], initialHereTabs: [nil], lastNameTabs: [nil], listTabs: [nil], notarizeTabs: [nil], notarySealTabs: [nil], noteTabs: [nil], numberTabs: [123], phoneNumberTabs: [nil], polyLineOverlayTabs: [nil], radioGroupTabs: [nil], signerAttachmentTabs: [nil], signHereTabs: [nil], smartSectionTabs: [nil], ssnTabs: [nil], tabGroups: [nil], textTabs: [nil], titleTabs: [nil], viewTabs: [nil], zipTabs: [nil]) // TemplateTabs |  (optional)

// Deletes the tabs associated with a recipient in a template.
TemplateRecipientTabsAPI.recipientsDeleteTemplateRecipientTabs(accountId: accountId, recipientId: recipientId, templateId: templateId, templateTabs: templateTabs).whenComplete { result in
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
 **recipientId** | **String** | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each &#x60;recipientId&#x60; must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a &#x60;recipientId&#x60; of &#x60;1&#x60;. | 
 **templateId** | **String** | The id of the template. | 
 **templateTabs** | [**TemplateTabs**](TemplateTabs.md) |  | [optional] 

### Return type

#### RecipientsDeleteTemplateRecipientTabs

```swift
public enum RecipientsDeleteTemplateRecipientTabs {
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

# **recipientsGetTemplateRecipientTabs**
```swift
    open class func recipientsGetTemplateRecipientTabs(accountId: String, recipientId: String, templateId: String, includeAnchorTabLocations: String? = nil, includeMetadata: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientsGetTemplateRecipientTabs>
```

Gets the tabs information for a signer or sign-in-person recipient in a template.

Gets the tabs information for a signer or sign-in-person recipient in a template.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let recipientId = "recipientId_example" // String | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
let templateId = "templateId_example" // String | The id of the template.
let includeAnchorTabLocations = "includeAnchorTabLocations_example" // String | When set to **true**, all tabs with anchor tab properties are included in the response. The default value is **false**. (optional)
let includeMetadata = "includeMetadata_example" // String | When set to **true**, the response includes metadata indicating which properties are editable. (optional)

// Gets the tabs information for a signer or sign-in-person recipient in a template.
TemplateRecipientTabsAPI.recipientsGetTemplateRecipientTabs(accountId: accountId, recipientId: recipientId, templateId: templateId, includeAnchorTabLocations: includeAnchorTabLocations, includeMetadata: includeMetadata).whenComplete { result in
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
 **recipientId** | **String** | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each &#x60;recipientId&#x60; must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a &#x60;recipientId&#x60; of &#x60;1&#x60;. | 
 **templateId** | **String** | The id of the template. | 
 **includeAnchorTabLocations** | **String** | When set to **true**, all tabs with anchor tab properties are included in the response. The default value is **false**. | [optional] 
 **includeMetadata** | **String** | When set to **true**, the response includes metadata indicating which properties are editable. | [optional] 

### Return type

#### RecipientsGetTemplateRecipientTabs

```swift
public enum RecipientsGetTemplateRecipientTabs {
    case http200(value: Tabs?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Tabs?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recipientsPostTemplateRecipientTabs**
```swift
    open class func recipientsPostTemplateRecipientTabs(accountId: String, recipientId: String, templateId: String, templateTabs: TemplateTabs? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientsPostTemplateRecipientTabs>
```

Adds tabs for a recipient.

Adds one or more tabs for a recipient.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let recipientId = "recipientId_example" // String | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
let templateId = "templateId_example" // String | The id of the template.
let templateTabs = templateTabs(approveTabs: [nil], checkboxTabs: [nil], commentThreadTabs: [nil], commissionCountyTabs: [nil], commissionExpirationTabs: [nil], commissionNumberTabs: [nil], commissionStateTabs: [nil], companyTabs: [nil], dateSignedTabs: [nil], dateTabs: [Date()], declineTabs: [nil], drawTabs: [nil], emailAddressTabs: [nil], emailTabs: [nil], envelopeIdTabs: [nil], firstNameTabs: [nil], formulaTabs: [nil], fullNameTabs: [nil], initialHereTabs: [nil], lastNameTabs: [nil], listTabs: [nil], notarizeTabs: [nil], notarySealTabs: [nil], noteTabs: [nil], numberTabs: [123], phoneNumberTabs: [nil], polyLineOverlayTabs: [nil], radioGroupTabs: [nil], signerAttachmentTabs: [nil], signHereTabs: [nil], smartSectionTabs: [nil], ssnTabs: [nil], tabGroups: [nil], textTabs: [nil], titleTabs: [nil], viewTabs: [nil], zipTabs: [nil]) // TemplateTabs |  (optional)

// Adds tabs for a recipient.
TemplateRecipientTabsAPI.recipientsPostTemplateRecipientTabs(accountId: accountId, recipientId: recipientId, templateId: templateId, templateTabs: templateTabs).whenComplete { result in
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
 **recipientId** | **String** | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each &#x60;recipientId&#x60; must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a &#x60;recipientId&#x60; of &#x60;1&#x60;. | 
 **templateId** | **String** | The id of the template. | 
 **templateTabs** | [**TemplateTabs**](TemplateTabs.md) |  | [optional] 

### Return type

#### RecipientsPostTemplateRecipientTabs

```swift
public enum RecipientsPostTemplateRecipientTabs {
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

# **recipientsPutTemplateRecipientTabs**
```swift
    open class func recipientsPutTemplateRecipientTabs(accountId: String, recipientId: String, templateId: String, templateTabs: TemplateTabs? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientsPutTemplateRecipientTabs>
```

Updates the tabs for a recipient.

Updates one or more tabs for a recipient in a template.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let recipientId = "recipientId_example" // String | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
let templateId = "templateId_example" // String | The id of the template.
let templateTabs = templateTabs(approveTabs: [nil], checkboxTabs: [nil], commentThreadTabs: [nil], commissionCountyTabs: [nil], commissionExpirationTabs: [nil], commissionNumberTabs: [nil], commissionStateTabs: [nil], companyTabs: [nil], dateSignedTabs: [nil], dateTabs: [Date()], declineTabs: [nil], drawTabs: [nil], emailAddressTabs: [nil], emailTabs: [nil], envelopeIdTabs: [nil], firstNameTabs: [nil], formulaTabs: [nil], fullNameTabs: [nil], initialHereTabs: [nil], lastNameTabs: [nil], listTabs: [nil], notarizeTabs: [nil], notarySealTabs: [nil], noteTabs: [nil], numberTabs: [123], phoneNumberTabs: [nil], polyLineOverlayTabs: [nil], radioGroupTabs: [nil], signerAttachmentTabs: [nil], signHereTabs: [nil], smartSectionTabs: [nil], ssnTabs: [nil], tabGroups: [nil], textTabs: [nil], titleTabs: [nil], viewTabs: [nil], zipTabs: [nil]) // TemplateTabs |  (optional)

// Updates the tabs for a recipient.
TemplateRecipientTabsAPI.recipientsPutTemplateRecipientTabs(accountId: accountId, recipientId: recipientId, templateId: templateId, templateTabs: templateTabs).whenComplete { result in
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
 **recipientId** | **String** | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each &#x60;recipientId&#x60; must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a &#x60;recipientId&#x60; of &#x60;1&#x60;. | 
 **templateId** | **String** | The id of the template. | 
 **templateTabs** | [**TemplateTabs**](TemplateTabs.md) |  | [optional] 

### Return type

#### RecipientsPutTemplateRecipientTabs

```swift
public enum RecipientsPutTemplateRecipientTabs {
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

