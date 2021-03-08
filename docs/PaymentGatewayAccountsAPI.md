# PaymentGatewayAccountsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**paymentGatewayAccountsGetAllPaymentGatewayAccounts**](PaymentGatewayAccountsAPI.md#paymentgatewayaccountsgetallpaymentgatewayaccounts) | **GET** /v2.1/accounts/{accountId}/payment_gateway_accounts | List payment gateway accounts


# **paymentGatewayAccountsGetAllPaymentGatewayAccounts**
```swift
    open class func paymentGatewayAccountsGetAllPaymentGatewayAccounts(accountId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<PaymentGatewayAccountsGetAllPaymentGatewayAccounts>
```

List payment gateway accounts

This method returns a list of payment gateway accounts and basic information about them.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.

// List payment gateway accounts
PaymentGatewayAccountsAPI.paymentGatewayAccountsGetAllPaymentGatewayAccounts(accountId: accountId).whenComplete { result in
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

#### PaymentGatewayAccountsGetAllPaymentGatewayAccounts

```swift
public enum PaymentGatewayAccountsGetAllPaymentGatewayAccounts {
    case http200(value: PaymentGatewayAccountsInfo?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: PaymentGatewayAccountsInfo?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

