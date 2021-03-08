# ConnectLog

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accountId** | **String** | The external account number (int) or account ID GUID. | [optional] 
**configUrl** | **String** | The web address of the listener or retrieving service endpoint for Connect. | [optional] 
**connectDebugLog** | [[**ConnectDebugLog**](ConnectDebugLog.md)] | A complex element containing information about the Connect configuration, error details, date/time, description and payload. This information is included in the response only when the &#x60;additional_info&#x60; query is set to **true**. This additional information is only available when retrieving general logs with [ConnectEvents:get](https://developers.docusign.com/esign-rest-api/reference/Connect/ConnectEvents/get), but not when retrieving failure logs with [ConnectEvents:listFailures](https://developers.docusign.com/esign-rest-api/reference/Connect/ConnectEvents/listFailures). | [optional] 
**connectId** | **String** | The id of the Connect configuration that failed. If an account has multiple Connect configurations, this value is used to look up the Connect configuration for the failed post. | [optional] 
**created** | **String** | The UTC DateTime when the Connect post was created. | [optional] 
**email** | **String** | The email address of the envelope sender. | [optional] 
**envelopeId** | **String** | The id of the envelope that failed to post. | [optional] 
**error** | **String** | The server error associated with the Connect post failure. | [optional] 
**failureId** | **String** | The id of the Connect post failure. | [optional] 
**failureUri** | **String** | The URI for the Connect post failure. | [optional] 
**lastTry** | **String** | The UTC DateTime of the last attempt to post. | [optional] 
**logId** | **String** | The id of the Connect log entry. | [optional] 
**logUri** | **String** | The URI for the Connect log entry. | [optional] 
**retryCount** | **String** | The number of times the Connect post has been retried. | [optional] 
**retryUri** | **String** | A URI that you can use to retry to publish the Connect post. | [optional] 
**status** | **String** | The envelope status for the Connect post. Possible values are: - &#x60;Any&#x60; - &#x60;Voided&#x60; - &#x60;Created&#x60; - &#x60;Deleted&#x60; - &#x60;Sent&#x60; - &#x60;Delivered&#x60; - &#x60;Signed&#x60; - &#x60;Completed&#x60; - &#x60;Declined&#x60; - &#x60;TimedOut&#x60; - &#x60;Template&#x60; - &#x60;Processing&#x60;  For details about these statuses, see [Envelope Status Code Descriptions](https://developers.docusign.com/esign-rest-api/guides/status-and-error-codes#envelope-status-code-descriptions). | [optional] 
**subject** | **String** | The subject of the envelope. | [optional] 
**userName** | **String** | The name of the sender of the envelope. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


