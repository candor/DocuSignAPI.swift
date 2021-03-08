# PaymentsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**billingPaymentsGetPayment**](PaymentsAPI.md#billingpaymentsgetpayment) | **GET** /v2.1/accounts/{accountId}/billing_payments/{paymentId} | Gets billing payment information for a specific payment.
[**billingPaymentsGetPaymentList**](PaymentsAPI.md#billingpaymentsgetpaymentlist) | **GET** /v2.1/accounts/{accountId}/billing_payments | Gets payment information for one or more payments.
[**billingPaymentsPostPayment**](PaymentsAPI.md#billingpaymentspostpayment) | **POST** /v2.1/accounts/{accountId}/billing_payments | Posts a payment to a past due invoice.


# **billingPaymentsGetPayment**
```swift
    open class func billingPaymentsGetPayment(accountId: String, paymentId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BillingPaymentsGetPayment>
```

Gets billing payment information for a specific payment.

Retrieves the information for a specified payment.   Privileges required: account administrator 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let paymentId = "paymentId_example" // String | 

// Gets billing payment information for a specific payment.
PaymentsAPI.billingPaymentsGetPayment(accountId: accountId, paymentId: paymentId).whenComplete { result in
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
 **paymentId** | **String** |  | 

### Return type

#### BillingPaymentsGetPayment

```swift
public enum BillingPaymentsGetPayment {
    case http200(value: BillingPaymentItem?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: BillingPaymentItem?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingPaymentsGetPaymentList**
```swift
    open class func billingPaymentsGetPaymentList(accountId: String, fromDate: String? = nil, toDate: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BillingPaymentsGetPaymentList>
```

Gets payment information for one or more payments.

Retrieves a list containing information about one or more payments. If the from date or to date queries are not used, the response returns payment information for the last 365 days.   Privileges required: account administrator 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let fromDate = "fromDate_example" // String | Specifies the date/time of the earliest payment in the account to retrieve. (optional)
let toDate = "toDate_example" // String | Specifies the date/time of the latest payment in the account to retrieve. (optional)

// Gets payment information for one or more payments.
PaymentsAPI.billingPaymentsGetPaymentList(accountId: accountId, fromDate: fromDate, toDate: toDate).whenComplete { result in
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
 **fromDate** | **String** | Specifies the date/time of the earliest payment in the account to retrieve. | [optional] 
 **toDate** | **String** | Specifies the date/time of the latest payment in the account to retrieve. | [optional] 

### Return type

#### BillingPaymentsGetPaymentList

```swift
public enum BillingPaymentsGetPaymentList {
    case http200(value: BillingPaymentsResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: BillingPaymentsResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingPaymentsPostPayment**
```swift
    open class func billingPaymentsPostPayment(accountId: String, billingPaymentRequest: BillingPaymentRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BillingPaymentsPostPayment>
```

Posts a payment to a past due invoice.

Posts a payment to a past due invoice.  This method can only be used if the `paymentAllowed` value for a past due invoice is true. This can be determined calling [Billing::listInvoicesPastDue](https://developers.docusign.com/esign-rest-api/reference/Billing/Invoices/listPastDue).  The response returns information for a single payment, if a payment ID was used in the endpoint, or a list of payments. If the from date or to date queries or payment ID are not used, the response returns payment information for the last 365 days. If the request was for a single payment ID, the `nextUri` and `previousUri` properties are not returned.  Privileges required: account administrator 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let billingPaymentRequest = billingPaymentRequest(paymentAmount: "paymentAmount_example") // BillingPaymentRequest |  (optional)

// Posts a payment to a past due invoice.
PaymentsAPI.billingPaymentsPostPayment(accountId: accountId, billingPaymentRequest: billingPaymentRequest).whenComplete { result in
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
 **billingPaymentRequest** | [**BillingPaymentRequest**](BillingPaymentRequest.md) |  | [optional] 

### Return type

#### BillingPaymentsPostPayment

```swift
public enum BillingPaymentsPostPayment {
    case http201(value: BillingPaymentResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: BillingPaymentResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

