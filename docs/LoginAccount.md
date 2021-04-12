# LoginAccount

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accountId** | **String** | The account ID associated with the envelope. | [optional] 
**accountIdGuid** | **String** | The GUID associated with the account ID. | [optional] 
**baseUrl** | **String** | The URL that should be used for successive calls to this account. It includes the protocal (https), the DocuSign server where the account is located, and the account number. Use this Url to make API calls against this account. Many of the API calls provide Uri&#39;s that are relative to this baseUrl. | [optional] 
**email** | **String** | The email address for the user. | [optional] 
**isDefault** | **String** | This value is true if this is the default account for the user, otherwise false is returned. | [optional] 
**loginAccountSettings** | [NameValue] | A list of settings on the acccount that indicate what features are available. | [optional] 
**loginUserSettings** | [NameValue] | A list of user-level settings that indicate what user-specific features are available. | [optional] 
**name** | **String** | The name associated with the account. | [optional] 
**siteDescription** | **String** | An optional descirption of the site that hosts the account. | [optional] 
**userId** | **String** | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, &#x60;userId&#x60; can represent another user whom the Administrator is accessing.  | [optional] 
**userName** | **String** | The name of this user as defined by the account. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


