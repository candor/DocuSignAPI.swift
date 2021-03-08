# EnvelopeRecipientTabsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**recipientsDeleteRecipientTabs**](EnvelopeRecipientTabsAPI.md#recipientsdeleterecipienttabs) | **DELETE** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/tabs | Deletes the tabs associated with a recipient.
[**recipientsGetRecipientTabs**](EnvelopeRecipientTabsAPI.md#recipientsgetrecipienttabs) | **GET** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/tabs | Gets the tabs information for a signer or sign-in-person recipient in an envelope.
[**recipientsPostRecipientTabs**](EnvelopeRecipientTabsAPI.md#recipientspostrecipienttabs) | **POST** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/tabs | Adds tabs for a recipient.
[**recipientsPutRecipientTabs**](EnvelopeRecipientTabsAPI.md#recipientsputrecipienttabs) | **PUT** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/tabs | Updates the tabs for a recipient.  


# **recipientsDeleteRecipientTabs**
```swift
    open class func recipientsDeleteRecipientTabs(accountId: String, envelopeId: String, recipientId: String, envelopeRecipientTabs: EnvelopeRecipientTabs? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientsDeleteRecipientTabs>
```

Deletes the tabs associated with a recipient.

Deletes one or more tabs associated with a recipient in a draft envelope.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let recipientId = "recipientId_example" // String | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
let envelopeRecipientTabs = EnvelopeRecipientTabs(approveTabs: [nil], checkboxTabs: [nil], commentThreadTabs: [nil], commissionCountyTabs: [nil], commissionExpirationTabs: [nil], commissionNumberTabs: [nil], commissionStateTabs: [nil], companyTabs: [nil], dateSignedTabs: [nil], dateTabs: [Date()], declineTabs: [nil], drawTabs: [nil], emailAddressTabs: [nil], emailTabs: [nil], envelopeIdTabs: [nil], firstNameTabs: [nil], formulaTabs: [nil], fullNameTabs: [nil], initialHereTabs: [nil], lastNameTabs: [nil], listTabs: [nil], notarizeTabs: [nil], notarySealTabs: [nil], noteTabs: [nil], numberTabs: [123], phoneNumberTabs: [nil], polyLineOverlayTabs: [nil], radioGroupTabs: [nil], signerAttachmentTabs: [nil], signHereTabs: [nil], smartSectionTabs: [nil], ssnTabs: [nil], tabGroups: [nil], textTabs: [nil], titleTabs: [nil], viewTabs: [nil], zipTabs: [nil]) // EnvelopeRecipientTabs |  (optional)

// Deletes the tabs associated with a recipient.
EnvelopeRecipientTabsAPI.recipientsDeleteRecipientTabs(accountId: accountId, envelopeId: envelopeId, recipientId: recipientId, envelopeRecipientTabs: envelopeRecipientTabs).whenComplete { result in
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
 **recipientId** | **String** | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each &#x60;recipientId&#x60; must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a &#x60;recipientId&#x60; of &#x60;1&#x60;. | 
 **envelopeRecipientTabs** | [**EnvelopeRecipientTabs**](EnvelopeRecipientTabs.md) |  | [optional] 

### Return type

#### RecipientsDeleteRecipientTabs

```swift
public enum RecipientsDeleteRecipientTabs {
    case http200(value: EnvelopeRecipientTabs?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeRecipientTabs?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recipientsGetRecipientTabs**
```swift
    open class func recipientsGetRecipientTabs(accountId: String, envelopeId: String, recipientId: String, includeAnchorTabLocations: String? = nil, includeMetadata: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientsGetRecipientTabs>
```

Gets the tabs information for a signer or sign-in-person recipient in an envelope.

Retrieves information about the tabs associated with a recipient. You can make a single API call to get all the tab values and information from a given, completed envelope in addition to draft ones.  Tab values can be retrieved by using the [EnvelopeRecipients:list method](https://developers.docusign.com/esign-rest-api/reference/Envelopes/EnvelopeRecipients/list/) with query parameter include_tabs set to \"true\".

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let recipientId = "recipientId_example" // String | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
let includeAnchorTabLocations = "includeAnchorTabLocations_example" // String | When set to **true**, all tabs with anchor tab properties are included in the response. The default value is **false**. (optional)
let includeMetadata = "includeMetadata_example" // String | When set to **true**, the response includes metadata indicating which properties are editable. (optional)

// Gets the tabs information for a signer or sign-in-person recipient in an envelope.
EnvelopeRecipientTabsAPI.recipientsGetRecipientTabs(accountId: accountId, envelopeId: envelopeId, recipientId: recipientId, includeAnchorTabLocations: includeAnchorTabLocations, includeMetadata: includeMetadata).whenComplete { result in
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
 **recipientId** | **String** | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each &#x60;recipientId&#x60; must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a &#x60;recipientId&#x60; of &#x60;1&#x60;. | 
 **includeAnchorTabLocations** | **String** | When set to **true**, all tabs with anchor tab properties are included in the response. The default value is **false**. | [optional] 
 **includeMetadata** | **String** | When set to **true**, the response includes metadata indicating which properties are editable. | [optional] 

### Return type

#### RecipientsGetRecipientTabs

```swift
public enum RecipientsGetRecipientTabs {
    case http200(value: EnvelopeRecipientTabs?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeRecipientTabs?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recipientsPostRecipientTabs**
```swift
    open class func recipientsPostRecipientTabs(accountId: String, envelopeId: String, recipientId: String, envelopeRecipientTabs: EnvelopeRecipientTabs? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientsPostRecipientTabs>
```

Adds tabs for a recipient.

Adds one or more tabs for a recipient.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let recipientId = "recipientId_example" // String | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
let envelopeRecipientTabs = EnvelopeRecipientTabs(approveTabs: [nil], checkboxTabs: [nil], commentThreadTabs: [nil], commissionCountyTabs: [nil], commissionExpirationTabs: [nil], commissionNumberTabs: [nil], commissionStateTabs: [nil], companyTabs: [nil], dateSignedTabs: [nil], dateTabs: [Date()], declineTabs: [nil], drawTabs: [nil], emailAddressTabs: [nil], emailTabs: [nil], envelopeIdTabs: [nil], firstNameTabs: [nil], formulaTabs: [nil], fullNameTabs: [nil], initialHereTabs: [nil], lastNameTabs: [nil], listTabs: [nil], notarizeTabs: [nil], notarySealTabs: [nil], noteTabs: [nil], numberTabs: [123], phoneNumberTabs: [nil], polyLineOverlayTabs: [nil], radioGroupTabs: [nil], signerAttachmentTabs: [nil], signHereTabs: [nil], smartSectionTabs: [nil], ssnTabs: [nil], tabGroups: [nil], textTabs: [nil], titleTabs: [nil], viewTabs: [nil], zipTabs: [nil]) // EnvelopeRecipientTabs |  (optional)

// Adds tabs for a recipient.
EnvelopeRecipientTabsAPI.recipientsPostRecipientTabs(accountId: accountId, envelopeId: envelopeId, recipientId: recipientId, envelopeRecipientTabs: envelopeRecipientTabs).whenComplete { result in
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
 **recipientId** | **String** | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each &#x60;recipientId&#x60; must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a &#x60;recipientId&#x60; of &#x60;1&#x60;. | 
 **envelopeRecipientTabs** | [**EnvelopeRecipientTabs**](EnvelopeRecipientTabs.md) |  | [optional] 

### Return type

#### RecipientsPostRecipientTabs

```swift
public enum RecipientsPostRecipientTabs {
    case http201(value: EnvelopeRecipientTabs?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeRecipientTabs?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recipientsPutRecipientTabs**
```swift
    open class func recipientsPutRecipientTabs(accountId: String, envelopeId: String, recipientId: String, envelopeRecipientTabs: EnvelopeRecipientTabs? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientsPutRecipientTabs>
```

Updates the tabs for a recipient.  

Updates one or more tabs for a recipient in a draft envelope.  **Note**: The Update method can be used if the envelope is not yet complete. To update an existing tab, the request body must include the `tabId`.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let recipientId = "recipientId_example" // String | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
let envelopeRecipientTabs = EnvelopeRecipientTabs(approveTabs: [nil], checkboxTabs: [nil], commentThreadTabs: [nil], commissionCountyTabs: [nil], commissionExpirationTabs: [nil], commissionNumberTabs: [nil], commissionStateTabs: [nil], companyTabs: [nil], dateSignedTabs: [nil], dateTabs: [Date()], declineTabs: [nil], drawTabs: [nil], emailAddressTabs: [nil], emailTabs: [nil], envelopeIdTabs: [nil], firstNameTabs: [nil], formulaTabs: [nil], fullNameTabs: [nil], initialHereTabs: [nil], lastNameTabs: [nil], listTabs: [nil], notarizeTabs: [nil], notarySealTabs: [nil], noteTabs: [nil], numberTabs: [123], phoneNumberTabs: [nil], polyLineOverlayTabs: [nil], radioGroupTabs: [nil], signerAttachmentTabs: [nil], signHereTabs: [nil], smartSectionTabs: [nil], ssnTabs: [nil], tabGroups: [nil], textTabs: [nil], titleTabs: [nil], viewTabs: [nil], zipTabs: [nil]) // EnvelopeRecipientTabs |  (optional)

// Updates the tabs for a recipient.  
EnvelopeRecipientTabsAPI.recipientsPutRecipientTabs(accountId: accountId, envelopeId: envelopeId, recipientId: recipientId, envelopeRecipientTabs: envelopeRecipientTabs).whenComplete { result in
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
 **recipientId** | **String** | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each &#x60;recipientId&#x60; must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a &#x60;recipientId&#x60; of &#x60;1&#x60;. | 
 **envelopeRecipientTabs** | [**EnvelopeRecipientTabs**](EnvelopeRecipientTabs.md) |  | [optional] 

### Return type

#### RecipientsPutRecipientTabs

```swift
public enum RecipientsPutRecipientTabs {
    case http200(value: EnvelopeRecipientTabs?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeRecipientTabs?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

