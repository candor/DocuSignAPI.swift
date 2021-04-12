# BillingPlansAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**billingPlanGetBillingPlan**](BillingPlansAPI.md#billingplangetbillingplan) | **GET** /v2.1/accounts/{accountId}/billing_plan | Get Account Billing Plan
[**billingPlanGetCreditCardInfo**](BillingPlansAPI.md#billingplangetcreditcardinfo) | **GET** /v2.1/accounts/{accountId}/billing_plan/credit_card | Get credit card information
[**billingPlanGetDowngradeRequestBillingInfo**](BillingPlansAPI.md#billingplangetdowngraderequestbillinginfo) | **GET** /v2.1/accounts/{accountId}/billing_plan/downgrade | 
[**billingPlanPutBillingPlan**](BillingPlansAPI.md#billingplanputbillingplan) | **PUT** /v2.1/accounts/{accountId}/billing_plan | Updates an account billing plan.
[**billingPlanPutDowngradeAccountBillingPlan**](BillingPlansAPI.md#billingplanputdowngradeaccountbillingplan) | **PUT** /v2.1/accounts/{accountId}/billing_plan/downgrade | 
[**billingPlansGetBillingPlan**](BillingPlansAPI.md#billingplansgetbillingplan) | **GET** /v2.1/billing_plans/{billingPlanId} | Gets billing plan details.
[**billingPlansGetBillingPlans**](BillingPlansAPI.md#billingplansgetbillingplans) | **GET** /v2.1/billing_plans | Gets a list of available billing plans.
[**purchasedEnvelopesPutPurchasedEnvelopes**](BillingPlansAPI.md#purchasedenvelopesputpurchasedenvelopes) | **PUT** /v2.1/accounts/{accountId}/billing_plan/purchased_envelopes | Reserverd: Purchase additional envelopes.


# **billingPlanGetBillingPlan**
```swift
    open class func billingPlanGetBillingPlan(accountId: String, includeCreditCardInformation: String? = nil, includeMetadata: String? = nil, includeSuccessorPlans: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BillingPlanGetBillingPlan>
```

Get Account Billing Plan

Retrieves the billing plan information for the specified account, including the current billing plan, successor plans, billing address, and billing credit card.  By default the successor plan and credit card information is included in the response. You can exclude this information from the response by adding the appropriate optional query string and setting it to **false**.  Response  The response returns the billing plan information, including the currency code, for the plan. The `billingPlan` and `succesorPlans` property values are the same as those shown in the [Billing::getBillingPlan](https://developers.docusign.com/esign-rest-api/reference/Billing/BillingPlans/get) reference. the `billingAddress` and `creditCardInformation` property values are the same as those shown in the [Billing::updatePlan](https://developers.docusign.com/esign-rest-api/reference/Billing/BillingPlans/update) reference.  **Note**: When credit card number information displays, a mask is applied to the response so that only the last 4 digits of the card number are visible. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let includeCreditCardInformation = "includeCreditCardInformation_example" // String | When set to **true**, payment information including credit card information will show in the return. (optional)
let includeMetadata = "includeMetadata_example" // String | When set to **true**, the `canUpgrade` and `renewalStatus` properities are included the response and an array of `supportedCountries` is added to the `billingAddress` information.  (optional)
let includeSuccessorPlans = "includeSuccessorPlans_example" // String | When set to **true**, excludes successor information from the response. (optional)

// Get Account Billing Plan
BillingPlansAPI.billingPlanGetBillingPlan(accountId: accountId, includeCreditCardInformation: includeCreditCardInformation, includeMetadata: includeMetadata, includeSuccessorPlans: includeSuccessorPlans).whenComplete { result in
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
 **includeCreditCardInformation** | **String** | When set to **true**, payment information including credit card information will show in the return. | [optional] 
 **includeMetadata** | **String** | When set to **true**, the &#x60;canUpgrade&#x60; and &#x60;renewalStatus&#x60; properities are included the response and an array of &#x60;supportedCountries&#x60; is added to the &#x60;billingAddress&#x60; information.  | [optional] 
 **includeSuccessorPlans** | **String** | When set to **true**, excludes successor information from the response. | [optional] 

### Return type

#### BillingPlanGetBillingPlan

```swift
public enum BillingPlanGetBillingPlan {
    case http200(value: AccountBillingPlanResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: AccountBillingPlanResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingPlanGetCreditCardInfo**
```swift
    open class func billingPlanGetCreditCardInfo(accountId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BillingPlanGetCreditCardInfo>
```

Get credit card information

This method returns information about a credit card associated with an account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.

// Get credit card information
BillingPlansAPI.billingPlanGetCreditCardInfo(accountId: accountId).whenComplete { result in
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

#### BillingPlanGetCreditCardInfo

```swift
public enum BillingPlanGetCreditCardInfo {
    case http200(value: CreditCardInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: CreditCardInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingPlanGetDowngradeRequestBillingInfo**
```swift
    open class func billingPlanGetDowngradeRequestBillingInfo(accountId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BillingPlanGetDowngradeRequestBillingInfo>
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.

BillingPlansAPI.billingPlanGetDowngradeRequestBillingInfo(accountId: accountId).whenComplete { result in
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

#### BillingPlanGetDowngradeRequestBillingInfo

```swift
public enum BillingPlanGetDowngradeRequestBillingInfo {
    case http200(value: DowngradRequestBillingInfoResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: DowngradRequestBillingInfoResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingPlanPutBillingPlan**
```swift
    open class func billingPlanPutBillingPlan(accountId: String, previewBillingPlan: String? = nil, billingPlanInformation: BillingPlanInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BillingPlanPutBillingPlan>
```

Updates an account billing plan.

Updates the billing plan information, billing address, and credit card information for the specified account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let previewBillingPlan = "previewBillingPlan_example" // String | When set to **true**, updates the account using a preview billing plan. (optional)
let billingPlanInformation = billingPlanInformation(appStoreReceipt: appStoreReceipt(productId: "productId_example", receiptData: "receiptData_example"), billingAddress: accountAddress(address1: "address1_example", address2: "address2_example", city: "city_example", country: "country_example", email: "email_example", fax: "fax_example", firstName: "firstName_example", lastName: "lastName_example", phone: "phone_example", postalCode: "postalCode_example", state: "state_example", supportedCountries: [country(isoCode: "isoCode_example", name: "name_example", provinces: [province(isoCode: "isoCode_example", name: "name_example")], provinceValidated: "provinceValidated_example")]), creditCardInformation: creditCardInformation(address: addressInformation(address1: "address1_example", address2: "address2_example", city: "city_example", country: "country_example", fax: "fax_example", phone: "phone_example", postalCode: "postalCode_example", stateOrProvince: "stateOrProvince_example", zipPlus4: "zipPlus4_example"), cardNumber: "cardNumber_example", cardType: "cardType_example", cvNumber: "cvNumber_example", expirationMonth: "expirationMonth_example", expirationYear: "expirationYear_example", nameOnCard: "nameOnCard_example"), directDebitProcessorInformation: directDebitProcessorInformation(bankBranchCode: "bankBranchCode_example", bankCheckDigit: "bankCheckDigit_example", bankCode: "bankCode_example", bankName: "bankName_example", bankTransferAccountName: "bankTransferAccountName_example", bankTransferAccountNumber: "bankTransferAccountNumber_example", bankTransferType: "bankTransferType_example", country: "country_example", email: "email_example", firstName: "firstName_example", iBAN: "iBAN_example", lastName: "lastName_example"), downgradeReason: "downgradeReason_example", enableSupport: "enableSupport_example", includedSeats: "includedSeats_example", incrementalSeats: "incrementalSeats_example", paymentMethod: "paymentMethod_example", paymentProcessorInformation: paymentProcessorInformation(address: nil, billingAgreementId: "billingAgreementId_example", email: "email_example"), planInformation: planInformation(addOns: [addOn(active: "active_example", addOnId: "addOnId_example", id: "id_example", name: "name_example")], currencyCode: "currencyCode_example", freeTrialDaysOverride: "freeTrialDaysOverride_example", planFeatureSets: [featureSet(currencyFeatureSetPrices: [currencyFeatureSetPrice(currencyCode: "currencyCode_example", currencySymbol: "currencySymbol_example", envelopeFee: "envelopeFee_example", fixedFee: "fixedFee_example", seatFee: "seatFee_example")], envelopeFee: "envelopeFee_example", featureSetId: "featureSetId_example", fixedFee: "fixedFee_example", is21CFRPart11: "is21CFRPart11_example", isActive: "isActive_example", isEnabled: "isEnabled_example", name: "name_example", seatFee: "seatFee_example")], planId: "planId_example", recipientDomains: [recipientDomain(active: "active_example", domainCode: "domainCode_example", domainName: "domainName_example", recipientDomainId: "recipientDomainId_example")]), referralInformation: referralInformation(advertisementId: "advertisementId_example", enableSupport: "enableSupport_example", externalOrgId: "externalOrgId_example", groupMemberId: "groupMemberId_example", idType: "idType_example", includedSeats: "includedSeats_example", industry: "industry_example", planStartMonth: "planStartMonth_example", promoCode: "promoCode_example", publisherId: "publisherId_example", referralCode: "referralCode_example", referrerName: "referrerName_example", saleDiscountAmount: "saleDiscountAmount_example", saleDiscountFixedAmount: "saleDiscountFixedAmount_example", saleDiscountPercent: "saleDiscountPercent_example", saleDiscountPeriods: "saleDiscountPeriods_example", saleDiscountSeatPriceOverride: "saleDiscountSeatPriceOverride_example", shopperId: "shopperId_example"), renewalStatus: "renewalStatus_example", saleDiscountAmount: "saleDiscountAmount_example", saleDiscountFixedAmount: "saleDiscountFixedAmount_example", saleDiscountPercent: "saleDiscountPercent_example", saleDiscountPeriods: "saleDiscountPeriods_example", saleDiscountSeatPriceOverride: "saleDiscountSeatPriceOverride_example") // BillingPlanInformation |  (optional)

// Updates an account billing plan.
BillingPlansAPI.billingPlanPutBillingPlan(accountId: accountId, previewBillingPlan: previewBillingPlan, billingPlanInformation: billingPlanInformation).whenComplete { result in
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
 **previewBillingPlan** | **String** | When set to **true**, updates the account using a preview billing plan. | [optional] 
 **billingPlanInformation** | [**BillingPlanInformation**](BillingPlanInformation.md) |  | [optional] 

### Return type

#### BillingPlanPutBillingPlan

```swift
public enum BillingPlanPutBillingPlan {
    case http200(value: BillingPlanUpdateResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: BillingPlanUpdateResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingPlanPutDowngradeAccountBillingPlan**
```swift
    open class func billingPlanPutDowngradeAccountBillingPlan(accountId: String, downgradeBillingPlanInformation: DowngradeBillingPlanInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BillingPlanPutDowngradeAccountBillingPlan>
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let downgradeBillingPlanInformation = downgradeBillingPlanInformation(downgradeEventType: "downgradeEventType_example", planInformation: planInformation(addOns: [addOn(active: "active_example", addOnId: "addOnId_example", id: "id_example", name: "name_example")], currencyCode: "currencyCode_example", freeTrialDaysOverride: "freeTrialDaysOverride_example", planFeatureSets: [featureSet(currencyFeatureSetPrices: [currencyFeatureSetPrice(currencyCode: "currencyCode_example", currencySymbol: "currencySymbol_example", envelopeFee: "envelopeFee_example", fixedFee: "fixedFee_example", seatFee: "seatFee_example")], envelopeFee: "envelopeFee_example", featureSetId: "featureSetId_example", fixedFee: "fixedFee_example", is21CFRPart11: "is21CFRPart11_example", isActive: "isActive_example", isEnabled: "isEnabled_example", name: "name_example", seatFee: "seatFee_example")], planId: "planId_example", recipientDomains: [recipientDomain(active: "active_example", domainCode: "domainCode_example", domainName: "domainName_example", recipientDomainId: "recipientDomainId_example")])) // DowngradeBillingPlanInformation |  (optional)

BillingPlansAPI.billingPlanPutDowngradeAccountBillingPlan(accountId: accountId, downgradeBillingPlanInformation: downgradeBillingPlanInformation).whenComplete { result in
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
 **downgradeBillingPlanInformation** | [**DowngradeBillingPlanInformation**](DowngradeBillingPlanInformation.md) |  | [optional] 

### Return type

#### BillingPlanPutDowngradeAccountBillingPlan

```swift
public enum BillingPlanPutDowngradeAccountBillingPlan {
    case http200(value: DowngradePlanUpdateResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: DowngradePlanUpdateResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingPlansGetBillingPlan**
```swift
    open class func billingPlansGetBillingPlan(billingPlanId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BillingPlansGetBillingPlan>
```

Gets billing plan details.

Retrieves the billing plan details for the specified billing plan ID.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let billingPlanId = "billingPlanId_example" // String | The ID of the billing plan being accessed.

// Gets billing plan details.
BillingPlansAPI.billingPlansGetBillingPlan(billingPlanId: billingPlanId).whenComplete { result in
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
 **billingPlanId** | **String** | The ID of the billing plan being accessed. | 

### Return type

#### BillingPlansGetBillingPlan

```swift
public enum BillingPlansGetBillingPlan {
    case http200(value: BillingPlanResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: BillingPlanResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingPlansGetBillingPlans**
```swift
    open class func billingPlansGetBillingPlans(headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BillingPlansGetBillingPlans>
```

Gets a list of available billing plans.

Retrieves a list of the billing plans associated with a distributor.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI


// Gets a list of available billing plans.
BillingPlansAPI.billingPlansGetBillingPlans().whenComplete { result in
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
This endpoint does not need any parameter.

### Return type

#### BillingPlansGetBillingPlans

```swift
public enum BillingPlansGetBillingPlans {
    case http200(value: BillingPlansResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: BillingPlansResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **purchasedEnvelopesPutPurchasedEnvelopes**
```swift
    open class func purchasedEnvelopesPutPurchasedEnvelopes(accountId: String, purchasedEnvelopesInformation: PurchasedEnvelopesInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<PurchasedEnvelopesPutPurchasedEnvelopes>
```

Reserverd: Purchase additional envelopes.

Reserved: At this time, this endpoint is limited to DocuSign internal use only. Completes the purchase of envelopes for your account. The actual purchase is done as part of an internal workflow interaction with an envelope vendor.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let purchasedEnvelopesInformation = purchasedEnvelopesInformation(amount: "amount_example", appName: "appName_example", currencyCode: "currencyCode_example", platform: "platform_example", productId: "productId_example", quantity: "quantity_example", receiptData: "receiptData_example", storeName: "storeName_example", transactionId: "transactionId_example") // PurchasedEnvelopesInformation |  (optional)

// Reserverd: Purchase additional envelopes.
BillingPlansAPI.purchasedEnvelopesPutPurchasedEnvelopes(accountId: accountId, purchasedEnvelopesInformation: purchasedEnvelopesInformation).whenComplete { result in
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
 **purchasedEnvelopesInformation** | [**PurchasedEnvelopesInformation**](PurchasedEnvelopesInformation.md) |  | [optional] 

### Return type

#### PurchasedEnvelopesPutPurchasedEnvelopes

```swift
public enum PurchasedEnvelopesPutPurchasedEnvelopes {
    case http200(value: Void?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Void?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

