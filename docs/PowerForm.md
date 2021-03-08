# PowerForm

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdBy** | **String** | The id of the user who created the PowerForm. | [optional] 
**createdDateTime** | **String** | The UTC DateTime when the item was created. | [optional] 
**emailBody** | **String** | The body of the email message sent to the recipients.   Maximum length: 10000 characters. | [optional] 
**emailSubject** | **String** | The subject line of the email message that is sent to all recipients.  For information about adding merge field information to the email subject, see [Template Email Subject Merge Fields](https://developers.docusign.com/esign-rest-api/reference/Templates/Templates/create#template-email-subject-merge-fields).  | [optional] 
**envelopes** | [[**Envelope**](Envelope.md)] | An array containing PowerForm data. | [optional] 
**errorDetails** | [**ErrorDetails**](ErrorDetails.md) |  | [optional] 
**instructions** | **String** | The instructions that display on the landing page for the first recipient. These instructions are important if the recipient accesses the PowerForm by a method other than email. If instructions are entered, they display as an introduction after the recipient accesses the PowerForm.  Limit: 2000 characters. | [optional] 
**isActive** | **String** | When **true**, indicates that the PowerForm is active and can be sent to recipients. This is the default value.  When **false**, the PowerForm cannot be emailed or accessed by a recipient, even if they arrive at the PowerForm URL.   If a recipient attempts to sign an inactive PowerForm, an error message informs the recipient that the document is not active and suggests that they contact the sender.  | [optional] 
**lastUsed** | **String** | The UTC DateTime when the PowerForm was last used. | [optional] 
**limitUseInterval** | **String** | The length of time before the same recipient can sign the same PowerForm. This property is used in combination with the &#x60;limitUseIntervalUnits&#x60; property. | [optional] 
**limitUseIntervalEnabled** | **String** | When **true**, the &#x60;limitUseInterval&#x60; is enabled. | [optional] 
**limitUseIntervalUnits** | **String** | The units associated with the &#x60;limitUseInterval&#x60;. Valid values are:  - &#x60;minutes&#x60; - &#x60;hours - &#x60;days&#x60; - &#x60;weeks&#x60; - &#x60;months&#x60;  For example, to limit a recipient to signing once per year, set the &#x60;limitUseInterval&#x60; to 365 and the &#x60;limitUseIntervalUnits&#x60; to &#x60;days&#x60;.  | [optional] 
**maxUseEnabled** | **String** | When set to **true**, you can set a maximum number of uses for the PowerForm. | [optional] 
**name** | **String** | The name of the PowerForm. | [optional] 
**powerFormId** | **String** | The id of the PowerForm. | [optional] 
**powerFormUrl** | **String** | The URL for the PowerForm. | [optional] 
**recipients** | [[**PowerFormRecipient**](PowerFormRecipient.md)] | An array of recipient objects that provides details about the recipients of the envelope. | [optional] 
**senderName** | **String** | The sender&#39;s name. | [optional] 
**senderUserId** | **String** | The id of the sender. | [optional] 
**signingMode** | **String** | The signing mode to use. Valid values are:   - &#x60;email&#x60;: Verifies the recipient&#39;s identity using email authentication before the recipient can sign a document. The recipient enters their email address and then clicks **Begin Signing** to begin the signing process. The system then sends an email message with a validation code for the PowerForm to the recipient. If the recipient does not provide a valid email address, they cannot open and sign the document.   - &#x60;direct&#x60;: Does not require any verification. After a recipient enters their email address and clicks **Begin Signing**, a new browser tab opens and the recipient can immediately begin the signing process. Because the recipient&#39;s identity is not verified by using email authentication, we strongly recommend that you only use the &#x60;direct&#x60; signing mode when the PowerForm is accessible behind a secure portal where the recipient&#39;s identity is already authenticated, or where another form of authentication is specified for the recipient in the DocuSign template (for example, an access code, phone authentication, or ID check).    **Note**: In the account settings, &#x60;enablePowerFormDirect&#x60; must be **true** to use &#x60;direct&#x60; as the &#x60;signingMode&#x60;. | [optional] 
**templateId** | **String** | The id of the template used to create the PowerForm. | [optional] 
**templateName** | **String** | The name of the template used to create the PowerForm. | [optional] 
**timesUsed** | **String** | The number of times the PowerForm has been used.  | [optional] 
**uri** | **String** | The URI for the PowerForm. | [optional] 
**usesRemaining** | **String** | The number of times the PowerForm can still be used. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


