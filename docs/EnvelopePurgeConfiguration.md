# EnvelopePurgeConfiguration

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**purgeEnvelopes** | **String** | When set to **true**, purging is enabled. | [optional] 
**redactPII** | **String** | When set to **true**, the system also redacts personally identifiable information (PII).  **Note**: To redact PII, you must also set the property &#x60;removeTabsAndEnvelopeAttachments&#x60; to **true**. | [optional] 
**removeTabsAndEnvelopeAttachments** | **String** | When set to **true**, the system also purges the tabs and attachments associated with the envelopes.  | [optional] 
**retentionDays** | **String** | The number of days to retain envelope documents before purging them. This value must be a number between &#x60;0&#x60; and &#x60;999&#x60;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


