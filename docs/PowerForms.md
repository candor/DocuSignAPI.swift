# PowerForms

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdBy** | **String** | The id of the user who created the PowerForm. This property is returned in a response only when you set the &#x60;include_created_by&#x60; query parameter to **true**. | [optional] 
**createdDateTime** | **String** | The date and time that the PowerForm was created. | [optional] 
**emailBody** | **String** | For a PowerForm that is sent by email, this is the body of the email message sent to the recipients.  Maximum length: 10000 characters. | [optional] 
**emailSubject** | **String** | Sets the envelope name for the envelopes that the PowerForm generates. One option is to make this property the same as the subject from the template.   You can customize the subject line to include a recipient&#39;s name or email address by using merge fields. For information about adding merge fields to the email subject, see [Template Email Subject Merge Fields](https://developers.docusign.com/esign-rest-api/reference/Templates/Templates/create#template-email-subject-merge-fields).  | [optional] 
**envelopes** | [[**Envelope**](Envelope.md)] | An array of envelope objects that contain information about the envelopes that are associated with the PowerForm. | [optional] 
**errorDetails** | [**ErrorDetails**](ErrorDetails.md) |  | [optional] 
**instructions** | **String** | The instructions that display on the landing page for the first recipient. These instructions are important if the recipient accesses the PowerForm by a method other than email. When you include instructions, they display as an introduction after the recipient accesses the PowerForm. | [optional] 
**isActive** | **String** | When **true**, indicates that the PowerForm is active and can be sent to recipients. This is the default value.   When **false**, the PowerForm cannot be emailed or accessed by a recipient, even if they arrive at the PowerForm URL.   If a recipient attempts to sign an inactive PowerForm, an error message informs the recipient that the document is not active and suggests that they contact the sender. | [optional] 
**lastUsed** | **String** | The date and time that the PowerForm was last used. | [optional] 
**limitUseInterval** | **String** | The length of time before the same recipient can sign the same PowerForm again. This property is used in combination with the &#x60;limitUseIntervalUnits&#x60; property. | [optional] 
**limitUseIntervalEnabled** | **String** | When **true**, the &#x60;limitUseInterval&#x60; is enabled. | [optional] 
**limitUseIntervalUnits** | **String** | The units associated with the &#x60;limitUseInterval&#x60;. Valid values are:  - &#x60;minutes&#x60; - &#x60;hours&#x60; - &#x60;days&#x60; - &#x60;weeks&#x60; - &#x60;months&#x60;  For example, to limit a recipient to signing once per year, set the &#x60;limitUseInterval&#x60; to 365 and the &#x60;limitUseIntervalUnits&#x60; to &#x60;days&#x60;.  | [optional] 
**maxUseEnabled** | **String** | When set to **true**, you can set a maximum number of uses for the PowerForm. | [optional] 
**name** | **String** | The name of the PowerForm. | [optional] 
**powerFormId** | **String** | The id of the PowerForm. | [optional] 
**powerFormUrl** | **String** | The URL for the PowerForm. | [optional] 
**recipients** | [[**PowerFormRecipient**](PowerFormRecipient.md)] | An array of &#x60;powerFormRecipient&#x60; objects.  **Note**: For self-service documents where you do not know who the recipients are in advance, you can enter generic information for the &#x60;role&#x60; property and leave other details (such as &#x60;name&#x60; and &#x60;email&#x60;) blank. | [optional] 
**senderName** | **String** | The name of the sender.   **Note**: The default sender for a PowerForm is the PowerForm Administrator who created it. | [optional] 
**senderUserId** | **String** | The id of the sender. | [optional] 
**signingMode** | **String** | The signing method to use. Valid values are:   - &#x60;email&#x60;: This mode verifies the recipient&#39;s identity by using email authentication before the recipient can sign a document.  - &#x60;direct&#x60;: This mode does not require any verification. We recommend that you use this signing method only when another form of authentication is in use.  **Note**: In the account settings, &#x60;enablePowerFormDirect&#x60; must be **true** to use &#x60;direct&#x60; as the &#x60;signingMode&#x60;.  For more information about signing modes, see the [overview of the Create method](https://developers.docusign.com/esign-rest-api/reference/PowerForms/PowerForms/create). | [optional] 
**templateId** | **String** | The id of the template used to create the PowerForm. | [optional] 
**templateName** | **String** | The name of the template used to create the PowerForm. | [optional] 
**timesUsed** | **String** | The number of times the PowerForm has been used.  | [optional] 
**uri** | **String** | The URI for the PowerForm. | [optional] 
**usesRemaining** | **String** | The number of times that the PowerForm can still be used. If no use limit is set, the value is &#x60;Unlimited&#x60;.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


