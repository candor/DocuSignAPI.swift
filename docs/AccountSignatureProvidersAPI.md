# AccountSignatureProvidersAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accountSignatureProvidersGetSignatureProviders**](AccountSignatureProvidersAPI.md#accountsignatureprovidersgetsignatureproviders) | **GET** /v2.1/accounts/{accountId}/signatureProviders | Gets the available signature providers for an account.


# **accountSignatureProvidersGetSignatureProviders**
```swift
    open class func accountSignatureProvidersGetSignatureProviders(accountId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<AccountSignatureProvidersGetSignatureProviders>
```

Gets the available signature providers for an account.

Returns a list of signature providers that the specified account can use.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.

// Gets the available signature providers for an account.
AccountSignatureProvidersAPI.accountSignatureProvidersGetSignatureProviders(accountId: accountId).whenComplete { result in
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

#### AccountSignatureProvidersGetSignatureProviders

```swift
public enum AccountSignatureProvidersGetSignatureProviders {
    case http200(value: AccountSignatureProviders?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: AccountSignatureProviders?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

