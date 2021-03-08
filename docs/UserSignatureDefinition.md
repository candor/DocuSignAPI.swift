# UserSignatureDefinition

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dateStampProperties** | [**DateStampProperties**](DateStampProperties.md) |  | [optional] 
**disallowUserResizeStamp** | **String** | When set to **true**, users may not resize the stamp. | [optional] 
**externalID** | **String** | Optionally specify an external identifier for the user&#39;s signature. | [optional] 
**imageType** | **String** | Specificies the type of image. Valid values are:  - &#x60;signature_image&#x60; - &#x60;initials_image&#x60; | [optional] 
**isDefault** | **String** | Boolean that specifies whether the signature is the default signature for the user. | [optional] 
**nrdsId** | **String** | The National Association of Realtors (NAR) membership ID for a user who is a realtor. | [optional] 
**nrdsLastName** | **String** | The realtor&#39;s last name. | [optional] 
**phoneticName** | **String** | The phonetic spelling of the &#x60;signatureName&#x60;. | [optional] 
**signatureFont** | **String** | The font type to use for the signature if the signature is not drawn. The following font styles  are supported. The quotes are to indicate that these values are strings, not &#x60;enums&#x60;.  - &#x60;\&quot;1_DocuSign\&quot;&#x60; - &#x60;\&quot;2_DocuSign\&quot;&#x60; - &#x60;\&quot;3_DocuSign\&quot;&#x60; - &#x60;\&quot;4_DocuSign\&quot;&#x60; - &#x60;\&quot;5_DocuSign\&quot;&#x60; - &#x60;\&quot;6_DocuSign\&quot;&#x60; - &#x60;\&quot;7_DocuSign\&quot;&#x60; - &#x60;\&quot;8_DocuSign\&quot;&#x60; - &#x60;\&quot;Mistral\&quot;&#x60; - &#x60;\&quot;Rage Italic\&quot;&#x60;  | [optional] 
**signatureId** | **String** | Specifies the signature ID associated with the signature name. You can use the signature ID in the URI in place of the signature name, and the value stored in the &#x60;signatureName&#x60; property in the body is used. This allows the use of special characters (such as \&quot;&amp;\&quot;, \&quot;&lt;\&quot;, \&quot;&gt;\&quot;) in a the signature name. Note that with each update to signatures, the returned signature ID might change, so the caller will need to trigger off the signature name to get the new signature ID. | [optional] 
**signatureInitials** | **String** | Specifies the user&#39;s signature in initials format. | [optional] 
**signatureName** | **String** | Specifies the user&#39;s signature name. | [optional] 
**stampFormat** | **String** | The format of a stamp. Valid values are:  - &#x60;NameHanko&#x60;: The stamp represents only the signer&#39;s name. - &#x60;NameDateHanko&#x60;: The stamp represents the signer&#39;s name and the date.  | [optional] 
**stampSizeMM** | **String** | The physical height of the stamp image (in millimeters) that the stamp vendor recommends for displaying the image in PDF documents. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


