# BillingPlan

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**appStoreProducts** | [[**AppStoreProduct**](AppStoreProduct.md)] | Reserved for DocuSign. | [optional] 
**currencyPlanPrices** | [[**CurrencyPlanPrice**](CurrencyPlanPrice.md)] | Contains the &#x60;currencyCode&#x60; and &#x60;currencySymbol&#x60; for the alternate currency values for &#x60;envelopeFee&#x60;, &#x60;fixedFee&#x60;, and &#x60;seatFee&#x60; that are configured for this plan feature set. | [optional] 
**enableSupport** | **String** | When set to **true**, customer support is provided as part of the account plan. | [optional] 
**includedSeats** | **String** | The number of seats (users) included in the plan. | [optional] 
**otherDiscountPercent** | **String** | Any other percentage discount for the plan.  Example: &#x60;\&quot;0.00\&quot;&#x60; | [optional] 
**paymentCycle** | **String** | The payment cycle associated with the plan. The possible values are:   - &#x60;Monthly&#x60; - &#x60;Annually&#x60;  | [optional] 
**paymentMethod** | **String** | The payment method used for the billing plan. Valid values are:  - &#x60;NotSupported&#x60; - &#x60;CreditCard&#x60; - &#x60;PurchaseOrder&#x60; - &#x60;Premium&#x60; - &#x60;Freemium&#x60; - &#x60;FreeTrial&#x60; - &#x60;AppStore&#x60; - &#x60;DigitalExternal&#x60; - &#x60;DirectDebit&#x60; | [optional] 
**perSeatPrice** | **String** | The per-seat price associated with the plan.  Example: &#x60;\&quot;456.0000\&quot;&#x60; | [optional] 
**planClassification** | **String** | Identifies the type of plan. Examples include:  - &#x60;business&#x60; - &#x60;corporate&#x60; - &#x60;enterprise&#x60;  - &#x60;free&#x60; | [optional] 
**planFeatureSets** | [[**FeatureSet**](FeatureSet.md)] | Reserved for DocuSign. | [optional] 
**planId** | **String** | DocuSign&#39;s id for the account plan. | [optional] 
**planName** | **String** |   | [optional] 
**seatDiscounts** | [[**SeatDiscount**](SeatDiscount.md)] | A complex type that returns information about any seat discounts. It contains the information &#x60;BeginSeatCount&#x60;, &#x60;EndSeatCount&#x60; and &#x60;SeatDiscountPercent&#x60;. | [optional] 
**supportIncidentFee** | **String** | The support incident fee charged for each support incident.  Example: &#x60;\&quot;$0.00\&quot;&#x60; | [optional] 
**supportPlanFee** | **String** | The support plan fee charged for this plan.  Example: &#x60;\&quot;$0.00\&quot;&#x60; | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


