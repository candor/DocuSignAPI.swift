# RecipientOption

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** |  | [optional] 
**name** | **String** |  | [optional] 
**recipientLabel** | **String** |  | [optional] 
**roleName** | **String** | Optional element. Specifies the role name associated with the recipient.&lt;br/&gt;&lt;br/&gt;This property is required when you are working with template recipients. | [optional] 
**signingGroupId** | **String** | Optional. The ID of the [signing group](https://support.docusign.com/en/guides/ndse-user-guide-signing-groups).  **Note**: When you send an envelope to a signing group, anyone in the group can open it and sign it with their own signature. For this reason, we recommend that you do not include non-signer recipients (such as carbon copy recipients) in the same signing group as signer recipients. However, you could create a second signing group for the non-signer recipients and change the default action of Needs to Sign to a different value, such as Receives a Copy.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


