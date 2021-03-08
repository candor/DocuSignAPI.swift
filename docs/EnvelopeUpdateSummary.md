# EnvelopeUpdateSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bulkEnvelopeStatus** | [**BulkEnvelopeStatus**](BulkEnvelopeStatus.md) |  | [optional] 
**envelopeId** | **String** | The envelope ID of the envelope status that failed to post. | [optional] 
**errorDetails** | [**ErrorDetails**](ErrorDetails.md) |  | [optional] 
**listCustomFieldUpdateResults** | [[**ListCustomField**](ListCustomField.md)] |  | [optional] 
**lockInformation** | [**EnvelopeLocks**](EnvelopeLocks.md) |  | [optional] 
**purgeState** | **String** | Shows the current purge state for the envelope. The possible values are:  * &#x60;unpurged&#x60;: There has been no successful request to purge documents. * &#x60;documents_queued&#x60;: The envelope documents have been added to the purge queue, but have not been purged. * &#x60;documents_dequeued&#x60;: The envelope documents have been taken out of the purge queue. * &#x60;documents_and_metadata_queued&#x60;: The envelope documents and metadata have been added to the purge queue, but have not yet been purged. * &#x60;documents_purged&#x60;: The envelope documents have been successfully purged. * &#x60;documents_and_metadata_purged&#x60;: The envelope documents and metadata have been successfully purged.   | [optional] 
**recipientUpdateResults** | [[**RecipientUpdateResponse**](RecipientUpdateResponse.md)] | An array of &#x60;recipientUpdateResults&#x60; objects that contain details about the recipients. | [optional] 
**tabUpdateResults** | [**EnvelopeRecipientTabs**](EnvelopeRecipientTabs.md) |  | [optional] 
**textCustomFieldUpdateResults** | [[**TextCustomField**](TextCustomField.md)] |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


