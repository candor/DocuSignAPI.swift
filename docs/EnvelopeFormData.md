# EnvelopeFormData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**emailSubject** | **String** | The subject line of the email message that is sent to all recipients.  For information about adding merge field information to the email subject, see [Template Email Subject Merge Fields](https://developers.docusign.com/esign-rest-api/reference/Templates/Templates/create#template-email-subject-merge-fields).  | [optional] 
**envelopeId** | **String** | The id of the envelope. | [optional] 
**formData** | [[**FormDataItem**](FormDataItem.md)] | An array of form data objects. | [optional] 
**recipientFormData** | [[**RecipientFormData**](RecipientFormData.md)] | An array of form data objects that are associated with specific recipients. | [optional] 
**sentDateTime** | **String** | The UTC DateTime when the envelope was sent. Read only. | [optional] 
**status** | **String** | Indicates the envelope status. Valid values are:  * &#x60;completed&#x60;: The recipients have finished working with the envelope: the documents are signed and all required tabs are filled in. * &#x60;created&#x60;: The envelope is created as a draft. It can be modified and sent later. * &#x60;declined&#x60;: The envelope has been declined by the recipients. * &#x60;delivered&#x60;: The envelope has been delivered to the recipients. * &#x60;sent&#x60;: The envelope will be sent to the recipients after the envelope is created. * &#x60;signed&#x60;: The envelope has been signed by the recipients. * &#x60;voided&#x60;: The envelope is no longer valid and recipients cannot access or sign the envelope.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


