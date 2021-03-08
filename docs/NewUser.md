# NewUser

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**apiPassword** | **String** | Contains a token that can be used for authentication in API calls instead of using the user name and password. | [optional] 
**createdDateTime** | **String** | The UTC DateTime when the item was created. | [optional] 
**email** | **String** | The user&#39;s email address. | [optional] 
**errorDetails** | [**ErrorDetails**](ErrorDetails.md) |  | [optional] 
**membershipId** | **String** | The user&#39;s membership ID. | [optional] 
**permissionProfileId** | **String** | The ID of the permission profile. Possible values include:  - &#x60;2301416&#x60; (for the &#x60;DocuSign Viewer&#x60; profile) - &#x60;2301415&#x60; (for the &#x60;DocuSign Sender&#x60; profile) - &#x60;2301414&#x60; (for the &#x60;Account Administrator&#x60; profile)  In addition, any custom permission profiles associated with your account will have an automatically generated &#x60;permissionProfileId&#x60;. | [optional] 
**permissionProfileName** | **String** | The name of the account permission profile.   Example: &#x60;Account Administrator&#x60; | [optional] 
**uri** | **String** | A URI containing the user ID. | [optional] 
**userId** | **String** | Specifies the user ID for the new user. | [optional] 
**userName** | **String** | The name of the user. | [optional] 
**userStatus** | **String** | Status of the user&#39;s account. One of:  - &#x60;ActivationRequired&#x60; - &#x60;ActivationSent&#x60; - &#x60;Active&#x60; - &#x60;Closed&#x60; - &#x60;Disabled&#x60;  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


