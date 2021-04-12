# EnvelopesInformation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**continuationToken** | **String** | A token returned by an earlier API call that you can use with a new call to resume a search query at the point where it left off.  This token system enhances the performance of the API. | [optional] 
**endPosition** | **String** | The last index position in the result set.  | [optional] 
**envelopes** | [Envelope] | Set of envelope information | [optional] 
**envelopeTransactionStatuses** | [EnvelopeTransactionStatus] | Array of envelope statuses and transaction IDs in the result set. | [optional] 
**folders** | [Folder] | A list of folder objects. | [optional] 
**lastQueriedDateTime** | **String** | The last time that a query was performed. | [optional] 
**resultSetSize** | **String** | The number of results in this response. Because you can filter which entries are included in the response, this value is always less than or equal to the &#x60;totalSetSize&#x60;. | [optional] 
**startPosition** | **String** | The starting index position of the current result set. | [optional] 
**totalSetSize** | **String** | The total number of items in the result set. This value is always greater than or equal to the value of &#x60;resultSetSize&#x60;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


