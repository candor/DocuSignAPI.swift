# EventNotification

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**envelopeEvents** | [[**EnvelopeEvent**](EnvelopeEvent.md)] | A list of envelope-level event statuses that will trigger Connect to send updates to the endpoint specified in the &#x60;url&#x60; property.   To receive notifications, you must include either an &#x60;envelopeEvents&#x60; node or a &#x60;recipientEvents&#x60; node. You do not need to specify both. | [optional] 
**eventData** | [**ConnectEventData**](ConnectEventData.md) |  | [optional] 
**includeCertificateOfCompletion** | **String** | When set to **true**, the Connect Service includes the Certificate of Completion with completed envelopes.  | [optional] 
**includeCertificateWithSoap** | **String** | When set to **true**, the Connect service will digitally sign the XML data. The signature will be included in the XML message. | [optional] 
**includeDocumentFields** | **String** | When set to **true**, the Document Fields associated with the envelope&#39;s documents are included in the notification messages. Document Fields are optional custom name-value pairs added to documents using the API.  | [optional] 
**includeDocuments** | **String** | When set to **true**, the XML webhook messages will include the envelope&#39;s PDF documents. Including the PDF documents will greatly increase the size of the notification messages. Ensure that your listener can handle incoming messages that are 25MB or larger.  | [optional] 
**includeEnvelopeVoidReason** | **String** | When set to **true**, if the envelope is voided, the Connect Service notification will include the void reason, as entered by the person that voided the envelope.  | [optional] 
**includeHMAC** | **String** |  | [optional] 
**includeSenderAccountAsCustomField** | **String** | When set to **true**, Connect will include the sender account as Custom Field in the data. | [optional] 
**includeTimeZone** | **String** | When set to **true**, the envelope&#39;s time zone information is included in the webhook messages.  | [optional] 
**loggingEnabled** | **String** | When set to **true**, the webhook messages are logged. They can be viewed on the DocuSign Administration Web Tool in the Connect section. Logged messages can also be downloaded via the [ConnectEvents resource](https://developers.docusign.com/esign-rest-api/reference/Connect/ConnectEvents). | [optional] 
**recipientEvents** | [[**RecipientEvent**](RecipientEvent.md)] | An array of recipient event statuses that will trigger Connect to send notifications to your webhook listener at the url endpoint specified in the &#x60;url&#x60; property.   To receive notifications, you must include either an &#x60;envelopeEvents&#x60; node or a &#x60;recipientEvents&#x60; node. You do not need to specify both. | [optional] 
**requireAcknowledgment** | **String** | When set to **true**, the DocuSign Connect service checks that the message was received and retries on failures.  | [optional] 
**signMessageWithX509Cert** | **String** | When set to **true**, Mutual TLS will be enabled for notifications. Mutual TLS must be initiated by the listener (the customer&#39;s web server) during the TLS handshake protocol.  | [optional] 
**soapNameSpace** | **String** | The namespace of the SOAP interface.  The namespace value must be set if useSoapInterface is set to true. | [optional] 
**url** | **String** | The endpoint to which webhook notification messages are sent via an HTTPS POST request. The url must start with https. The customer&#39;s web server must use an SSL/TLS certificate whose CA is in the Microsoft list of trusted CAs. Self-signed certificates are not ok. Free certificates from Let&#39;s Encrypt can be used. | [optional] 
**useSoapInterface** | **String** | When set to **true**, the notifications are sent to your endpoint as SOAP requests.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


