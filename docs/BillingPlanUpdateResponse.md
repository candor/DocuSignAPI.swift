# BillingPlanUpdateResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accountPaymentMethod** | **String** | The type of payment method used for the account. Valid values are:  - &#x60;credit_card&#x60; -  | [optional] 
**billingPlanPreview** | [**BillingPlanPreview**](BillingPlanPreview.md) |  | [optional] 
**currencyCode** | **String** | Specifies the ISO currency code for the account. | [optional] 
**includedSeats** | **String** | The number of seats (users) included in the plan. | [optional] 
**paymentCycle** | **String** | The payment cycle associated with the plan. The possible values are:   - &#x60;Monthly&#x60; - &#x60;Annually&#x60;  | [optional] 
**paymentMethod** | **String** | The payment method used for the billing plan. Valid values are:  - &#x60;NotSupported&#x60; - &#x60;CreditCard&#x60; - &#x60;PurchaseOrder&#x60; - &#x60;Premium&#x60; - &#x60;Freemium&#x60; - &#x60;FreeTrial&#x60; - &#x60;AppStore&#x60; - &#x60;DigitalExternal&#x60; - &#x60;DirectDebit&#x60; | [optional] 
**planId** | **String** | DocuSign&#39;s id for the account plan. | [optional] 
**planName** | **String** | The name of the billing plan used for the account.  Examples:   - &#x60;Personal - Annual&#x60; - &#x60;Unlimited Envelope Subscription - Annual Billing&#x60; | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


