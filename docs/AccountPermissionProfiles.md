# AccountPermissionProfiles

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**modifiedByUsername** | **String** | The username of the user who last modified the permission profile. | [optional] 
**modifiedDateTime** | **String** | The date and time when the permission profile was last modified. | [optional] 
**permissionProfileId** | **String** | The ID of the permission profile. Possible values include:  - &#x60;2301416&#x60; (for the &#x60;DocuSign Viewer&#x60; profile) - &#x60;2301415&#x60; (for the &#x60;DocuSign Sender&#x60; profile) - &#x60;2301414&#x60; (for the &#x60;Account Administrator&#x60; profile)  In addition, any custom permission profiles associated with your account will have an automatically generated &#x60;permissionProfileId&#x60;. | [optional] 
**permissionProfileName** | **String** | The name of the account permission profile.   Example: &#x60;Account Administrator&#x60; | [optional] 
**settings** | [**AccountRoleSettings**](AccountRoleSettings.md) |  | [optional] 
**userCount** | **String** | The total number of users in the group associated with the account permission profile. | [optional] 
**users** | [UserInformation] | A list of user objects containing information about the users who are associated with the account permission profile. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


