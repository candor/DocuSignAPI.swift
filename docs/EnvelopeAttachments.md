# EnvelopeAttachments

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accessControl** | **String** | Valid values are &#x60;sender&#x60; and &#x60;senderAndAllRecipients&#x60;. | [optional] 
**attachmentId** | **String** | The unique identifier for the attachment. | [optional] 
**attachmentType** | **String** | Specifies the type of the attachment for the recipient. Possible values are:  - &#x60;.htm&#x60; - &#x60;.xml&#x60; | [optional] 
**errorDetails** | [**ErrorDetails**](ErrorDetails.md) |  | [optional] 
**label** | **String** | A label for the attachment. Potential values include:   - &#x60;guidedForm&#x60;: [Guided forms](https://www.docusign.com/products/guided-forms) provide a step-by-step, mobile-ready experience to help signers easily complete long or complex forms. - &#x60;eventNotifications&#x60;: A list of envelope-level event statuses that trigger Connect to send updates to the endpoint specified in the &#x60;url&#x60; property.  | [optional] 
**name** | **String** | The name of the attachment. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


