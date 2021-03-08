# BillingPlanInformation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**appStoreReceipt** | [**AppStoreReceipt**](AppStoreReceipt.md) |  | [optional] 
**billingAddress** | [**AccountAddress**](AccountAddress.md) |  | [optional] 
**creditCardInformation** | [**CreditCardInformation**](CreditCardInformation.md) |  | [optional] 
**directDebitProcessorInformation** | [**DirectDebitProcessorInformation**](DirectDebitProcessorInformation.md) |  | [optional] 
**downgradeReason** | **String** | (Optional) The user&#39;s reason for downgrading their billing plan. | [optional] 
**enableSupport** | **String** | When set to **true**, customer support is provided as part of the account plan. | [optional] 
**includedSeats** | **String** | The number of seats (users) included in the plan. | [optional] 
**incrementalSeats** | **String** | Reserved for DocuSign. | [optional] 
**paymentMethod** | **String** | The payment method used for the billing plan. Valid values are:  - &#x60;NotSupported&#x60; - &#x60;CreditCard&#x60; - &#x60;PurchaseOrder&#x60; - &#x60;Premium&#x60; - &#x60;Freemium&#x60; - &#x60;FreeTrial&#x60; - &#x60;AppStore&#x60; - &#x60;DigitalExternal&#x60; - &#x60;DirectDebit&#x60; | [optional] 
**paymentProcessorInformation** | [**PaymentProcessorInformation**](PaymentProcessorInformation.md) |  | [optional] 
**planInformation** | [**PlanInformation**](PlanInformation.md) |  | [optional] 
**referralInformation** | [**ReferralInformation**](ReferralInformation.md) |  | [optional] 
**renewalStatus** | **String** | The renewal status of the account. Possible values are:  - &#x60;auto&#x60;: The account automatically renews.  - &#x60;queued_for_close&#x60;: The account will be closed at the billingPeriodEndDate.  - queued_for_downgrade&#x60;: The account will be downgraded at the &#x60;billingPeriodEndDate&#x60;. | [optional] 
**saleDiscountAmount** | **String** | Reserved for DocuSign. | [optional] 
**saleDiscountFixedAmount** | **String** | Reserved for DocuSign. | [optional] 
**saleDiscountPercent** | **String** | Reserved for DocuSign. | [optional] 
**saleDiscountPeriods** | **String** | Reserved for DocuSign. | [optional] 
**saleDiscountSeatPriceOverride** | **String** | Reserved for DocuSign. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


