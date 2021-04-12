# SupportedLanguages

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**languages** | [NameValue] | A list of languages that you can use for a recipient&#39;s language setting. These are the languages that you can set for the standard email format and signing view for each recipient.  For example, in the recipient&#39;s email notification, this setting affects elements such as the standard introductory text describing the request to sign. It also determines the language used for buttons and tabs in both the email notification and the signing experience.  **Note**: Setting a language for a recipient affects only the DocuSign standard text. Any custom text that you enter for the &#x60;emailBody&#x60; and &#x60;emailSubject&#x60; of the notification is not translated, and appears exactly as you enter it.  Example:  &#x60;&#x60;&#x60; {     \&quot;languages\&quot;: [         {             \&quot;name\&quot;: \&quot;Arabic (ar)\&quot;,             \&quot;value\&quot;: \&quot;ar\&quot;         },         {             \&quot;name\&quot;: \&quot;Bulgarian (bg)\&quot;,             \&quot;value\&quot;: \&quot;bg\&quot;         },         .         .         . } &#x60;&#x60;&#x60; | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


