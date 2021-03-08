# Expirations

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**expireAfter** | **String** | An integer specifying the number of days that a sent envelope remains active before it expires. A negative number in a response indicates that the envelope has already expired. | [optional] 
**expireEnabled** | **String** | When set to **true**, the envelope expires (is no longer available for signing) after the specified number of days after it is sent (&#x60;sentDateTime&#x60;). Set  &#x60;expireAfter&#x60; to set the number of days until an envelope expires. When **false**, the account default setting is used. If the account does not have an expiration setting, the DocuSign default value of 120 days is used. | [optional] 
**expireWarn** | **String** | An integer that specifying the number of days before the envelope expires that an expiration warning email is sent to the recipient. If set to 0 (zero), no warning email is sent. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


