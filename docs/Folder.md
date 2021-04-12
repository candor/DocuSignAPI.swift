# Folder

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errorDetails** | [**ErrorDetails**](ErrorDetails.md) |  | [optional] 
**filter** | [**Filter**](Filter.md) |  | [optional] 
**folderId** | **String** | The id of the folder. | [optional] 
**folderItems** | [FolderItemV2] | A list of envelopes and templates that the folder contains. | [optional] 
**folders** | [Folder] | A list of folder objects. | [optional] 
**hasAccess** | **String** | When set to **true**, the current user has access to the folder. | [optional] 
**hasSubFolders** | **String** | When set to **true**, the folder has subfolders. | [optional] 
**itemCount** | **String** | The number of items in the folder. | [optional] 
**name** | **String** | The name of the folder. | [optional] 
**owner** | [**UserInfo**](UserInfo.md) |  | [optional] 
**parentFolderId** | **String** | The id of the parent folder, or the special value &#x60;root&#x60; for the root folder. | [optional] 
**parentFolderUri** | **String** | The URI of the parent folder. | [optional] 
**subFolderCount** | **String** | The number of subfolders. | [optional] 
**type** | **String** | The type of folder. Possible values include:  - &#x60;draft&#x60; - &#x60;inbox&#x60; - &#x60;normal&#x60; (a system-generated folder) - &#x60;recyclebin&#x60; - &#x60;sentitems&#x60; - &#x60;custom&#x60; (a custom folder created by a user) | [optional] 
**uri** | **String** | The URI for the folder. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


