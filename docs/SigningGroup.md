# SigningGroup

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **String** | The UTC DateTime when the signing group was created. Read only. | [optional] 
**createdBy** | **String** | The name of the user who created the signing group. | [optional] 
**errorDetails** | [**ErrorDetails**](ErrorDetails.md) |  | [optional] 
**groupEmail** | **String** | The email address for the signing group. You can use a group email address to email all of the group members at the same time. | [optional] 
**groupName** | **String** | The name of the group. The search_text provided in the call automatically performs a wild card search on group_name. | [optional] 
**groupType** | **String** | The group type. Possible values include:  - &#x60;adminstrators&#x60; - &#x60;everyone&#x60; - &#x60;customGroup&#x60; - &#x60;sharedSigningGroup&#x60;  &lt;!-- More? To do --&gt; | [optional] 
**modified** | **String** | The UTC DateTime when the signing group was last modified. Read only. | [optional] 
**modifiedBy** | **String** | The user id (GUID) of the user who last modified this user record. | [optional] 
**signingGroupId** | **String** | Optional. The ID of the [signing group](https://support.docusign.com/en/guides/ndse-user-guide-signing-groups).  **Note**: When you send an envelope to a signing group, anyone in the group can open it and sign it with their own signature. For this reason, we recommend that you do not include non-signer recipients (such as carbon copy recipients) in the same signing group as signer recipients. However, you could create a second signing group for the non-signer recipients and change the default action of Needs to Sign to a different value, such as Receives a Copy.  | [optional] 
**users** | [[**SigningGroupUser**](SigningGroupUser.md)] | User management information. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


