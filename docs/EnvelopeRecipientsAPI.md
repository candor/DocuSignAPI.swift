# EnvelopeRecipientsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**recipientsDeleteRecipient**](EnvelopeRecipientsAPI.md#recipientsdeleterecipient) | **DELETE** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId} | Deletes a recipient from an envelope.
[**recipientsDeleteRecipients**](EnvelopeRecipientsAPI.md#recipientsdeleterecipients) | **DELETE** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients | Deletes recipients from an envelope.
[**recipientsGetRecipients**](EnvelopeRecipientsAPI.md#recipientsgetrecipients) | **GET** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients | Gets the status of recipients for an envelope.
[**recipientsPostRecipientProofFileResourceToken**](EnvelopeRecipientsAPI.md#recipientspostrecipientprooffileresourcetoken) | **POST** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/identity_proof_token | Creates a resource token for a sender to request ID Evidence data. 
[**recipientsPostRecipients**](EnvelopeRecipientsAPI.md#recipientspostrecipients) | **POST** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients | Adds one or more recipients to an envelope.
[**recipientsPutRecipients**](EnvelopeRecipientsAPI.md#recipientsputrecipients) | **PUT** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients | Updates recipients in a draft envelope or corrects recipient information for an in-process envelope.
[**viewsPostEnvelopeRecipientPreview**](EnvelopeRecipientsAPI.md#viewspostenveloperecipientpreview) | **POST** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/views/recipient_preview | Creates an envelope recipient preview.


# **recipientsDeleteRecipient**
```swift
    open class func recipientsDeleteRecipient(accountId: String, envelopeId: String, recipientId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientsDeleteRecipient>
```

Deletes a recipient from an envelope.

Deletes a recipient from a `draft` or `sent` envelope.  If the envelope is \"In Process\" (has been sent and is not completed or voided), recipients that have completed their actions cannot be deleted.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let recipientId = "recipientId_example" // String | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.

// Deletes a recipient from an envelope.
EnvelopeRecipientsAPI.recipientsDeleteRecipient(accountId: accountId, envelopeId: envelopeId, recipientId: recipientId).whenComplete { result in
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

### Return type

#### RecipientsDeleteRecipient

```swift
public enum RecipientsDeleteRecipient {
    case http200(value: EnvelopeRecipients?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeRecipients?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recipientsDeleteRecipients**
```swift
    open class func recipientsDeleteRecipients(accountId: String, envelopeId: String, envelopeRecipients: EnvelopeRecipients? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientsDeleteRecipients>
```

Deletes recipients from an envelope.

Deletes one or more recipients from a draft or sent envelope. List the recipients that you want to delete in the body of the request. This method uses the `recipientId` as the key for deleting recipients.  If the envelope is `In Process`, meaning that it has been sent and has not been completed or voided, recipients that have completed their actions cannot be deleted.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let envelopeRecipients = EnvelopeRecipients(agents: [nil], carbonCopies: [nil], certifiedDeliveries: [nil], currentRoutingOrder: "currentRoutingOrder_example", editors: [nil], errorDetails: nil, inPersonSigners: [nil], intermediaries: [nil], notaries: [nil], recipientCount: "recipientCount_example", seals: [nil], signers: [nil], witnesses: [nil]) // EnvelopeRecipients |  (optional)

// Deletes recipients from an envelope.
EnvelopeRecipientsAPI.recipientsDeleteRecipients(accountId: accountId, envelopeId: envelopeId, envelopeRecipients: envelopeRecipients).whenComplete { result in
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
 **envelopeRecipients** | [**EnvelopeRecipients**](EnvelopeRecipients.md) |  | [optional] 

### Return type

#### RecipientsDeleteRecipients

```swift
public enum RecipientsDeleteRecipients {
    case http200(value: EnvelopeRecipients?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeRecipients?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recipientsGetRecipients**
```swift
    open class func recipientsGetRecipients(accountId: String, envelopeId: String, includeAnchorTabLocations: String? = nil, includeExtended: String? = nil, includeMetadata: String? = nil, includeTabs: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientsGetRecipients>
```

Gets the status of recipients for an envelope.

Retrieves the status of all recipients in a single envelope and identifies the current recipient in the routing list. This method can also be used to retrieve the tab values.  The `currentRoutingOrder` property of the response contains the `routingOrder` value of the current recipient indicating that the envelope has been sent to the recipient, but the recipient has not completed their actions.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let includeAnchorTabLocations = "includeAnchorTabLocations_example" // String |  When set to **true** and `include_tabs` value is set to **true**, all tabs with anchor tab properties are included in the response.  (optional)
let includeExtended = "includeExtended_example" // String |  When set to **true**, the extended properties are included in the response.  (optional)
let includeMetadata = "includeMetadata_example" // String | Boolean value that specifies whether to include metadata associated with the recipients (for envelopes only, not templates). (optional)
let includeTabs = "includeTabs_example" // String | When set to **true**, the tab information associated with the recipient is included in the response. If you do not specify this parameter, the effect is the default behavior (**false**). (optional)

// Gets the status of recipients for an envelope.
EnvelopeRecipientsAPI.recipientsGetRecipients(accountId: accountId, envelopeId: envelopeId, includeAnchorTabLocations: includeAnchorTabLocations, includeExtended: includeExtended, includeMetadata: includeMetadata, includeTabs: includeTabs).whenComplete { result in
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
 **includeAnchorTabLocations** | **String** |  When set to **true** and &#x60;include_tabs&#x60; value is set to **true**, all tabs with anchor tab properties are included in the response.  | [optional] 
 **includeExtended** | **String** |  When set to **true**, the extended properties are included in the response.  | [optional] 
 **includeMetadata** | **String** | Boolean value that specifies whether to include metadata associated with the recipients (for envelopes only, not templates). | [optional] 
 **includeTabs** | **String** | When set to **true**, the tab information associated with the recipient is included in the response. If you do not specify this parameter, the effect is the default behavior (**false**). | [optional] 

### Return type

#### RecipientsGetRecipients

```swift
public enum RecipientsGetRecipients {
    case http200(value: EnvelopeRecipients?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeRecipients?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recipientsPostRecipientProofFileResourceToken**
```swift
    open class func recipientsPostRecipientProofFileResourceToken(accountId: String, envelopeId: String, recipientId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientsPostRecipientProofFileResourceToken>
```

Creates a resource token for a sender to request ID Evidence data. 

Creates a resource token for a sender. This token allows a sender to return identification data for a recipient using the [ID Evidence API](https://developers.docusign.com/docs/idevidence-api/).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The account ID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let recipientId = "recipientId_example" // String | The `recipientIdGuid`.

// Creates a resource token for a sender to request ID Evidence data. 
EnvelopeRecipientsAPI.recipientsPostRecipientProofFileResourceToken(accountId: accountId, envelopeId: envelopeId, recipientId: recipientId).whenComplete { result in
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
 **accountId** | **String** | The account ID. | 
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **recipientId** | **String** | The &#x60;recipientIdGuid&#x60;. | 

### Return type

#### RecipientsPostRecipientProofFileResourceToken

```swift
public enum RecipientsPostRecipientProofFileResourceToken {
    case http201(value: ProofServiceResourceToken?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ProofServiceResourceToken?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recipientsPostRecipients**
```swift
    open class func recipientsPostRecipients(accountId: String, envelopeId: String, resendEnvelope: String? = nil, envelopeRecipients: EnvelopeRecipients? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientsPostRecipients>
```

Adds one or more recipients to an envelope.

Adds one or more recipients to an envelope.  For an in process envelope, one that has been sent and has not been completed or voided, an email is sent to a new recipient when they are reached in the routing order. If the new recipient's routing order is before or the same as the envelope's next recipient, an email is only sent if the optional `resend_envelope` query string is set to **true**.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let resendEnvelope = "resendEnvelope_example" // String | When set to **true**, resends the envelope to the recipients that you specify in the request body. You use this parameter to resend the envelope to a recipient who deleted the original email notification.  **Note**: Correcting an envelope is a different process. DocuSign always resends an envelope when you correct it, regardless of the value that you enter here. (optional)
let envelopeRecipients = EnvelopeRecipients(agents: [nil], carbonCopies: [nil], certifiedDeliveries: [nil], currentRoutingOrder: "currentRoutingOrder_example", editors: [nil], errorDetails: nil, inPersonSigners: [nil], intermediaries: [nil], notaries: [nil], recipientCount: "recipientCount_example", seals: [nil], signers: [nil], witnesses: [nil]) // EnvelopeRecipients |  (optional)

// Adds one or more recipients to an envelope.
EnvelopeRecipientsAPI.recipientsPostRecipients(accountId: accountId, envelopeId: envelopeId, resendEnvelope: resendEnvelope, envelopeRecipients: envelopeRecipients).whenComplete { result in
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
 **resendEnvelope** | **String** | When set to **true**, resends the envelope to the recipients that you specify in the request body. You use this parameter to resend the envelope to a recipient who deleted the original email notification.  **Note**: Correcting an envelope is a different process. DocuSign always resends an envelope when you correct it, regardless of the value that you enter here. | [optional] 
 **envelopeRecipients** | [**EnvelopeRecipients**](EnvelopeRecipients.md) |  | [optional] 

### Return type

#### RecipientsPostRecipients

```swift
public enum RecipientsPostRecipients {
    case http201(value: EnvelopeRecipients?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeRecipients?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recipientsPutRecipients**
```swift
    open class func recipientsPutRecipients(accountId: String, envelopeId: String, combineSameOrderRecipients: String? = nil, offlineSigning: String? = nil, resendEnvelope: String? = nil, envelopeRecipients: EnvelopeRecipients? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientsPutRecipients>
```

Updates recipients in a draft envelope or corrects recipient information for an in-process envelope.

Updates the recipients of a draft envelope or corrects recipient information for an in-process envelope.   If you send information for a recipient that does not already exist in a draft envelope, the recipient is added to the envelope (similar to the EnvelopeRecipients::Create method).  You can also use this method to resend an envelope to a recipient by using the `resend_envelope` option.  **Updating Sent Envelopes**  After an envelope has been sent, you can edit only the following properties:   - `accessCode` - `agentCanEditName` - `agentCanEditEmail` - `customFields` - `deliveryMethod` - `documentVisibility` - `email` - `emailNotification` - `idCheckConfigurationName` - `name` - `note` - `phoneAuthentication` - `recipientType` (For this to work, you must also change the recipient object to match the recipient type.) - `requireIdLookup` - `routingOrder` - `routingOrder` - `signingGroupId` (You can change this id to switch to a different signing group and its corresponding set of recipients.) - `smsAuthentication` - `suppressEmails` - `userName`

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let combineSameOrderRecipients = "combineSameOrderRecipients_example" // String | When set to **true**, recipients are combined or merged with matching recipients. Recipient matching occurs as part of [template matching](https://docs.docusign.com/DocuSignHelp/Content/automatic-template-matching.htm), and is based on Recipient Role and Routing Order. (optional)
let offlineSigning = "offlineSigning_example" // String | Indicates if offline signing is enabled for the recipient when a network connection is unavailable.  (optional)
let resendEnvelope = "resendEnvelope_example" // String | When set to **true**, resends the envelope to the recipients that you specify in the request body. You use this parameter to resend the envelope to a recipient who deleted the original email notification.  **Note**: Correcting an envelope is a different process. DocuSign always resends an envelope when you correct it, regardless of the value that you enter here. (optional)
let envelopeRecipients = EnvelopeRecipients(agents: [nil], carbonCopies: [nil], certifiedDeliveries: [nil], currentRoutingOrder: "currentRoutingOrder_example", editors: [nil], errorDetails: nil, inPersonSigners: [nil], intermediaries: [nil], notaries: [nil], recipientCount: "recipientCount_example", seals: [nil], signers: [nil], witnesses: [nil]) // EnvelopeRecipients |  (optional)

// Updates recipients in a draft envelope or corrects recipient information for an in-process envelope.
EnvelopeRecipientsAPI.recipientsPutRecipients(accountId: accountId, envelopeId: envelopeId, combineSameOrderRecipients: combineSameOrderRecipients, offlineSigning: offlineSigning, resendEnvelope: resendEnvelope, envelopeRecipients: envelopeRecipients).whenComplete { result in
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
 **combineSameOrderRecipients** | **String** | When set to **true**, recipients are combined or merged with matching recipients. Recipient matching occurs as part of [template matching](https://docs.docusign.com/DocuSignHelp/Content/automatic-template-matching.htm), and is based on Recipient Role and Routing Order. | [optional] 
 **offlineSigning** | **String** | Indicates if offline signing is enabled for the recipient when a network connection is unavailable.  | [optional] 
 **resendEnvelope** | **String** | When set to **true**, resends the envelope to the recipients that you specify in the request body. You use this parameter to resend the envelope to a recipient who deleted the original email notification.  **Note**: Correcting an envelope is a different process. DocuSign always resends an envelope when you correct it, regardless of the value that you enter here. | [optional] 
 **envelopeRecipients** | [**EnvelopeRecipients**](EnvelopeRecipients.md) |  | [optional] 

### Return type

#### RecipientsPutRecipients

```swift
public enum RecipientsPutRecipients {
    case http200(value: RecipientsUpdateSummary?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: RecipientsUpdateSummary?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewsPostEnvelopeRecipientPreview**
```swift
    open class func viewsPostEnvelopeRecipientPreview(accountId: String, envelopeId: String, recipientPreviewRequest: RecipientPreviewRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ViewsPostEnvelopeRecipientPreview>
```

Creates an envelope recipient preview.

This method returns a URL for an envelope recipient preview  in the DocuSign UI that you can embed in your application. You use this method to enable the sender to preview the recipients' experience.  For more information, see [Preview and Send](https://support.docusign.com/en/guides/ndse-user-guide-send-your-documents).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let recipientPreviewRequest = recipientPreviewRequest(assertionId: "assertionId_example", authenticationInstant: "authenticationInstant_example", authenticationMethod: "authenticationMethod_example", pingFrequency: "pingFrequency_example", pingUrl: "pingUrl_example", recipientId: "recipientId_example", returnUrl: "returnUrl_example", securityDomain: "securityDomain_example", xFrameOptions: "xFrameOptions_example", xFrameOptionsAllowFromUrl: "xFrameOptionsAllowFromUrl_example") // RecipientPreviewRequest |  (optional)

// Creates an envelope recipient preview.
EnvelopeRecipientsAPI.viewsPostEnvelopeRecipientPreview(accountId: accountId, envelopeId: envelopeId, recipientPreviewRequest: recipientPreviewRequest).whenComplete { result in
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
 **recipientPreviewRequest** | [**RecipientPreviewRequest**](RecipientPreviewRequest.md) |  | [optional] 

### Return type

#### ViewsPostEnvelopeRecipientPreview

```swift
public enum ViewsPostEnvelopeRecipientPreview {
    case http201(value: ViewUrl?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ViewUrl?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

