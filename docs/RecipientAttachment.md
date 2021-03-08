# RecipientAttachment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attachmentId** | **String** | The unique identifier for the attachment. | [optional] 
**attachmentType** | **String** | Specifies the type of the attachment for the recipient. Possible values are:  - &#x60;.htm&#x60; - &#x60;.xml&#x60; | [optional] 
**data** | **String** | A Base64-encoded representation of the attachment that is used to upload and download the file. File attachments may be up to 50 MB in size. | [optional] 
**label** | **String** | An optional label for the attachment. | [optional] 
**name** | **String** | The name of the attachment. | [optional] 
**remoteUrl** | **String** | The URL of a previously staged chunked upload. Using a chunked upload enables you to stage a large, chunkable temp file. You then use the &#x60;remoteUrl&#x60; property to reference the chunked upload as the content in attachment and document-related requests. The &#x60;remoteUrl&#x60; property cannot be used for downloads. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


