# BulkEnvelope

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bulkRecipientRow** | **String** | The row of the recipient in the CSV file used to create the bulk recipient list. | [optional] 
**bulkStatus** | **String** | Indicates the status of the bulk send operation. Returned values can be: - &#x60;queued&#x60; - &#x60;processing&#x60; - &#x60;sent&#x60; - &#x60;failed&#x60; | [optional] 
**email** | **String** | The email address of the recipient assigned to this envelope transaction. | [optional] 
**envelopeId** | **String** | GUID of the bulk envelope. | [optional] 
**envelopeUri** | **String** | The URI for retrieving the envelope or envelopes. | [optional] 
**errorDetails** | [**ErrorDetails**](ErrorDetails.md) |  | [optional] 
**name** | **String** | The name of the recipient assigned to this envelope transaction. | [optional] 
**submittedDateTime** | **String** | The date and time on which the bulk envelope was created. | [optional] 
**transactionId** | **String** | Identifier for the envelope transaction. The ID is a sender-generated value and is valid in the DocuSign system for 7 days. We recommend that you use a transaction ID for offline signing to ensure that an envelope is not sent multiple times. You can use the transaction ID to determine an envelope&#39;s status (queued, processing, sent, or failed) in cases where the Internet connection is lost before envelope status is returned. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


