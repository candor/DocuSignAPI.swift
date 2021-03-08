# PaymentGatewayAccounts

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allowCustomMetadata** | **Bool** | When **true**, the sender can pass custom metadata about the payment to the payment gateway. You pass in this metadata on an EnvelopeRecipientTab, in the &#x60;customMetadata&#x60; property under &#x60;paymentDetails&#x60;.   For example, this property is set to **true** for the Authorize.net gateway by default. As a result, the extra metadata that you send displays for the Authorize.net transaction in the merchant gateway portal under **Description**.  **Note**: This property is read only and cannot be changed. | [optional] 
**config** | [**PaymentGatewayAccountSetting**](PaymentGatewayAccountSetting.md) |  | [optional] 
**displayName** | **String** | A user-defined name for a connected gateway account.  This name is used in the Admin panel in the list of connected accounts and in Tagger in the payment gateway selector.  The human-readable version of &#x60;paymentGatewayAccountId&#x60;. | [optional] 
**isEnabled** | **String** | When **true**, the payment gateway account is enabled. | [optional] 
**isLegacy** | **String** | Reserved for DocuSign. | [optional] 
**lastModified** | **String** | The UTC DateTime that the payment gateway account was last updated. | [optional] 
**paymentGateway** | **String** | Payment gateway used by the connected gateway account. This is the name used by the API. For a human-readable version use &#x60;paymentGatewayDisplayName&#x60;.  Possible values are:  * &#x60;Stripe&#x60; * &#x60;Braintree&#x60; * &#x60;AuthorizeDotNet&#x60; | [optional] 
**paymentGatewayAccountId** | **String** | A GUID that identifies the payment gateway account. For a human-readable version use &#x60;displayName&#x60;. | [optional] 
**paymentGatewayDisplayName** | **String** | The display name of the payment gateway that the connected gateway account uses. This is the human-readable version of &#x60;paymentGateway&#x60;.  Possible values are:  * Stripe * Braintree * Authorize.Net | [optional] 
**payPalLegacySettings** | [**PayPalLegacySettings**](PayPalLegacySettings.md) |  | [optional] 
**supportedCurrencies** | **[String]** | A list of ISO 4217 currency codes for the currencies that the payment gateway account supports.  Examples:   - &#x60;USD&#x60; - &#x60;CAD&#x60; - &#x60;EUR&#x60; - &#x60;HKD&#x60; | [optional] 
**supportedPaymentMethods** | **[String]** | An array of paymentMethodWithOptions objects that specify the payment methods that are available for the gateway. | [optional] 
**supportedPaymentMethodsWithOptions** | [[**PaymentMethodWithOptions**](PaymentMethodWithOptions.md)] | An array of &#x60;paymentMethodWithOptions&#x60; objects that specify the payment methods that are available for the gateway, as well as the payment options that are compatible with each payment method. | [optional] 
**zeroDecimalCurrencies** | **[String]** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


