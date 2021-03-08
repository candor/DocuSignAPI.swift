# EnvelopeDocumentsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**documentsDeleteDocuments**](EnvelopeDocumentsAPI.md#documentsdeletedocuments) | **DELETE** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents | Deletes documents from a draft envelope.
[**documentsGetDocument**](EnvelopeDocumentsAPI.md#documentsgetdocument) | **GET** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId} | Gets a document from an envelope.
[**documentsGetDocuments**](EnvelopeDocumentsAPI.md#documentsgetdocuments) | **GET** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents | Gets a list of envelope documents.
[**documentsPutDocument**](EnvelopeDocumentsAPI.md#documentsputdocument) | **PUT** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId} | Adds a document to an existing draft envelope.
[**documentsPutDocuments**](EnvelopeDocumentsAPI.md#documentsputdocuments) | **PUT** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents | Adds one or more documents to an existing envelope document.


# **documentsDeleteDocuments**
```swift
    open class func documentsDeleteDocuments(accountId: String, envelopeId: String, envelopeDefinition: EnvelopeDefinition? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<DocumentsDeleteDocuments>
```

Deletes documents from a draft envelope.

Deletes one or more documents from an existing envelope that has not yet been completed.  To delete a document, use only the relevant parts of the [`envelopeDefinition`](#envelopeDefinition). For example, this request body specifies that you want to delete the document whose `documentId` is \"1\".   ```text {   \"documents\": [     {       \"documentId\": \"1\"     }   ] } ```  The envelope status must be one of:  - `created` - `sent` - `delivered`   

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let envelopeDefinition = envelopeDefinition(accessControlListBase64: "accessControlListBase64_example", accessibility: "accessibility_example", allowComments: "allowComments_example", allowMarkup: "allowMarkup_example", allowReassign: "allowReassign_example", allowRecipientRecursion: "allowRecipientRecursion_example", allowViewHistory: "allowViewHistory_example", anySigner: "anySigner_example", asynchronous: "asynchronous_example", attachments: [nil], attachmentsUri: "attachmentsUri_example", authoritativeCopy: "authoritativeCopy_example", authoritativeCopyDefault: "authoritativeCopyDefault_example", autoNavigation: "autoNavigation_example", brandId: "brandId_example", brandLock: "brandLock_example", certificateUri: "certificateUri_example", completedDateTime: "completedDateTime_example", compositeTemplates: [nil], copyRecipientData: "copyRecipientData_example", createdDateTime: "createdDateTime_example", customFields: nil, customFieldsUri: "customFieldsUri_example", declinedDateTime: "declinedDateTime_example", deletedDateTime: "deletedDateTime_example", deliveredDateTime: "deliveredDateTime_example", disableResponsiveDocument: "disableResponsiveDocument_example", documents: [nil], documentsCombinedUri: "documentsCombinedUri_example", documentsUri: "documentsUri_example", emailBlurb: "emailBlurb_example", emailSettings: nil, emailSubject: "emailSubject_example", enableWetSign: "enableWetSign_example", enforceSignerVisibility: "enforceSignerVisibility_example", envelopeAttachments: [nil], envelopeDocuments: [nil], envelopeId: "envelopeId_example", envelopeIdStamping: "envelopeIdStamping_example", envelopeLocation: "envelopeLocation_example", envelopeMetadata: nil, envelopeUri: "envelopeUri_example", eventNotification: nil, eventNotifications: [nil], expireAfter: "expireAfter_example", expireDateTime: "expireDateTime_example", expireEnabled: "expireEnabled_example", externalEnvelopeId: "externalEnvelopeId_example", folders: [nil], hasComments: "hasComments_example", hasFormDataChanged: "hasFormDataChanged_example", hasWavFile: "hasWavFile_example", holder: "holder_example", initialSentDateTime: "initialSentDateTime_example", is21CFRPart11: "is21CFRPart11_example", isDynamicEnvelope: "isDynamicEnvelope_example", isSignatureProviderEnvelope: "isSignatureProviderEnvelope_example", lastModifiedDateTime: "lastModifiedDateTime_example", location: "location_example", lockInformation: nil, messageLock: "messageLock_example", notification: nil, notificationUri: "notificationUri_example", password: "password_example", powerForm: nil, purgeCompletedDate: "purgeCompletedDate_example", purgeRequestDate: "purgeRequestDate_example", purgeState: "purgeState_example", recipients: nil, recipientsLock: "recipientsLock_example", recipientsUri: "recipientsUri_example", sender: nil, sentDateTime: "sentDateTime_example", signerCanSignOnMobile: "signerCanSignOnMobile_example", signingLocation: "signingLocation_example", status: "status_example", statusChangedDateTime: "statusChangedDateTime_example", statusDateTime: "statusDateTime_example", templateId: "templateId_example", templateRoles: [nil], templatesUri: "templatesUri_example", transactionId: "transactionId_example", useDisclosure: "useDisclosure_example", voidedDateTime: "voidedDateTime_example", voidedReason: "voidedReason_example", workflow: nil) // EnvelopeDefinition |  (optional)

// Deletes documents from a draft envelope.
EnvelopeDocumentsAPI.documentsDeleteDocuments(accountId: accountId, envelopeId: envelopeId, envelopeDefinition: envelopeDefinition).whenComplete { result in
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
 **envelopeDefinition** | [**EnvelopeDefinition**](EnvelopeDefinition.md) |  | [optional] 

### Return type

#### DocumentsDeleteDocuments

```swift
public enum DocumentsDeleteDocuments {
    case http200(value: EnvelopeDocumentsResult?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeDocumentsResult?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **documentsGetDocument**
```swift
    open class func documentsGetDocument(accountId: String, documentId: String, envelopeId: String, certificate: String? = nil, documentsByUserid: String? = nil, encoding: String? = nil, encrypt: String? = nil, language: String? = nil, recipientId: String? = nil, sharedUserId: String? = nil, showChanges: String? = nil, watermark: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<DocumentsGetDocument>
```

Gets a document from an envelope.

Retrieves the specified document from the envelope. If the account has the Highlight Data Changes feature enabled, there is an option to request that any changes in the envelope be highlighted.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | This parameter takes the following special keywords:  - `combined`: Retrieves a PDF file that contains the combined content of all of the documents. If the account option **Attach certification of completion to envelope** is on, then the Certificate of Completion is also included in the PDF file. You set this account option in the Admin tool on the **Signing Settings** screen, or by setting the `attachCompletedEnvelope` property in the `accountSettings` object to **true**. - `archive`: Retrieves a ZIP archive that contains all of the PDF documents and the Certificate of Completion. 
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let certificate = "certificate_example" // String | When set to **false**, the envelope signing certificate is removed from the download. (optional)
let documentsByUserid = "documentsByUserid_example" // String | When set to **true**, allows recipients to get documents by their user id. For example, if a user is included in two different routing orders with different visibilities, using this parameter returns all of the documents from both routing orders. (optional)
let encoding = "encoding_example" // String | Reserved for DocuSign. (optional)
let encrypt = "encrypt_example" // String | When set to **true**, the PDF bytes returned in the response are encrypted for all the key managers configured on your DocuSign account. You can decrypt the documents by using the Key Manager DecryptDocument API method. For more information about Key Manager, see the DocuSign Security Appliance Installation Guide that your organization received from DocuSign. (optional)
let language = "language_example" // String | Specifies the language for the Certificate of Completion in the response. The supported languages are: Chinese Simplified (zh_CN), Chinese Traditional (zh_TW), Dutch (nl), English US (en), French (fr), German (de), Italian (it), Japanese (ja), Korean (ko), Portuguese (pt), Portuguese (Brazil) (pt_BR), Russian (ru), Spanish (es).  (optional)
let recipientId = "recipientId_example" // String | Allows the sender to retrieve the documents as one of the recipients that they control. The `documents_by_userid` parameter must be set to **false** for this functionality to work. (optional)
let sharedUserId = "sharedUserId_example" // String | The ID of a shared user that you want to impersonate in order to retrieve their view of the list of documents. This parameter is used in the context of a shared inbox (i.e., when you share envelopes from one user to another through the RADmin console). (optional)
let showChanges = "showChanges_example" // String | When set to **true**, any changed fields for the returned PDF are highlighted in yellow and optional signatures or initials outlined in red.  (optional)
let watermark = "watermark_example" // String | When set to **true**, the account has the watermark feature enabled, and the envelope is not complete, then the watermark for the account is added to the PDF documents. This option can remove the watermark.  (optional)

// Gets a document from an envelope.
EnvelopeDocumentsAPI.documentsGetDocument(accountId: accountId, documentId: documentId, envelopeId: envelopeId, certificate: certificate, documentsByUserid: documentsByUserid, encoding: encoding, encrypt: encrypt, language: language, recipientId: recipientId, sharedUserId: sharedUserId, showChanges: showChanges, watermark: watermark).whenComplete { result in
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
 **documentId** | **String** | This parameter takes the following special keywords:  - &#x60;combined&#x60;: Retrieves a PDF file that contains the combined content of all of the documents. If the account option **Attach certification of completion to envelope** is on, then the Certificate of Completion is also included in the PDF file. You set this account option in the Admin tool on the **Signing Settings** screen, or by setting the &#x60;attachCompletedEnvelope&#x60; property in the &#x60;accountSettings&#x60; object to **true**. - &#x60;archive&#x60;: Retrieves a ZIP archive that contains all of the PDF documents and the Certificate of Completion.  | 
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **certificate** | **String** | When set to **false**, the envelope signing certificate is removed from the download. | [optional] 
 **documentsByUserid** | **String** | When set to **true**, allows recipients to get documents by their user id. For example, if a user is included in two different routing orders with different visibilities, using this parameter returns all of the documents from both routing orders. | [optional] 
 **encoding** | **String** | Reserved for DocuSign. | [optional] 
 **encrypt** | **String** | When set to **true**, the PDF bytes returned in the response are encrypted for all the key managers configured on your DocuSign account. You can decrypt the documents by using the Key Manager DecryptDocument API method. For more information about Key Manager, see the DocuSign Security Appliance Installation Guide that your organization received from DocuSign. | [optional] 
 **language** | **String** | Specifies the language for the Certificate of Completion in the response. The supported languages are: Chinese Simplified (zh_CN), Chinese Traditional (zh_TW), Dutch (nl), English US (en), French (fr), German (de), Italian (it), Japanese (ja), Korean (ko), Portuguese (pt), Portuguese (Brazil) (pt_BR), Russian (ru), Spanish (es).  | [optional] 
 **recipientId** | **String** | Allows the sender to retrieve the documents as one of the recipients that they control. The &#x60;documents_by_userid&#x60; parameter must be set to **false** for this functionality to work. | [optional] 
 **sharedUserId** | **String** | The ID of a shared user that you want to impersonate in order to retrieve their view of the list of documents. This parameter is used in the context of a shared inbox (i.e., when you share envelopes from one user to another through the RADmin console). | [optional] 
 **showChanges** | **String** | When set to **true**, any changed fields for the returned PDF are highlighted in yellow and optional signatures or initials outlined in red.  | [optional] 
 **watermark** | **String** | When set to **true**, the account has the watermark feature enabled, and the envelope is not complete, then the watermark for the account is added to the PDF documents. This option can remove the watermark.  | [optional] 

### Return type

#### DocumentsGetDocument

```swift
public enum DocumentsGetDocument {
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

# **documentsGetDocuments**
```swift
    open class func documentsGetDocuments(accountId: String, envelopeId: String, documentsByUserid: String? = nil, includeDocumentSize: String? = nil, includeMetadata: String? = nil, includeTabs: String? = nil, recipientId: String? = nil, sharedUserId: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<DocumentsGetDocuments>
```

Gets a list of envelope documents.

Retrieves a list of documents associated with the specified envelope.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let documentsByUserid = "documentsByUserid_example" // String | When set to **true**, allows recipients to get documents by their user id. For example, if a user is included in two different routing orders with different visibilities, using this parameter returns all of the documents from both routing orders. (optional)
let includeDocumentSize = "includeDocumentSize_example" // String |  (optional)
let includeMetadata = "includeMetadata_example" // String | When set to **true**, the response includes metadata that indicates which properties the sender can edit. (optional)
let includeTabs = "includeTabs_example" // String | When set to **true**, information about the tabs associated with the documents are included in the response. (optional)
let recipientId = "recipientId_example" // String | Allows the sender to retrieve the documents as one of the recipients that they control. The `documents_by_userid` parameter must be set to **false** for this to work. (optional)
let sharedUserId = "sharedUserId_example" // String | The ID of a shared user that you want to impersonate in order to retrieve their view of the list of documents. This parameter is used in the context of a shared inbox (i.e., when you share envelopes from one user to another through the RADmin console). (optional)

// Gets a list of envelope documents.
EnvelopeDocumentsAPI.documentsGetDocuments(accountId: accountId, envelopeId: envelopeId, documentsByUserid: documentsByUserid, includeDocumentSize: includeDocumentSize, includeMetadata: includeMetadata, includeTabs: includeTabs, recipientId: recipientId, sharedUserId: sharedUserId).whenComplete { result in
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
 **documentsByUserid** | **String** | When set to **true**, allows recipients to get documents by their user id. For example, if a user is included in two different routing orders with different visibilities, using this parameter returns all of the documents from both routing orders. | [optional] 
 **includeDocumentSize** | **String** |  | [optional] 
 **includeMetadata** | **String** | When set to **true**, the response includes metadata that indicates which properties the sender can edit. | [optional] 
 **includeTabs** | **String** | When set to **true**, information about the tabs associated with the documents are included in the response. | [optional] 
 **recipientId** | **String** | Allows the sender to retrieve the documents as one of the recipients that they control. The &#x60;documents_by_userid&#x60; parameter must be set to **false** for this to work. | [optional] 
 **sharedUserId** | **String** | The ID of a shared user that you want to impersonate in order to retrieve their view of the list of documents. This parameter is used in the context of a shared inbox (i.e., when you share envelopes from one user to another through the RADmin console). | [optional] 

### Return type

#### DocumentsGetDocuments

```swift
public enum DocumentsGetDocuments {
    case http200(value: EnvelopeDocumentsResult?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeDocumentsResult?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **documentsPutDocument**
```swift
    open class func documentsPutDocument(accountId: String, documentId: String, envelopeId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<DocumentsPutDocument>
```

Adds a document to an existing draft envelope.

Adds a document to an existing draft envelope. The bytes of the document make up the body of the request.     **Note**: When adding or modifying documents for an in-process envelope, DocuSign recommends locking the envelope prior to making any changes.     If the file name of the document contains unicode characters, you need to include a `Content-Disposition` header. Example:   **Header**: `Content-Disposition`   **Value**: `file; filename=\\\"name\\\";fileExtension=ext;documentId=1` 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 

// Adds a document to an existing draft envelope.
EnvelopeDocumentsAPI.documentsPutDocument(accountId: accountId, documentId: documentId, envelopeId: envelopeId).whenComplete { result in
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
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 

### Return type

#### DocumentsPutDocument

```swift
public enum DocumentsPutDocument {
    case http200(value: EnvelopeDocument?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeDocument?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **documentsPutDocuments**
```swift
    open class func documentsPutDocuments(accountId: String, envelopeId: String, envelopeDefinition: EnvelopeDefinition? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<DocumentsPutDocuments>
```

Adds one or more documents to an existing envelope document.

Adds one or more documents to an existing envelope document. <p>**Note**: When adding or modifying documents for an in-process envelope, DocuSign recommends locking the envelope prior to making any changes.  If the file name of a document contains unicode characters, you need to include a `Content-Disposition` header. Example:   **Header**: `Content-Disposition`   **Value**: `file; filename=\\\"name\\\";fileExtension=ext;documentId=1`

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let envelopeDefinition = envelopeDefinition(accessControlListBase64: "accessControlListBase64_example", accessibility: "accessibility_example", allowComments: "allowComments_example", allowMarkup: "allowMarkup_example", allowReassign: "allowReassign_example", allowRecipientRecursion: "allowRecipientRecursion_example", allowViewHistory: "allowViewHistory_example", anySigner: "anySigner_example", asynchronous: "asynchronous_example", attachments: [nil], attachmentsUri: "attachmentsUri_example", authoritativeCopy: "authoritativeCopy_example", authoritativeCopyDefault: "authoritativeCopyDefault_example", autoNavigation: "autoNavigation_example", brandId: "brandId_example", brandLock: "brandLock_example", certificateUri: "certificateUri_example", completedDateTime: "completedDateTime_example", compositeTemplates: [nil], copyRecipientData: "copyRecipientData_example", createdDateTime: "createdDateTime_example", customFields: nil, customFieldsUri: "customFieldsUri_example", declinedDateTime: "declinedDateTime_example", deletedDateTime: "deletedDateTime_example", deliveredDateTime: "deliveredDateTime_example", disableResponsiveDocument: "disableResponsiveDocument_example", documents: [nil], documentsCombinedUri: "documentsCombinedUri_example", documentsUri: "documentsUri_example", emailBlurb: "emailBlurb_example", emailSettings: nil, emailSubject: "emailSubject_example", enableWetSign: "enableWetSign_example", enforceSignerVisibility: "enforceSignerVisibility_example", envelopeAttachments: [nil], envelopeDocuments: [nil], envelopeId: "envelopeId_example", envelopeIdStamping: "envelopeIdStamping_example", envelopeLocation: "envelopeLocation_example", envelopeMetadata: nil, envelopeUri: "envelopeUri_example", eventNotification: nil, eventNotifications: [nil], expireAfter: "expireAfter_example", expireDateTime: "expireDateTime_example", expireEnabled: "expireEnabled_example", externalEnvelopeId: "externalEnvelopeId_example", folders: [nil], hasComments: "hasComments_example", hasFormDataChanged: "hasFormDataChanged_example", hasWavFile: "hasWavFile_example", holder: "holder_example", initialSentDateTime: "initialSentDateTime_example", is21CFRPart11: "is21CFRPart11_example", isDynamicEnvelope: "isDynamicEnvelope_example", isSignatureProviderEnvelope: "isSignatureProviderEnvelope_example", lastModifiedDateTime: "lastModifiedDateTime_example", location: "location_example", lockInformation: nil, messageLock: "messageLock_example", notification: nil, notificationUri: "notificationUri_example", password: "password_example", powerForm: nil, purgeCompletedDate: "purgeCompletedDate_example", purgeRequestDate: "purgeRequestDate_example", purgeState: "purgeState_example", recipients: nil, recipientsLock: "recipientsLock_example", recipientsUri: "recipientsUri_example", sender: nil, sentDateTime: "sentDateTime_example", signerCanSignOnMobile: "signerCanSignOnMobile_example", signingLocation: "signingLocation_example", status: "status_example", statusChangedDateTime: "statusChangedDateTime_example", statusDateTime: "statusDateTime_example", templateId: "templateId_example", templateRoles: [nil], templatesUri: "templatesUri_example", transactionId: "transactionId_example", useDisclosure: "useDisclosure_example", voidedDateTime: "voidedDateTime_example", voidedReason: "voidedReason_example", workflow: nil) // EnvelopeDefinition |  (optional)

// Adds one or more documents to an existing envelope document.
EnvelopeDocumentsAPI.documentsPutDocuments(accountId: accountId, envelopeId: envelopeId, envelopeDefinition: envelopeDefinition).whenComplete { result in
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
 **envelopeDefinition** | [**EnvelopeDefinition**](EnvelopeDefinition.md) |  | [optional] 

### Return type

#### DocumentsPutDocuments

```swift
public enum DocumentsPutDocuments {
    case http200(value: EnvelopeDocumentsResult?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeDocumentsResult?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

