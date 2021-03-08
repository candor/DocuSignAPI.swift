# SigningGroups

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **String** | The UTC DateTime when the workspace user authorization was created. | [optional] 
**createdBy** | **String** | The name of the user who created the signing group. | [optional] 
**errorDetails** | [**ErrorDetails**](ErrorDetails.md) |  | [optional] 
**groupEmail** | **String** | The email address for the signing group. You can use a group email address to email all of the group members at the same time. | [optional] 
**groupName** | **String** | The name of the group. The search_text provided in the call automatically performs a wild card search on group_name. | [optional] 
**groupType** | **String** | The group type. Possible values include:  - &#x60;adminstrators&#x60; - &#x60;everyone&#x60; - &#x60;customGroup&#x60; - &#x60;sharedSigningGroup&#x60;  &lt;!-- More? To do --&gt; | [optional] 
**modified** | **String** | The date and time that the signing group was last modified. | [optional] 
**modifiedBy** | **String** | The user id (GUID) of the user who last modified this user record. | [optional] 
**signingGroupId** | **String** | When set to **true** and the feature is enabled in the sender&#39;s account, the signing recipient is required to draw signatures and initials at each signature/initial tab ( instead of adopting a signature/initial style or only drawing a signature/initial once). | [optional] 
**users** | [[**SigningGroupUser**](SigningGroupUser.md)] | User management information. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


