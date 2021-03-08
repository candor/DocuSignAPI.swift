# ConnectCustomConfiguration

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allowEnvelopePublish** | **String** | When set to **true**, data is sent to the urlToPublishTo web address. This option can be set to false to stop sending data while maintaining the Connect configuration information. | [optional] 
**allowSalesforcePublish** | **String** | When set to **true**  (default), DocuSign sends data to the designated Salesforce account through Connect. | [optional] 
**allUsers** | **String** | When set to **true**, the tracked envelope and recipient events for all users, including users that are added a later time, are sent through Connect. | [optional] 
**configurationType** | **String** | If you are using merge fields, this property specifies the type of the merge field. The only supported value is &#x60;salesforce&#x60;. | [optional] 
**connectId** | **String** | The ID of the custom Connect configuration being accessed. | [optional] 
**enableLog** | **String** | When set to **true**, Connect logging is turned on. We recommend that you enable this functionality, which helps you troubleshoot any issues.   You can have a maximum of 100 active logs in your account. You can view the entries in active logs in the **Logs** tab in the console. | [optional] 
**envelopeEvents** | **[String]** | A list of envelope-level event statuses that will trigger Connect to send updates to the endpoint specified in the &#x60;url&#x60; property.   To receive notifications, you must include either an &#x60;envelopeEvents&#x60; node or a &#x60;recipientEvents&#x60; node. You do not need to specify both. | [optional] 
**eventData** | [**ConnectEventData**](ConnectEventData.md) |  | [optional] 
**externalFolderId** | **String** | The id of an external folder. | [optional] 
**externalFolderLabel** | **String** | The label for an external folder. | [optional] 
**includeCertificateOfCompletion** | **String** | When set to **true**, the Connect Service includes the Certificate of Completion with completed envelopes.  | [optional] 
**includeCertSoapHeader** | **String** |  | [optional] 
**includeDocumentFields** | **String** | When set to **true**, the Document Fields associated with the envelope&#39;s documents are included in the notification messages. Document Fields are optional custom name-value pairs added to documents using the API.  | [optional] 
**includeDocuments** | **String** | reserved | [optional] 
**includeEnvelopeVoidReason** | **String** | When set to **true**, if the envelope is voided, the Connect Service notification will include the void reason, as entered by the person that voided the envelope.  | [optional] 
**includeHMAC** | **String** |  | [optional] 
**includeSenderAccountasCustomField** | **String** | When set to **true**, Connect will include the sender account as Custom Field in the data. | [optional] 
**includeTimeZoneInformation** | **String** | When set to **true**, Connect will include the envelope time zone information. | [optional] 
**name** | **String** |  | [optional] 
**password** | **String** | The user&#39;s encrypted password hash. | [optional] 
**recipientEvents** | **[String]** | An array of recipient event statuses that will trigger Connect to send notifications to your webhook listener at the url endpoint specified in the &#x60;url&#x60; property.   To receive notifications, you must include either an &#x60;envelopeEvents&#x60; node or a &#x60;recipientEvents&#x60; node. You do not need to specify both. | [optional] 
**requireMutualTls** | **String** | When set to **true**, [Mutual TLS](https://developers.docusign.com/esign-rest-api/guides/mutual-tls-intro) authentication is enabled. | [optional] 
**requiresAcknowledgement** | **String** | When set to **true**, event delivery acknowledgements are enabled for your Connect configuration.  DocuSign Connect awaits a valid 200 response from your application acknowledging that it received a message. If you do not acknowledge receiving an event notification message within 100 seconds, DocuSign treats the message as a failure and places it into a failure queue. It is imperative that you acknowledge successful receipt of Connect events as they occur by sending a 200 event back.  #### When set to **true** and Send Individual Messages (SIM) mode is activated  If the HTTP status response to a notification message is not in the range of 200-299, then the message delivery failed, and the configuration is marked as down.  The message will be queued and retried once per day. While a Connect configuration is marked down, subsequent notifications will not be tried. Instead they will be immediately queued with the reason &#x60;Pending&#x60;. When a message succeeds, all queued messages for the configuration will be tried immediately, in order.  There is a maximum of ten retries. Alternately, you can use **Republish Connect Information** to manually republish the notification.  #### When set to **true** and SIM mode is not activated  If the HTTP Status response to a notification message is not in the range of 200-299,  then the message delivery failed, and the message is queued.  The message will be retried after at least a day the next time a subsequent message is successfully sent to this configuration (subscription).  Subsequent notifications will be tried when they occur. There is a maximum of ten retries. Alternately, you can use **Republish Connect Information** to manually republish the notification.  #### When set to **false**  When &#x60;requiresAcknowledgement&#x60; is set to **false** and you do not acknowledge receiving an event notification message within 100 seconds, DocuSign treats the message as a failure and determines that the server is unavailable. It does not retry to send the notification message, and you must handle the failure manually.   | [optional] 
**salesforceApiVersion** | **String** | The version of the Salesforce API that you are using. | [optional] 
**salesforceAuthcode** | **String** |  | [optional] 
**salesforceCallBackUrl** | **String** |  | [optional] 
**salesforceDocumentsAsContentFiles** | **String** | When set to **true**, DocuSign can use documents in your Salesforce account for sending and signing. | [optional] 
**senderOverride** | **String** |  | [optional] 
**senderSelectableItems** | **[String]** | This property sets the items that are available for selection when adding or editing Connect objects.  | [optional] 
**sfObjects** | [[**ConnectSalesforceObject**](ConnectSalesforceObject.md)] | An array of Salesforce objects. | [optional] 
**signMessageWithX509Certificate** | **String** | When set to **true**, Mutual TLS will be enabled for notifications. Mutual TLS must be initiated by the listener (the customer&#39;s web server) during the TLS handshake protocol.  | [optional] 
**soapNamespace** | **String** | The namespace of the SOAP interface.  **Note**: If &#x60;useSoapInterface&#x60; is set to **true**, you must set this value. | [optional] 
**urlToPublishTo** | **String** | This is the web address and name of your listener or Retrieving Service endpoint. You need to include HTTPS:// in the web address. | [optional] 
**userIds** | **[String]** | A comma-separated list of userIds. This sets the users associated with the tracked envelope and recipient events. When a tracked event occurs for a set user, the a notification message is sent to your Connect listener.  **Note**: If allUsers is set to &#x60;false&#x60; then you must provide a list of user ids. | [optional] 
**userName** | **String** | The name of the user. | [optional] 
**useSoapInterface** | **String** | When set to **true**, the notifications are sent to your endpoint as SOAP requests.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


