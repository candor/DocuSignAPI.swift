# EnvelopeTransactionStatus

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**envelopeId** | **String** | The envelope ID of the envelope status that failed to post. | [optional] 
**errorDetails** | [**ErrorDetails**](ErrorDetails.md) |  | [optional] 
**status** | **String** | Indicates the envelope status. Valid values are:  * &#x60;completed&#x60;: The recipients have finished working with the envelope: the documents are signed and all required tabs are filled in. * &#x60;created&#x60;: The envelope is created as a draft. It can be modified and sent later. * &#x60;declined&#x60;: The envelope has been declined by the recipients. * &#x60;delivered&#x60;: The envelope has been delivered to the recipients. * &#x60;sent&#x60;: The envelope will be sent to the recipients after the envelope is created. * &#x60;signed&#x60;: The envelope has been signed by the recipients. * &#x60;voided&#x60;: The envelope is no longer valid and recipients cannot access or sign the envelope.  | [optional] 
**transactionId** | **String** |  Used to identify an envelope. The id is a sender-generated value and is valid in the DocuSign system for 7 days. It is recommended that a transaction ID is used for offline signing to ensure that an envelope is not sent multiple times. The &#x60;transactionId&#x60; property can be used determine an envelope&#39;s status (i.e. was it created or not) in cases where the internet connection was lost before the envelope status was returned. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


