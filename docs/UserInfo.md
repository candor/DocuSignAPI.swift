# UserInfo

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accountId** | **String** | The external account number (int) or account ID GUID. | [optional] 
**accountName** | **String** | The name on the account. | [optional] 
**activationAccessCode** | **String** | Access code provided to the user to activate the account. | [optional] 
**email** | **String** | The user&#39;s email address. | [optional] 
**errorDetails** | [**ErrorDetails**](ErrorDetails.md) |  | [optional] 
**loginStatus** | **String** | Boolean value that indicates whether the user is currently logged in or not. | [optional] 
**membershipId** | **String** | The user&#39;s membership ID. | [optional] 
**sendActivationEmail** | **String** | When set to **true**, specifies that an activation email be sent to the user. | [optional] 
**uri** | **String** | A URI containing the user ID. | [optional] 
**userId** | **String** | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, &#x60;userId&#x60; can represent another user whom the Administrator is accessing.  | [optional] 
**userName** | **String** | The name of the user. | [optional] 
**userStatus** | **String** | Status of the user&#39;s account. One of:  - &#x60;ActivationRequired&#x60; - &#x60;ActivationSent&#x60; - &#x60;Active&#x60; - &#x60;Closed&#x60; - &#x60;Disabled&#x60;  | [optional] 
**userType** | **String** | The type of user, for example &#x60;CompanyUser&#x60;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


