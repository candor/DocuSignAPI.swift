# EnvelopeFormDataAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**formDataGetFormData**](EnvelopeFormDataAPI.md#formdatagetformdata) | **GET** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/form_data | Returns envelope form data for an existing envelope.


# **formDataGetFormData**
```swift
    open class func formDataGetFormData(accountId: String, envelopeId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<FormDataGetFormData>
```

Returns envelope form data for an existing envelope.

This method downloads the envelope and field data from any in-process, completed, or canceled envelope that you sent or that is shared with you. Recipients who are also full administrators on an account can view form data for any envelopes that another user on the account has sent to them.  **Note**: To use this feature, the Sending Setting \"Allow sender to download form data\" must be enabled for the account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 

// Returns envelope form data for an existing envelope.
EnvelopeFormDataAPI.formDataGetFormData(accountId: accountId, envelopeId: envelopeId).whenComplete { result in
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

#### FormDataGetFormData

```swift
public enum FormDataGetFormData {
    case http200(value: EnvelopeFormData?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeFormData?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

