# Comments

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | [optional] 
**hmac** | **String** | Reserved for DocuSign. | [optional] 
**id** | **String** | A unique ID for the Salesforce object. | [optional] 
**mentions** | **[String]** | An array of userIds that are mentioned directly in the body of a comment. | [optional] 
**read** | **Bool** | Indicates if the comment has been read by the target recipient of the comment. | [optional] 
**sentByEmail** | **String** |  | [optional] 
**sentByFullName** | **String** |  | [optional] 
**sentByImageId** | **String** | Reserved for DocuSign. | [optional] 
**sentByInitials** | **String** |  | [optional] 
**sentByRecipientId** | **String** |  | [optional] 
**sentByUserId** | **String** |  | [optional] 
**signingGroupId** | **String** | Optional. The ID of the [signing group](https://support.docusign.com/en/guides/ndse-user-guide-signing-groups).  **Note**: When you send an envelope to a signing group, anyone in the group can open it and sign it with their own signature. For this reason, we recommend that you do not include non-signer recipients (such as carbon copy recipients) in the same signing group as signer recipients. However, you could create a second signing group for the non-signer recipients and change the default action of Needs to Sign to a different value, such as Receives a Copy.  | [optional] 
**signingGroupName** | **String** | Optional. The name of the signing group.   Maximum Length: 100 characters.  | [optional] 
**subject** | **String** |  | [optional] 
**tabId** | **String** | The unique identifier for the tab. | [optional] 
**text** | **String** | Specifies the text that is shown in the dropdown list.  | [optional] 
**threadId** | **String** | The unique identifier for the comment thread. | [optional] 
**threadOriginatorId** | **String** | The userId of the user who created the thread. | [optional] 
**timestamp** | **String** |  | [optional] 
**timeStampFormatted** | **String** |  | [optional] 
**visibleTo** | **[String]** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


