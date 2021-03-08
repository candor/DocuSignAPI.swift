# RecipientPreviewRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**assertionId** | **String** | A unique identifier of the authentication event executed by the client application. | [optional] 
**authenticationInstant** | **String** | A sender-generated value that indicates the date and time that the signer was authenticated. | [optional] 
**authenticationMethod** | **String** | Required. Choose a value that most closely matches the technique your application used to authenticate the recipient / signer.   Choose a value from this list:  * Biometric  * Email * HTTPBasicAuth * Kerberos * KnowledgeBasedAuth * None * PaperDocuments * Password * RSASecureID * SingleSignOn_CASiteminder * SingleSignOn_InfoCard * SingleSignOn_MicrosoftActiveDirectory * SingleSignOn_Other * SingleSignOn_Passport * SingleSignOn_SAML * Smartcard * SSLMutualAuth * X509Certificate  This information is included in the Certificate of Completion. | [optional] 
**pingFrequency** | **String** | Only used if &#x60;pingUrl&#x60; is specified. This is the interval, in seconds, between pings on the &#x60;pingUrl&#x60;.  The default is &#x60;300&#x60; seconds. Valid values are 60-1200 seconds. | [optional] 
**pingUrl** | **String** | The client URL that the DocuSign Signing experience should ping to indicate to the client that Signing is active. An HTTP GET call is executed against the client. The response from the client is ignored. The intent is for the client to reset its session timer when the request is received. | [optional] 
**recipientId** | **String** | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each &#x60;recipientId&#x60; must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a &#x60;recipientId&#x60; of &#x60;1&#x60;. | [optional] 
**returnUrl** | **String** | The URL to which the sender should be redirected after viewing the preview. | [optional] 
**securityDomain** | **String** | The domain in which the user authenticated. | [optional] 
**xFrameOptions** | **String** | Specifies whether a browser should be allowed to render a page in a frame or IFrame. Setting this property ensures that your content is not embedded into unauthorized pages or frames.  Valid values are:  - &#x60;deny&#x60;: The page cannot be displayed in a frame. - &#x60;same_origin&#x60;: The page can only be displayed in a frame on the same origin as the page itself. - &#x60;allow_from&#x60;: The page can only be displayed in a frame on the origin specified by the &#x60;xFrameOptionsAllowFromUrl&#x60; property. | [optional] 
**xFrameOptionsAllowFromUrl** | **String** | When the value of &#x60;xFrameOptions&#x60; is &#x60;allow_from&#x60;, this property specifies the origin on which the page is allowed to display in a frame. If the value of &#x60;xFrameOptions&#x60; is &#x60;allow_from&#x60;, you must include a value for this property. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


