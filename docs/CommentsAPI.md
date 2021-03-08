# CommentsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**commentsGetCommentsTranscript**](CommentsAPI.md#commentsgetcommentstranscript) | **GET** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/comments/transcript | Gets a PDF transcript of all of the comments in an envelope.


# **commentsGetCommentsTranscript**
```swift
    open class func commentsGetCommentsTranscript(accountId: String, envelopeId: String, encoding: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<CommentsGetCommentsTranscript>
```

Gets a PDF transcript of all of the comments in an envelope.

Retrieves a PDF file containing all of the comments that senders and recipients have added to the documents in an envelope.  **Note**: Comments are disabled by default. To use the comments feature, an account administrator must enable comments on the account (in the `accountSettingsInformation` object, set the `enableSigningExtensionComments` property to **true**). 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let encoding = "encoding_example" // String | (Optional) The encoding to use for the file. (optional)

// Gets a PDF transcript of all of the comments in an envelope.
CommentsAPI.commentsGetCommentsTranscript(accountId: accountId, envelopeId: envelopeId, encoding: encoding).whenComplete { result in
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
 **encoding** | **String** | (Optional) The encoding to use for the file. | [optional] 

### Return type

#### CommentsGetCommentsTranscript

```swift
public enum CommentsGetCommentsTranscript {
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

