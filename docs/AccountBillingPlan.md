# AccountBillingPlan

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**addOns** | [AddOn] | Reserved for DocuSign. | [optional] 
**canCancelRenewal** | **String** | Reserved for DocuSign. | [optional] 
**canUpgrade** | **String** | When set to **true**, specifies that you can upgrade the account through the API. For GET methods, you must set the &#x60;include_metadata&#x60; query parameter to **true** for this property to appear in the response. | [optional] 
**currencyCode** | **String** | Specifies the ISO currency code to use for the account. | [optional] 
**downgradePlanInformation** | [**DowngradePlanUpdateResponse**](DowngradePlanUpdateResponse.md) |  | [optional] 
**enableSupport** | **String** | When set to **true**, customer support is provided as part of the account plan. | [optional] 
**includedSeats** | **String** | The number of seats (users) included in the plan. | [optional] 
**incrementalSeats** | **String** | Reserved for DocuSign. | [optional] 
**isDowngrade** | **String** | When **true**, the account has been downgraded from a premium account type. Otherwise **false**. | [optional] 
**otherDiscountPercent** | **String** | Any other percentage discount for the plan.  Example: &#x60;\&quot;0.00\&quot;&#x60; | [optional] 
**paymentCycle** | **String** | The payment cycle associated with the plan. The possible values are:   - &#x60;Monthly&#x60; - &#x60;Annually&#x60;  | [optional] 
**paymentMethod** | **String** | The payment method used for the billing plan. Valid values are:  - &#x60;NotSupported&#x60; - &#x60;CreditCard&#x60; - &#x60;PurchaseOrder&#x60; - &#x60;Premium&#x60; - &#x60;Freemium&#x60; - &#x60;FreeTrial&#x60; - &#x60;AppStore&#x60; - &#x60;DigitalExternal&#x60; - &#x60;DirectDebit&#x60; | [optional] 
**perSeatPrice** | **String** | The per-seat price associated with the plan.  Example: &#x60;\&quot;456.0000\&quot;&#x60; | [optional] 
**planClassification** | **String** | Identifies the type of plan. Examples include:  - &#x60;business&#x60; - &#x60;corporate&#x60; - &#x60;enterprise&#x60;  - &#x60;free&#x60; | [optional] 
**planFeatureSets** | [FeatureSet] | Reserved for DocuSign. | [optional] 
**planId** | **String** | DocuSign&#39;s id for the account plan. | [optional] 
**planName** | **String** | The name of the billing plan used for the account.  Examples:   - &#x60;Personal - Annual&#x60; - &#x60;Unlimited Envelope Subscription - Annual Billing&#x60; | [optional] 
**renewalStatus** | **String** | The renewal status for the account. Valid values are:  * &#x60;auto&#x60;: The account automatically renews. * &#x60;queued_for_close&#x60;: The account will be closed at the &#x60;billingPeriodEndDate&#x60;. * &#x60;queued_for_downgrade&#x60;: The account will be downgraded at the &#x60;billingPeriodEndDate&#x60;.  **Note**: For GET methods, you must set the &#x60;include_metadata&#x60; query parameter to **true** for this property to appear in the response. | [optional] 
**seatDiscounts** | [SeatDiscount] |    | [optional] 
**supportIncidentFee** | **String** | The support incident fee charged for each support incident.  Example: &#x60;\&quot;$0.00\&quot;&#x60; | [optional] 
**supportPlanFee** | **String** | The support plan fee charged for this plan.  Example: &#x60;\&quot;$0.00\&quot;&#x60; | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


