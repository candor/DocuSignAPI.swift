# InvoicesAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**billingInvoicesGetBillingInvoice**](InvoicesAPI.md#billinginvoicesgetbillinginvoice) | **GET** /v2.1/accounts/{accountId}/billing_invoices/{invoiceId} | Retrieves a billing invoice.
[**billingInvoicesGetBillingInvoices**](InvoicesAPI.md#billinginvoicesgetbillinginvoices) | **GET** /v2.1/accounts/{accountId}/billing_invoices | Get a List of Billing Invoices
[**billingInvoicesGetBillingInvoicesPastDue**](InvoicesAPI.md#billinginvoicesgetbillinginvoicespastdue) | **GET** /v2.1/accounts/{accountId}/billing_invoices_past_due | Get a list of past due invoices.


# **billingInvoicesGetBillingInvoice**
```swift
    open class func billingInvoicesGetBillingInvoice(accountId: String, invoiceId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BillingInvoicesGetBillingInvoice>
```

Retrieves a billing invoice.

Retrieves the specified invoice.  **Note**: If the `pdfAvailable` property in the response is set to *true*, you can download a PDF version of the invoice. To download the PDF, make the call again and change the value of the `Accept` property in the header to `Accept: application/pdf`.  Privileges required: account administrator  The response returns a list of charges and information about the charges. Quantities are usually shown as 'unlimited' or an integer. Amounts are shown in the currency set for the account.  **Response** The following table provides a description of the different `chargeName` property values. The information will grow as more chargeable items are added to the system.  | chargeName | Description | | --- | --- | | id_check | ID Check Charge | | in_person_signing | In Person Signing charge | | envelopes Included | Sent Envelopes for the account | | age_verify | Age verification check | | ofac | OFAC Check | | id_confirm | ID confirmation check | | student_authentication | STAN PIN authentication check | | wet_sign_fax | Pages for returning signed documents by fax | | attachment_fax | Pages for returning attachments by fax | | phone_authentication | Phone authentication charge | | powerforms | PowerForm envelopes sent | | signer_payments | Payment processing charge | | outbound_fax | Send by fax charge | | bulk_recipient_envelopes | Bulk Recipient Envelopes sent | | sms_authentications | SMS authentication charge | | saml_authentications | SAML authentication charge | | express_signer_certificate | DocuSign Express Certificate charge | | personal_signer_certificate | Personal Signer Certificate charge | | safe_certificate | SAFE BioPharma Signer Certificate charge | | seats | Included active seats charge | | open_trust_certificate | OpenTrust Signer Certificate charge |

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let invoiceId = "invoiceId_example" // String | 

// Retrieves a billing invoice.
InvoicesAPI.billingInvoicesGetBillingInvoice(accountId: accountId, invoiceId: invoiceId).whenComplete { result in
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
 **invoiceId** | **String** |  | 

### Return type

#### BillingInvoicesGetBillingInvoice

```swift
public enum BillingInvoicesGetBillingInvoice {
    case http200(value: BillingInvoice?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: BillingInvoice?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingInvoicesGetBillingInvoices**
```swift
    open class func billingInvoicesGetBillingInvoices(accountId: String, fromDate: String? = nil, toDate: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BillingInvoicesGetBillingInvoices>
```

Get a List of Billing Invoices

Retrieves a list of invoices for the account. If the from date or to date queries are not specified, the response returns invoices for the last 365 days.  Privileges required: account administrator 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let fromDate = "fromDate_example" // String | Specifies the date/time of the earliest invoice in the account to retrieve. (optional)
let toDate = "toDate_example" // String | Specifies the date/time of the latest invoice in the account to retrieve. (optional)

// Get a List of Billing Invoices
InvoicesAPI.billingInvoicesGetBillingInvoices(accountId: accountId, fromDate: fromDate, toDate: toDate).whenComplete { result in
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
 **fromDate** | **String** | Specifies the date/time of the earliest invoice in the account to retrieve. | [optional] 
 **toDate** | **String** | Specifies the date/time of the latest invoice in the account to retrieve. | [optional] 

### Return type

#### BillingInvoicesGetBillingInvoices

```swift
public enum BillingInvoicesGetBillingInvoices {
    case http200(value: BillingInvoicesResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: BillingInvoicesResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingInvoicesGetBillingInvoicesPastDue**
```swift
    open class func billingInvoicesGetBillingInvoicesPastDue(accountId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BillingInvoicesGetBillingInvoicesPastDue>
```

Get a list of past due invoices.

Returns a list past due invoices for the account and notes if payment can be made through the REST API.   Privileges Required: account administrator

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.

// Get a list of past due invoices.
InvoicesAPI.billingInvoicesGetBillingInvoicesPastDue(accountId: accountId).whenComplete { result in
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

#### BillingInvoicesGetBillingInvoicesPastDue

```swift
public enum BillingInvoicesGetBillingInvoicesPastDue {
    case http200(value: BillingInvoicesSummary?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: BillingInvoicesSummary?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

