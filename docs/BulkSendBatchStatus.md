# BulkSendBatchStatus

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**batchId** | **String** | Identifier used to query the status of an individual bulk recipient batch. | [optional] 
**batchName** | **String** |  | [optional] 
**batchSize** | **String** | The total number of items in the batch being queried. | [optional] 
**bulkErrors** | [BulkSendErrorStatus] |  | [optional] 
**envelopeIdOrTemplateId** | **String** |  | [optional] 
**envelopesUri** | **String** |  | [optional] 
**failed** | **String** | The number of entries with a status of &#x60;failed&#x60;.  | [optional] 
**mailingListId** | **String** |  | [optional] 
**queued** | **String** | The number of entries with a status of &#x60;queued&#x60;. | [optional] 
**sent** | **String** | The number of entries with a status of &#x60;sent&#x60;. | [optional] 
**submittedDate** | **String** | The date on which the bulk envelope was created. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


