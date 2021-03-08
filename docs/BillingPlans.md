# BillingPlans

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**billingAddress** | [**AccountAddress**](AccountAddress.md) |  | [optional] 
**billingAddressIsCreditCardAddress** | **String** | When set to **true**, the credit card address information is the same as that returned as the billing address. If false, then the billing address is considered a billing contact address, and the credit card address can be different. | [optional] 
**billingPlan** | [**AccountBillingPlan**](AccountBillingPlan.md) |  | [optional] 
**creditCardInformation** | [**CreditCardInformation**](CreditCardInformation.md) |  | [optional] 
**directDebitProcessorInformation** | [**DirectDebitProcessorInformation**](DirectDebitProcessorInformation.md) |  | [optional] 
**downgradePlanInformation** | [**DowngradePlanUpdateResponse**](DowngradePlanUpdateResponse.md) |  | [optional] 
**paymentMethod** | **String** | The payment method used for the billing plan. Valid values are:  - &#x60;NotSupported&#x60; - &#x60;CreditCard&#x60; - &#x60;PurchaseOrder&#x60; - &#x60;Premium&#x60; - &#x60;Freemium&#x60; - &#x60;FreeTrial&#x60; - &#x60;AppStore&#x60; - &#x60;DigitalExternal&#x60; - &#x60;DirectDebit&#x60; | [optional] 
**paymentProcessorInformation** | [**PaymentProcessorInformation**](PaymentProcessorInformation.md) |  | [optional] 
**referralInformation** | [**ReferralInformation**](ReferralInformation.md) |  | [optional] 
**successorPlans** | [[**BillingPlan**](BillingPlan.md)] | A list of billing plans that the current billing plan can be rolled into. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


