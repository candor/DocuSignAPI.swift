# BulkSendTestResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**canBeSent** | **Bool** | When **true**, the envelope or template is compatible with the bulk send list and can be sent by using the [BulkSend::createBulkSendRequest][BulkSendRequest] method.  **Note**: This property is only returned in responses and ignored in requests.  [BulkSendRequest]: /esign-rest-api/reference/BulkEnvelopes/BulkSend/createBulkSendRequest | [optional] 
**validationErrorDetails** | **[String]** | Human-readable details about any validation errors that occurred. | [optional] 
**validationErrors** | **[String]** | A list of validation errors that were encountered during the bulk send test.  **Note**: This information is intended to be parsed by machine. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


