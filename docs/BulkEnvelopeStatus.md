# BulkEnvelopeStatus

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**batchId** | **String** | Identifier used to query the status of an individual bulk recipient batch. | [optional] 
**batchSize** | **String** | The total number of items in the batch being queried. | [optional] 
**bulkEnvelopes** | [BulkEnvelope] | A list of bulk envelope objects. | [optional] 
**bulkEnvelopesBatchUri** | **String** | URI at which you can retrieve the batch envelopes. | [optional] 
**endPosition** | **String** | The last index position in the result set.  | [optional] 
**failed** | **String** | The number of entries with a status of &#x60;failed&#x60;.  | [optional] 
**nextUri** | **String** | The URI for the next chunk of records based on the search request. It is &#x60;null&#x60; if this is the last set of results for the search.  | [optional] 
**previousUri** | **String** | The URI for the prior chunk of records based on the search request. It is &#x60;null&#x60; if this is the first set of results for the search.  | [optional] 
**queued** | **String** | The number of entries with a status of &#x60;queued&#x60;. | [optional] 
**resultSetSize** | **String** | The number of results in this response. Because you can filter which entries are included in the response, this value is always less than or equal to the &#x60;totalSetSize&#x60;. | [optional] 
**sent** | **String** | The number of entries with a status of &#x60;sent&#x60;. | [optional] 
**startPosition** | **String** | The starting index position of the current result set. | [optional] 
**submittedDate** | **String** | The date on which the bulk envelope was created. | [optional] 
**totalSetSize** | **String** | The total number of items in the result set. This value is always greater than or equal to the value of &#x60;resultSetSize&#x60;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


