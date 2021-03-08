# TemplateDocumentsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**documentsDeleteTemplateDocuments**](TemplateDocumentsAPI.md#documentsdeletetemplatedocuments) | **DELETE** /v2.1/accounts/{accountId}/templates/{templateId}/documents | Deletes documents from a template.
[**documentsGetTemplateDocument**](TemplateDocumentsAPI.md#documentsgettemplatedocument) | **GET** /v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId} | Gets PDF documents from a template.
[**documentsGetTemplateDocuments**](TemplateDocumentsAPI.md#documentsgettemplatedocuments) | **GET** /v2.1/accounts/{accountId}/templates/{templateId}/documents | Gets a list of documents associated with a template.
[**documentsPutTemplateDocument**](TemplateDocumentsAPI.md#documentsputtemplatedocument) | **PUT** /v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId} | Updates a template document.
[**documentsPutTemplateDocuments**](TemplateDocumentsAPI.md#documentsputtemplatedocuments) | **PUT** /v2.1/accounts/{accountId}/templates/{templateId}/documents | Adds documents to a template document.


# **documentsDeleteTemplateDocuments**
```swift
    open class func documentsDeleteTemplateDocuments(accountId: String, templateId: String, envelopeDefinition: EnvelopeDefinition? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<DocumentsDeleteTemplateDocuments>
```

Deletes documents from a template.

This method deletes one or more documents from an existing template.  To delete a document, use only the relevant parts of the [`envelopeDefinition`](#envelopeDefinition). For example, this request body specifies that you want to delete the document whose `documentId` is \"1\".   ```text {   \"documents\": [     {       \"documentId\": \"1\"     }   ] } ```

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let templateId = "templateId_example" // String | The id of the template.
let envelopeDefinition = envelopeDefinition(accessControlListBase64: "accessControlListBase64_example", accessibility: "accessibility_example", allowComments: "allowComments_example", allowMarkup: "allowMarkup_example", allowReassign: "allowReassign_example", allowRecipientRecursion: "allowRecipientRecursion_example", allowViewHistory: "allowViewHistory_example", anySigner: "anySigner_example", asynchronous: "asynchronous_example", attachments: [nil], attachmentsUri: "attachmentsUri_example", authoritativeCopy: "authoritativeCopy_example", authoritativeCopyDefault: "authoritativeCopyDefault_example", autoNavigation: "autoNavigation_example", brandId: "brandId_example", brandLock: "brandLock_example", certificateUri: "certificateUri_example", completedDateTime: "completedDateTime_example", compositeTemplates: [nil], copyRecipientData: "copyRecipientData_example", createdDateTime: "createdDateTime_example", customFields: nil, customFieldsUri: "customFieldsUri_example", declinedDateTime: "declinedDateTime_example", deletedDateTime: "deletedDateTime_example", deliveredDateTime: "deliveredDateTime_example", disableResponsiveDocument: "disableResponsiveDocument_example", documents: [nil], documentsCombinedUri: "documentsCombinedUri_example", documentsUri: "documentsUri_example", emailBlurb: "emailBlurb_example", emailSettings: nil, emailSubject: "emailSubject_example", enableWetSign: "enableWetSign_example", enforceSignerVisibility: "enforceSignerVisibility_example", envelopeAttachments: [nil], envelopeDocuments: [nil], envelopeId: "envelopeId_example", envelopeIdStamping: "envelopeIdStamping_example", envelopeLocation: "envelopeLocation_example", envelopeMetadata: nil, envelopeUri: "envelopeUri_example", eventNotification: nil, eventNotifications: [nil], expireAfter: "expireAfter_example", expireDateTime: "expireDateTime_example", expireEnabled: "expireEnabled_example", externalEnvelopeId: "externalEnvelopeId_example", folders: [nil], hasComments: "hasComments_example", hasFormDataChanged: "hasFormDataChanged_example", hasWavFile: "hasWavFile_example", holder: "holder_example", initialSentDateTime: "initialSentDateTime_example", is21CFRPart11: "is21CFRPart11_example", isDynamicEnvelope: "isDynamicEnvelope_example", isSignatureProviderEnvelope: "isSignatureProviderEnvelope_example", lastModifiedDateTime: "lastModifiedDateTime_example", location: "location_example", lockInformation: nil, messageLock: "messageLock_example", notification: nil, notificationUri: "notificationUri_example", password: "password_example", powerForm: nil, purgeCompletedDate: "purgeCompletedDate_example", purgeRequestDate: "purgeRequestDate_example", purgeState: "purgeState_example", recipients: nil, recipientsLock: "recipientsLock_example", recipientsUri: "recipientsUri_example", sender: nil, sentDateTime: "sentDateTime_example", signerCanSignOnMobile: "signerCanSignOnMobile_example", signingLocation: "signingLocation_example", status: "status_example", statusChangedDateTime: "statusChangedDateTime_example", statusDateTime: "statusDateTime_example", templateId: "templateId_example", templateRoles: [nil], templatesUri: "templatesUri_example", transactionId: "transactionId_example", useDisclosure: "useDisclosure_example", voidedDateTime: "voidedDateTime_example", voidedReason: "voidedReason_example", workflow: nil) // EnvelopeDefinition |  (optional)

// Deletes documents from a template.
TemplateDocumentsAPI.documentsDeleteTemplateDocuments(accountId: accountId, templateId: templateId, envelopeDefinition: envelopeDefinition).whenComplete { result in
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
 **envelopeDefinition** | [**EnvelopeDefinition**](EnvelopeDefinition.md) |  | [optional] 

### Return type

#### DocumentsDeleteTemplateDocuments

```swift
public enum DocumentsDeleteTemplateDocuments {
    case http200(value: TemplateDocumentsResult?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: TemplateDocumentsResult?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **documentsGetTemplateDocument**
```swift
    open class func documentsGetTemplateDocument(accountId: String, documentId: String, templateId: String, encrypt: String? = nil, showChanges: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<DocumentsGetTemplateDocument>
```

Gets PDF documents from a template.

This method retrieves one or more PDF documents from the template that you specify.  You can specify the ID of the document to retrieve, or pass in the value `combined` to retrieve all documents in the template as a single PDF file.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
let templateId = "templateId_example" // String | The id of the template.
let encrypt = "encrypt_example" // String | When set to **true**, the PDF bytes returned in the response are encrypted for all the key managers configured on your DocuSign account. You can decrypt the documents by using the Key Manager DecryptDocument API method. For more information about Key Manager, see the DocuSign Security Appliance Installation Guide that your organization received from DocuSign. (optional)
let showChanges = "showChanges_example" // String | When set to **true**, any document fields that a recipient changed are highlighted in yellow in the returned PDF document, and optional signatures or initials are outlined in red. (optional)

// Gets PDF documents from a template.
TemplateDocumentsAPI.documentsGetTemplateDocument(accountId: accountId, documentId: documentId, templateId: templateId, encrypt: encrypt, showChanges: showChanges).whenComplete { result in
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
 **encrypt** | **String** | When set to **true**, the PDF bytes returned in the response are encrypted for all the key managers configured on your DocuSign account. You can decrypt the documents by using the Key Manager DecryptDocument API method. For more information about Key Manager, see the DocuSign Security Appliance Installation Guide that your organization received from DocuSign. | [optional] 
 **showChanges** | **String** | When set to **true**, any document fields that a recipient changed are highlighted in yellow in the returned PDF document, and optional signatures or initials are outlined in red. | [optional] 

### Return type

#### DocumentsGetTemplateDocument

```swift
public enum DocumentsGetTemplateDocument {
    case http200(value: Data?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Data?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/pdf

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **documentsGetTemplateDocuments**
```swift
    open class func documentsGetTemplateDocuments(accountId: String, templateId: String, includeTabs: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<DocumentsGetTemplateDocuments>
```

Gets a list of documents associated with a template.

Retrieves a list of documents associated with the specified template.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let templateId = "templateId_example" // String | The id of the template.
let includeTabs = "includeTabs_example" // String | Reserved for DocuSign. (optional)

// Gets a list of documents associated with a template.
TemplateDocumentsAPI.documentsGetTemplateDocuments(accountId: accountId, templateId: templateId, includeTabs: includeTabs).whenComplete { result in
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
 **includeTabs** | **String** | Reserved for DocuSign. | [optional] 

### Return type

#### DocumentsGetTemplateDocuments

```swift
public enum DocumentsGetTemplateDocuments {
    case http200(value: TemplateDocumentsResult?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: TemplateDocumentsResult?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **documentsPutTemplateDocument**
```swift
    open class func documentsPutTemplateDocument(accountId: String, documentId: String, templateId: String, isEnvelopeDefinition: String? = nil, envelopeDefinition: EnvelopeDefinition? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<DocumentsPutTemplateDocument>
```

Updates a template document.

This methods updates an existing template document.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
let templateId = "templateId_example" // String | The id of the template.
let isEnvelopeDefinition = "isEnvelopeDefinition_example" // String |  (optional)
let envelopeDefinition = envelopeDefinition(accessControlListBase64: "accessControlListBase64_example", accessibility: "accessibility_example", allowComments: "allowComments_example", allowMarkup: "allowMarkup_example", allowReassign: "allowReassign_example", allowRecipientRecursion: "allowRecipientRecursion_example", allowViewHistory: "allowViewHistory_example", anySigner: "anySigner_example", asynchronous: "asynchronous_example", attachments: [nil], attachmentsUri: "attachmentsUri_example", authoritativeCopy: "authoritativeCopy_example", authoritativeCopyDefault: "authoritativeCopyDefault_example", autoNavigation: "autoNavigation_example", brandId: "brandId_example", brandLock: "brandLock_example", certificateUri: "certificateUri_example", completedDateTime: "completedDateTime_example", compositeTemplates: [nil], copyRecipientData: "copyRecipientData_example", createdDateTime: "createdDateTime_example", customFields: nil, customFieldsUri: "customFieldsUri_example", declinedDateTime: "declinedDateTime_example", deletedDateTime: "deletedDateTime_example", deliveredDateTime: "deliveredDateTime_example", disableResponsiveDocument: "disableResponsiveDocument_example", documents: [nil], documentsCombinedUri: "documentsCombinedUri_example", documentsUri: "documentsUri_example", emailBlurb: "emailBlurb_example", emailSettings: nil, emailSubject: "emailSubject_example", enableWetSign: "enableWetSign_example", enforceSignerVisibility: "enforceSignerVisibility_example", envelopeAttachments: [nil], envelopeDocuments: [nil], envelopeId: "envelopeId_example", envelopeIdStamping: "envelopeIdStamping_example", envelopeLocation: "envelopeLocation_example", envelopeMetadata: nil, envelopeUri: "envelopeUri_example", eventNotification: nil, eventNotifications: [nil], expireAfter: "expireAfter_example", expireDateTime: "expireDateTime_example", expireEnabled: "expireEnabled_example", externalEnvelopeId: "externalEnvelopeId_example", folders: [nil], hasComments: "hasComments_example", hasFormDataChanged: "hasFormDataChanged_example", hasWavFile: "hasWavFile_example", holder: "holder_example", initialSentDateTime: "initialSentDateTime_example", is21CFRPart11: "is21CFRPart11_example", isDynamicEnvelope: "isDynamicEnvelope_example", isSignatureProviderEnvelope: "isSignatureProviderEnvelope_example", lastModifiedDateTime: "lastModifiedDateTime_example", location: "location_example", lockInformation: nil, messageLock: "messageLock_example", notification: nil, notificationUri: "notificationUri_example", password: "password_example", powerForm: nil, purgeCompletedDate: "purgeCompletedDate_example", purgeRequestDate: "purgeRequestDate_example", purgeState: "purgeState_example", recipients: nil, recipientsLock: "recipientsLock_example", recipientsUri: "recipientsUri_example", sender: nil, sentDateTime: "sentDateTime_example", signerCanSignOnMobile: "signerCanSignOnMobile_example", signingLocation: "signingLocation_example", status: "status_example", statusChangedDateTime: "statusChangedDateTime_example", statusDateTime: "statusDateTime_example", templateId: "templateId_example", templateRoles: [nil], templatesUri: "templatesUri_example", transactionId: "transactionId_example", useDisclosure: "useDisclosure_example", voidedDateTime: "voidedDateTime_example", voidedReason: "voidedReason_example", workflow: nil) // EnvelopeDefinition |  (optional)

// Updates a template document.
TemplateDocumentsAPI.documentsPutTemplateDocument(accountId: accountId, documentId: documentId, templateId: templateId, isEnvelopeDefinition: isEnvelopeDefinition, envelopeDefinition: envelopeDefinition).whenComplete { result in
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
 **isEnvelopeDefinition** | **String** |  | [optional] 
 **envelopeDefinition** | [**EnvelopeDefinition**](EnvelopeDefinition.md) |  | [optional] 

### Return type

#### DocumentsPutTemplateDocument

```swift
public enum DocumentsPutTemplateDocument {
    case http200(value: EnvelopeDocument?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeDocument?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **documentsPutTemplateDocuments**
```swift
    open class func documentsPutTemplateDocuments(accountId: String, templateId: String, envelopeDefinition: EnvelopeDefinition? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<DocumentsPutTemplateDocuments>
```

Adds documents to a template document.

Adds one or more documents to an existing template document.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let templateId = "templateId_example" // String | The id of the template.
let envelopeDefinition = envelopeDefinition(accessControlListBase64: "accessControlListBase64_example", accessibility: "accessibility_example", allowComments: "allowComments_example", allowMarkup: "allowMarkup_example", allowReassign: "allowReassign_example", allowRecipientRecursion: "allowRecipientRecursion_example", allowViewHistory: "allowViewHistory_example", anySigner: "anySigner_example", asynchronous: "asynchronous_example", attachments: [nil], attachmentsUri: "attachmentsUri_example", authoritativeCopy: "authoritativeCopy_example", authoritativeCopyDefault: "authoritativeCopyDefault_example", autoNavigation: "autoNavigation_example", brandId: "brandId_example", brandLock: "brandLock_example", certificateUri: "certificateUri_example", completedDateTime: "completedDateTime_example", compositeTemplates: [nil], copyRecipientData: "copyRecipientData_example", createdDateTime: "createdDateTime_example", customFields: nil, customFieldsUri: "customFieldsUri_example", declinedDateTime: "declinedDateTime_example", deletedDateTime: "deletedDateTime_example", deliveredDateTime: "deliveredDateTime_example", disableResponsiveDocument: "disableResponsiveDocument_example", documents: [nil], documentsCombinedUri: "documentsCombinedUri_example", documentsUri: "documentsUri_example", emailBlurb: "emailBlurb_example", emailSettings: nil, emailSubject: "emailSubject_example", enableWetSign: "enableWetSign_example", enforceSignerVisibility: "enforceSignerVisibility_example", envelopeAttachments: [nil], envelopeDocuments: [nil], envelopeId: "envelopeId_example", envelopeIdStamping: "envelopeIdStamping_example", envelopeLocation: "envelopeLocation_example", envelopeMetadata: nil, envelopeUri: "envelopeUri_example", eventNotification: nil, eventNotifications: [nil], expireAfter: "expireAfter_example", expireDateTime: "expireDateTime_example", expireEnabled: "expireEnabled_example", externalEnvelopeId: "externalEnvelopeId_example", folders: [nil], hasComments: "hasComments_example", hasFormDataChanged: "hasFormDataChanged_example", hasWavFile: "hasWavFile_example", holder: "holder_example", initialSentDateTime: "initialSentDateTime_example", is21CFRPart11: "is21CFRPart11_example", isDynamicEnvelope: "isDynamicEnvelope_example", isSignatureProviderEnvelope: "isSignatureProviderEnvelope_example", lastModifiedDateTime: "lastModifiedDateTime_example", location: "location_example", lockInformation: nil, messageLock: "messageLock_example", notification: nil, notificationUri: "notificationUri_example", password: "password_example", powerForm: nil, purgeCompletedDate: "purgeCompletedDate_example", purgeRequestDate: "purgeRequestDate_example", purgeState: "purgeState_example", recipients: nil, recipientsLock: "recipientsLock_example", recipientsUri: "recipientsUri_example", sender: nil, sentDateTime: "sentDateTime_example", signerCanSignOnMobile: "signerCanSignOnMobile_example", signingLocation: "signingLocation_example", status: "status_example", statusChangedDateTime: "statusChangedDateTime_example", statusDateTime: "statusDateTime_example", templateId: "templateId_example", templateRoles: [nil], templatesUri: "templatesUri_example", transactionId: "transactionId_example", useDisclosure: "useDisclosure_example", voidedDateTime: "voidedDateTime_example", voidedReason: "voidedReason_example", workflow: nil) // EnvelopeDefinition |  (optional)

// Adds documents to a template document.
TemplateDocumentsAPI.documentsPutTemplateDocuments(accountId: accountId, templateId: templateId, envelopeDefinition: envelopeDefinition).whenComplete { result in
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
 **envelopeDefinition** | [**EnvelopeDefinition**](EnvelopeDefinition.md) |  | [optional] 

### Return type

#### DocumentsPutTemplateDocuments

```swift
public enum DocumentsPutTemplateDocuments {
    case http200(value: TemplateDocumentsResult?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: TemplateDocumentsResult?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

