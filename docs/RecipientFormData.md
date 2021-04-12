# RecipientFormData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**declinedTime** | **String** | The date and time the recipient declined the envelope. | [optional] 
**deliveredTime** | **String** | The date and time the recipient viewed the documents in the envelope in the DocuSign signing UI. | [optional] 
**email** | **String** | The recipient&#39;s email address. | [optional] 
**formData** | [FormDataItem] | An array of form data objects. | [optional] 
**name** | **String** | The name of the recipient. | [optional] 
**recipientId** | **String** | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each &#x60;recipientId&#x60; must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a &#x60;recipientId&#x60; of &#x60;1&#x60;. | [optional] 
**sentTime** | **String** | The date and time the envelope was sent to the recipient. | [optional] 
**signedTime** | **String** | The date and time the recipient signed the documents. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


