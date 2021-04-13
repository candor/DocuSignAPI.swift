# WorkspaceItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**callerAuthorization** | [**WorkspaceUserAuthorization**](WorkspaceUserAuthorization.md) |  | [optional] 
**contentType** | **String** | If the item is a file, this property specifies the content type of the file. | [optional] 
**created** | **String** | The UTC DateTime when the workspace user authorization was created. | [optional] 
**createdById** | **String** | The id of the user who created the workspace item. | [optional] 
**createdByInformation** | [**WorkspaceUser**](WorkspaceUser.md) |  | [optional] 
**`extension`** | **String** | The file extension of a file item. | [optional] 
**fileSize** | **String** | The size of the file in bytes. | [optional] 
**fileUri** | **String** | The URI for retrieving the file. | [optional] 
**id** | **String** | A unique ID for the Salesforce object. | [optional] 
**isPublic** | **String** |  When **true**, the item is public. | [optional] 
**lastModified** | **String** | The UTC date and time that the comment was last updated.  **Note**: This can only be done by the creator. | [optional] 
**lastModifiedById** | **String** | The id of the user who last modified the item. | [optional] 
**lastModifiedByInformation** | [**WorkspaceUser**](WorkspaceUser.md) |  | [optional] 
**name** | **String** | The name of the file or folder. | [optional] 
**pageCount** | **String** | The number of pages in a file. | [optional] 
**parentFolderId** | **String** | The id of the parent folder, or the special value &#x60;root&#x60; for the root folder. | [optional] 
**parentFolderUri** | **String** | The URI of the parent folder. | [optional] 
**sha256** | **String** | A 64-byte, Secure Hash Algorithm 256 (SHA256) checksum that the caller computes across the entirety of the original content of a file. DocuSign compares this value to its own computation. If the two values are not equal, the original content and received content are not the same and the upload is refused. | [optional] 
**thumbHeight** | **String** | The height of the thumbnail image. | [optional] 
**thumbnail** | [**Page**](Page.md) |  | [optional] 
**thumbWidth** | **String** | The width of the thumbnail image. | [optional] 
**type** | **String** |  | [optional] 
**uri** | **String** | A URI containing the user ID. | [optional] 
**userAuthorization** | [**WorkspaceUserAuthorization**](WorkspaceUserAuthorization.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


