# Attachment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accessControl** | **String** | Valid values are &#x60;sender&#x60; and &#x60;senderAndAllRecipients&#x60;. | [optional] 
**attachmentId** | **String** | The unique identifier for the attachment. | [optional] 
**attachmentType** | **String** | Specifies the type of the attachment for the recipient. Possible values are:  - &#x60;.htm&#x60; - &#x60;.xml&#x60; | [optional] 
**data** | **String** | A Base64-encoded representation of the attachment that is used to upload and download the file. File attachments may be up to 50 MB in size. | [optional] 
**label** | **String** | A label for the attachment. Potential values include:   - &#x60;guidedForm&#x60;: [Guided forms](https://www.docusign.com/products/guided-forms) provide a step-by-step, mobile-ready experience to help signers easily complete long or complex forms. - &#x60;eventNotifications&#x60;: A list of envelope-level event statuses that trigger Connect to send updates to the endpoint specified in the &#x60;url&#x60; property.   | [optional] 
**name** | **String** | The name of the attachment. | [optional] 
**remoteUrl** | **String** | The URL of a previously staged chunked upload. Using a chunked upload enables you to stage a large, chunkable temp file. You then use the &#x60;remoteUrl&#x60; property to reference the chunked upload as the content in attachment and document-related requests. The &#x60;remoteUrl&#x60; property cannot be used for downloads. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


