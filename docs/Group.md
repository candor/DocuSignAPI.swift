# Group

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errorDetails** | [**ErrorDetails**](ErrorDetails.md) |  | [optional] 
**groupId** | **String** | The DocuSign group ID for the group. | [optional] 
**groupName** | **String** | The name of the group. | [optional] 
**groupType** | **String** | The group type. Possible values include:  - &#x60;adminstrators&#x60; - &#x60;everyone&#x60; - &#x60;customGroup&#x60; - &#x60;sharedSigningGroup&#x60;  &lt;!-- More? To do --&gt; | [optional] 
**permissionProfileId** | **String** | The ID of the permission profile associated with the group. Possible values include:  - &#x60;2301416&#x60; (for the &#x60;DocuSign Viewer&#x60; profile) - &#x60;2301415&#x60; (for the &#x60;DocuSign Sender&#x60; profile) - &#x60;2301414&#x60; (for the &#x60;Account Administrator&#x60; profile) | [optional] 
**users** | [UserInfo] | A list of the users in the group. | [optional] 
**usersCount** | **String** | The total number of users in the group. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


