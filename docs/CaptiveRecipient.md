# CaptiveRecipient

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**clientUserId** | **String** | Specifies whether the recipient is embedded or remote.   If the &#x60;clientUserId&#x60; property is not null then the recipient is embedded. Use this field to associate the signer with their userId in your app. Authenticating the user is the responsibility of your app when you use embedded signing.  Note: if the &#x60;clientUserId&#x60; property is set and either &#x60;SignerMustHaveAccount&#x60; or &#x60;SignerMustLoginToSign&#x60; property of the account settings is set to  **true**, an error is generated on sending.   Maximum length: 100 characters.  | [optional] 
**email** | **String** | The email address associated with the captive recipient. | [optional] 
**errorDetails** | [**ErrorDetails**](ErrorDetails.md) |  | [optional] 
**userName** | **String** | The username associated with the captive recipient. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


