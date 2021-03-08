# Accounts

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accountIdGuid** | **String** | The GUID associated with the account ID. | [optional] 
**accountName** | **String** | The name on the account. | [optional] 
**accountSettings** | [**AccountSettingsInformation**](AccountSettingsInformation.md) |  | [optional] 
**allowTransactionRooms** | **String** | When set to **true**, the transaction rooms feature exposed through the Workspaces API is enabled. | [optional] 
**billingPeriodDaysRemaining** | **String** | Number of days remaining in the current billing period. | [optional] 
**billingPeriodEndDate** | **String** | The billing period end date in UTC timedate format. | [optional] 
**billingPeriodEnvelopesAllowed** | **String** | The number of envelopes that can be sent in the current billing period (can be unlimited). | [optional] 
**billingPeriodEnvelopesSent** | **String** | The number of envelopes that have been sent in the current billing period. | [optional] 
**billingPeriodStartDate** | **String** | The billing period start date in UTC timedate format. | [optional] 
**billingProfile** | **String** | The type of billing method on the account. Valid values are:   - &#x60;direct&#x60; - &#x60;web&#x60; | [optional] 
**canUpgrade** | **String** | When set to **true**, specifies that you can upgrade the account through the API. For GET methods, you must set the &#x60;include_metadata&#x60; query parameter to **true** for this property to appear in the response. | [optional] 
**connectPermission** | **String** |  | [optional] 
**createdDate** | **String** | The creation date of the account in UTC timedate format. | [optional] 
**currencyCode** | **String** | The currency code for the account, based on the [ISO 4217 currency code](https://www.iso.org/iso-4217-currency-codes.html). | [optional] 
**currentPlanId** | **String** | ID of the plan used to create this account. | [optional] 
**distributorCode** | **String** | The code that identifies the billing plan groups and plans for the new account. | [optional] 
**docuSignLandingUrl** | **String** | URL of the landing page used to create the account. | [optional] 
**dssValues** | **[String: String]** |  | [optional] 
**envelopeSendingBlocked** | **String** | When **true**, the ability to send envelopes is blocked. When **false**, envelopes can be sent. | [optional] 
**envelopeUnitPrice** | **String** | The price of sending an envelope, represented in the account&#39;s local currency. | [optional] 
**externalAccountId** | **String** | The Account ID displayed on the user&#39;s Account page. | [optional] 
**forgottenPasswordQuestionsCount** | **String** |  A complex element that contains up to four Question/Answer pairs for forgotten password information for a user. | [optional] 
**isDowngrade** | **String** | When **true**, the account has been downgraded from a premium account type. Otherwise **false**. | [optional] 
**paymentMethod** | **String** | The payment method used for the billing plan. Valid values are:  - &#x60;NotSupported&#x60; - &#x60;CreditCard&#x60; - &#x60;PurchaseOrder&#x60; - &#x60;Premium&#x60; - &#x60;Freemium&#x60; - &#x60;FreeTrial&#x60; - &#x60;AppStore&#x60; - &#x60;DigitalExternal&#x60; - &#x60;DirectDebit&#x60; | [optional] 
**planClassification** | **String** | Identifies the type of plan. Examples include:  - &#x60;business&#x60; - &#x60;corporate&#x60; - &#x60;enterprise&#x60;  - &#x60;free&#x60; | [optional] 
**planEndDate** | **String** | The date that the current plan will end. | [optional] 
**planName** | **String** | The name of the billing plan used for the account.  Examples:   - &#x60;Personal - Annual&#x60; - &#x60;Unlimited Envelope Subscription - Annual Billing&#x60; | [optional] 
**planStartDate** | **String** | The date that the Account started using the current plan. | [optional] 
**recipientDomains** | [[**RecipientDomain**](RecipientDomain.md)] |  | [optional] 
**seatsAllowed** | **String** | The number of active users the account can have at one time. | [optional] 
**seatsInUse** | **String** | The number of users currently active on the account. | [optional] 
**status21CFRPart11** | **String** | The status of the account content per (Title 21 CFR Part 11)[https://www.fda.gov/regulatory-information/search-fda-guidance-documents/part-11-electronic-records-electronic-signatures-scope-and-application]. This regulation defines the criteria under which electronic records and electronic signatures are considered trustworthy. | [optional] 
**suspensionDate** | **String** | The date on which the account was suspended. | [optional] 
**suspensionStatus** | **String** | Indicates whether the account is currently suspended. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


