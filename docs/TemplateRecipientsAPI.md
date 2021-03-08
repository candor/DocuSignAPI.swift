# TemplateRecipientsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**recipientsDeleteTemplateRecipient**](TemplateRecipientsAPI.md#recipientsdeletetemplaterecipient) | **DELETE** /v2.1/accounts/{accountId}/templates/{templateId}/recipients/{recipientId} | Deletes the specified recipient file from a template.
[**recipientsDeleteTemplateRecipients**](TemplateRecipientsAPI.md#recipientsdeletetemplaterecipients) | **DELETE** /v2.1/accounts/{accountId}/templates/{templateId}/recipients | Deletes recipients from a template.
[**recipientsGetTemplateRecipients**](TemplateRecipientsAPI.md#recipientsgettemplaterecipients) | **GET** /v2.1/accounts/{accountId}/templates/{templateId}/recipients | Gets recipient information from a template.
[**recipientsPostTemplateRecipients**](TemplateRecipientsAPI.md#recipientsposttemplaterecipients) | **POST** /v2.1/accounts/{accountId}/templates/{templateId}/recipients | Adds tabs for a recipient.
[**recipientsPutTemplateRecipients**](TemplateRecipientsAPI.md#recipientsputtemplaterecipients) | **PUT** /v2.1/accounts/{accountId}/templates/{templateId}/recipients | Updates recipients in a template.
[**viewsPostTemplateRecipientPreview**](TemplateRecipientsAPI.md#viewsposttemplaterecipientpreview) | **POST** /v2.1/accounts/{accountId}/templates/{templateId}/views/recipient_preview | Creates a template recipient preview.


# **recipientsDeleteTemplateRecipient**
```swift
    open class func recipientsDeleteTemplateRecipient(accountId: String, recipientId: String, templateId: String, templateRecipients: TemplateRecipients? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientsDeleteTemplateRecipient>
```

Deletes the specified recipient file from a template.

Deletes the specified recipient file from the specified template.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let recipientId = "recipientId_example" // String | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
let templateId = "templateId_example" // String | The id of the template.
let templateRecipients = TemplateRecipients(agents: [nil], carbonCopies: [nil], certifiedDeliveries: [nil], currentRoutingOrder: "currentRoutingOrder_example", editors: [nil], errorDetails: nil, inPersonSigners: [nil], intermediaries: [nil], notaries: [nil], recipientCount: "recipientCount_example", seals: [nil], signers: [nil], witnesses: [nil]) // TemplateRecipients |  (optional)

// Deletes the specified recipient file from a template.
TemplateRecipientsAPI.recipientsDeleteTemplateRecipient(accountId: accountId, recipientId: recipientId, templateId: templateId, templateRecipients: templateRecipients).whenComplete { result in
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
 **templateRecipients** | [**TemplateRecipients**](TemplateRecipients.md) |  | [optional] 

### Return type

#### RecipientsDeleteTemplateRecipient

```swift
public enum RecipientsDeleteTemplateRecipient {
    case http200(value: Recipients?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Recipients?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recipientsDeleteTemplateRecipients**
```swift
    open class func recipientsDeleteTemplateRecipients(accountId: String, templateId: String, templateRecipients: TemplateRecipients? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientsDeleteTemplateRecipients>
```

Deletes recipients from a template.

Deletes one or more recipients from a template. Recipients to be deleted are listed in the request, with the `recipientId` being used as the key for deleting recipients.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let templateId = "templateId_example" // String | The id of the template.
let templateRecipients = TemplateRecipients(agents: [nil], carbonCopies: [nil], certifiedDeliveries: [nil], currentRoutingOrder: "currentRoutingOrder_example", editors: [nil], errorDetails: nil, inPersonSigners: [nil], intermediaries: [nil], notaries: [nil], recipientCount: "recipientCount_example", seals: [nil], signers: [nil], witnesses: [nil]) // TemplateRecipients |  (optional)

// Deletes recipients from a template.
TemplateRecipientsAPI.recipientsDeleteTemplateRecipients(accountId: accountId, templateId: templateId, templateRecipients: templateRecipients).whenComplete { result in
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
 **templateId** | **String** | The id of the template. | 
 **templateRecipients** | [**TemplateRecipients**](TemplateRecipients.md) |  | [optional] 

### Return type

#### RecipientsDeleteTemplateRecipients

```swift
public enum RecipientsDeleteTemplateRecipients {
    case http200(value: Recipients?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Recipients?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recipientsGetTemplateRecipients**
```swift
    open class func recipientsGetTemplateRecipients(accountId: String, templateId: String, includeAnchorTabLocations: String? = nil, includeExtended: String? = nil, includeTabs: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientsGetTemplateRecipients>
```

Gets recipient information from a template.

Retrieves the information for all recipients in the specified template.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let templateId = "templateId_example" // String | The id of the template.
let includeAnchorTabLocations = "includeAnchorTabLocations_example" // String |  When set to **true** and `include_tabs` is set to **true**, all tabs with anchor tab properties are included in the response.  (optional)
let includeExtended = "includeExtended_example" // String |  When set to **true**, the extended properties are included in the response.  (optional)
let includeTabs = "includeTabs_example" // String | When set to **true**, the tab information associated with the recipient is included in the response. If you do not specify this parameter, the effect is the default behavior (**false**). (optional)

// Gets recipient information from a template.
TemplateRecipientsAPI.recipientsGetTemplateRecipients(accountId: accountId, templateId: templateId, includeAnchorTabLocations: includeAnchorTabLocations, includeExtended: includeExtended, includeTabs: includeTabs).whenComplete { result in
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
 **templateId** | **String** | The id of the template. | 
 **includeAnchorTabLocations** | **String** |  When set to **true** and &#x60;include_tabs&#x60; is set to **true**, all tabs with anchor tab properties are included in the response.  | [optional] 
 **includeExtended** | **String** |  When set to **true**, the extended properties are included in the response.  | [optional] 
 **includeTabs** | **String** | When set to **true**, the tab information associated with the recipient is included in the response. If you do not specify this parameter, the effect is the default behavior (**false**). | [optional] 

### Return type

#### RecipientsGetTemplateRecipients

```swift
public enum RecipientsGetTemplateRecipients {
    case http200(value: Recipients?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Recipients?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recipientsPostTemplateRecipients**
```swift
    open class func recipientsPostTemplateRecipients(accountId: String, templateId: String, resendEnvelope: String? = nil, templateRecipients: TemplateRecipients? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientsPostTemplateRecipients>
```

Adds tabs for a recipient.

Adds one or more recipients to a template.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let templateId = "templateId_example" // String | The id of the template.
let resendEnvelope = "resendEnvelope_example" // String | When set to **true**, resends the envelope to the recipients that you specify in the request body. You use this parameter to resend the envelope to a recipient who deleted the original email notification.  **Note**: Correcting an envelope is a different process. DocuSign always resends an envelope when you correct it, regardless of the value that you enter here. (optional)
let templateRecipients = TemplateRecipients(agents: [nil], carbonCopies: [nil], certifiedDeliveries: [nil], currentRoutingOrder: "currentRoutingOrder_example", editors: [nil], errorDetails: nil, inPersonSigners: [nil], intermediaries: [nil], notaries: [nil], recipientCount: "recipientCount_example", seals: [nil], signers: [nil], witnesses: [nil]) // TemplateRecipients |  (optional)

// Adds tabs for a recipient.
TemplateRecipientsAPI.recipientsPostTemplateRecipients(accountId: accountId, templateId: templateId, resendEnvelope: resendEnvelope, templateRecipients: templateRecipients).whenComplete { result in
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
 **templateId** | **String** | The id of the template. | 
 **resendEnvelope** | **String** | When set to **true**, resends the envelope to the recipients that you specify in the request body. You use this parameter to resend the envelope to a recipient who deleted the original email notification.  **Note**: Correcting an envelope is a different process. DocuSign always resends an envelope when you correct it, regardless of the value that you enter here. | [optional] 
 **templateRecipients** | [**TemplateRecipients**](TemplateRecipients.md) |  | [optional] 

### Return type

#### RecipientsPostTemplateRecipients

```swift
public enum RecipientsPostTemplateRecipients {
    case http201(value: Recipients?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Recipients?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **recipientsPutTemplateRecipients**
```swift
    open class func recipientsPutTemplateRecipients(accountId: String, templateId: String, resendEnvelope: String? = nil, templateRecipients: TemplateRecipients? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientsPutTemplateRecipients>
```

Updates recipients in a template.

Updates recipients in a template.   You can edit the following properties: `email`, `userName`, `routingOrder`, `faxNumber`, `deliveryMethod`, `accessCode`, and `requireIdLookup`.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let templateId = "templateId_example" // String | The id of the template.
let resendEnvelope = "resendEnvelope_example" // String | When set to **true**, resends the envelope to the recipients that you specify in the request body. You use this parameter to resend the envelope to a recipient who deleted the original email notification.  **Note**: Correcting an envelope is a different process. DocuSign always resends an envelope when you correct it, regardless of the value that you enter here. (optional)
let templateRecipients = TemplateRecipients(agents: [nil], carbonCopies: [nil], certifiedDeliveries: [nil], currentRoutingOrder: "currentRoutingOrder_example", editors: [nil], errorDetails: nil, inPersonSigners: [nil], intermediaries: [nil], notaries: [nil], recipientCount: "recipientCount_example", seals: [nil], signers: [nil], witnesses: [nil]) // TemplateRecipients |  (optional)

// Updates recipients in a template.
TemplateRecipientsAPI.recipientsPutTemplateRecipients(accountId: accountId, templateId: templateId, resendEnvelope: resendEnvelope, templateRecipients: templateRecipients).whenComplete { result in
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
 **templateId** | **String** | The id of the template. | 
 **resendEnvelope** | **String** | When set to **true**, resends the envelope to the recipients that you specify in the request body. You use this parameter to resend the envelope to a recipient who deleted the original email notification.  **Note**: Correcting an envelope is a different process. DocuSign always resends an envelope when you correct it, regardless of the value that you enter here. | [optional] 
 **templateRecipients** | [**TemplateRecipients**](TemplateRecipients.md) |  | [optional] 

### Return type

#### RecipientsPutTemplateRecipients

```swift
public enum RecipientsPutTemplateRecipients {
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

# **viewsPostTemplateRecipientPreview**
```swift
    open class func viewsPostTemplateRecipientPreview(accountId: String, templateId: String, recipientPreviewRequest: RecipientPreviewRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ViewsPostTemplateRecipientPreview>
```

Creates a template recipient preview.

This method returns a URL for a template recipient preview  in the DocuSign UI that you can embed in your application. You use this method to enable the sender to preview the recipients' experience.  For more information, see [Preview and Send](https://support.docusign.com/en/guides/ndse-user-guide-send-your-documents).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let templateId = "templateId_example" // String | The id of the template.
let recipientPreviewRequest = recipientPreviewRequest(assertionId: "assertionId_example", authenticationInstant: "authenticationInstant_example", authenticationMethod: "authenticationMethod_example", pingFrequency: "pingFrequency_example", pingUrl: "pingUrl_example", recipientId: "recipientId_example", returnUrl: "returnUrl_example", securityDomain: "securityDomain_example", xFrameOptions: "xFrameOptions_example", xFrameOptionsAllowFromUrl: "xFrameOptionsAllowFromUrl_example") // RecipientPreviewRequest |  (optional)

// Creates a template recipient preview.
TemplateRecipientsAPI.viewsPostTemplateRecipientPreview(accountId: accountId, templateId: templateId, recipientPreviewRequest: recipientPreviewRequest).whenComplete { result in
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
 **templateId** | **String** | The id of the template. | 
 **recipientPreviewRequest** | [**RecipientPreviewRequest**](RecipientPreviewRequest.md) |  | [optional] 

### Return type

#### ViewsPostTemplateRecipientPreview

```swift
public enum ViewsPostTemplateRecipientPreview {
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

