# IdentityVerificationsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accountIdentityVerificationGetAccountIdentityVerification**](IdentityVerificationsAPI.md#accountidentityverificationgetaccountidentityverification) | **GET** /v2.1/accounts/{accountId}/identity_verification | Retrieves the Identity Verification workflows available to an account.


# **accountIdentityVerificationGetAccountIdentityVerification**
```swift
    open class func accountIdentityVerificationGetAccountIdentityVerification(accountId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<AccountIdentityVerificationGetAccountIdentityVerification>
```

Retrieves the Identity Verification workflows available to an account.

This method returns a list of Identity Verification workflows that are available to an account.  **Note**: To use this method, you must either be an account administrator or a sender.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.

// Retrieves the Identity Verification workflows available to an account.
IdentityVerificationsAPI.accountIdentityVerificationGetAccountIdentityVerification(accountId: accountId).whenComplete { result in
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

#### AccountIdentityVerificationGetAccountIdentityVerification

```swift
public enum AccountIdentityVerificationGetAccountIdentityVerification {
    case http200(value: AccountIdentityVerificationResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: AccountIdentityVerificationResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

