# PowerFormSendersResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**endPosition** | **Int** | The last index position in the result set.  | [optional] 
**nextUri** | **String** | The URI for the next chunk of records based on the search request. It is &#x60;null&#x60; if this is the last set of results for the search.  | [optional] 
**powerFormSenders** | [[**UserInfo**](UserInfo.md)] | An array of &#x60;userInfo&#x60; objects containing information about users who have sent PowerForms. | [optional] 
**previousUri** | **String** | The URI for the prior chunk of records based on the search request. It is &#x60;null&#x60; if this is the first set of results for the search.  | [optional] 
**resultSetSize** | **Int** | The number of results in this response. Because you can filter which entries are included in the response, this value is always less than or equal to the &#x60;totalSetSize&#x60;. | [optional] 
**startPosition** | **Int** | The starting index position of the current result set. | [optional] 
**totalSetSize** | **Int** | The total number of items in the result set. This value is always greater than or equal to the value of &#x60;resultSetSize&#x60;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


