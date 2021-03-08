# UserSignatures

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**adoptedDateTime** | **String** | The UTC date and time when the user adopted the signature. | [optional] 
**createdDateTime** | **String** | The UTC date and time when the user created the signature. | [optional] 
**customField** | **String** | Serialized information about any custom [eHanko stamps](https://support.docusign.com/en/articles/Sending-and-Signing-with-eHanko) that have been ordered from an eHanko provider, including the order status, purchase order id, time created, and time modified. | [optional] 
**dateStampProperties** | [**DateStampProperties**](DateStampProperties.md) |  | [optional] 
**disallowUserResizeStamp** | **String** | When set to **true**, users may not resize the stamp. | [optional] 
**errorDetails** | [**ErrorDetails**](ErrorDetails.md) |  | [optional] 
**externalID** | **String** | An external ID for the signature or stamp.  **Note**: If a recipient uses a stamp instead of a signature, this is the stamp vendor&#39;s serial number for the stamp. | [optional] 
**imageBase64** | **String** | A Base64-encoded representation of the signature image. | [optional] 
**imageType** | **String** | The format of the signature image, such as:  - &#x60;GIF&#x60; - &#x60;PNG&#x60; - &#x60;JPG&#x60; - &#x60;PDF&#x60; - &#x60;BMP&#x60; | [optional] 
**initials150ImageId** | **String** | The ID of the user&#39;s initials image. | [optional] 
**initialsImageUri** | **String** | The URI for retrieving the image of the user&#39;s initials. | [optional] 
**isDefault** | **String** | Boolean that specifies whether the signature is the default signature for the user. | [optional] 
**lastModifiedDateTime** | **String** | The UTC date and time when the signature was last modified. | [optional] 
**nrdsId** | **String** | The National Association of Realtors (NAR) membership ID for a user who is a realtor. | [optional] 
**nrdsLastName** | **String** | The realtor&#39;s last name. | [optional] 
**nrdsStatus** | **String** | The realtor&#39;s NAR membership status. The value &#x60;active&#x60; verifies that the user is a current NAR member. Valid values are:  - &#x60;Active&#x60; - &#x60;Inactive&#x60; - &#x60;Terminate&#x60; - &#x60;Provisional&#x60; - &#x60;Deceased&#x60; - &#x60;Suspend&#x60; - &#x60;Unknown&#x60; | [optional] 
**phoneticName** | **String** | The phonetic spelling of the &#x60;signatureName&#x60;. | [optional] 
**signature150ImageId** | **String** | The ID of the user&#39;s signature image. | [optional] 
**signatureFont** | **String** | The font type to use for the signature if the signature is not drawn. The following font styles  are supported. The quotes are to indicate that these values are strings, not &#x60;enums&#x60;.  - &#x60;\&quot;1_DocuSign\&quot;&#x60; - &#x60;\&quot;2_DocuSign\&quot;&#x60; - &#x60;\&quot;3_DocuSign\&quot;&#x60; - &#x60;\&quot;4_DocuSign\&quot;&#x60; - &#x60;\&quot;5_DocuSign\&quot;&#x60; - &#x60;\&quot;6_DocuSign\&quot;&#x60; - &#x60;\&quot;7_DocuSign\&quot;&#x60; - &#x60;\&quot;8_DocuSign\&quot;&#x60; - &#x60;\&quot;Mistral\&quot;&#x60; - &#x60;\&quot;Rage Italic\&quot;&#x60;  | [optional] 
**signatureId** | **String** | The ID associated with the signature name. You can use this property in the URI in place of the signature name. This enables the use of special characters (such as \&quot;&amp;\&quot;, \&quot;&lt;\&quot;, and \&quot;&gt;\&quot;) in a signature name.  **Note**: When you update a signature, its signature ID might change. In that case you need to use &#x60;signatureName&#x60; to get the new &#x60;signatureId&#x60;. | [optional] 
**signatureImageUri** | **String** | An endpoint URI that you can use to retrieve the user&#39;s signature image. | [optional] 
**signatureInitials** | **String** |  The initials associated with the signature. | [optional] 
**signatureName** | **String** | Specifies the user&#39;s signature name. | [optional] 
**signatureRights** | **String** | The rights that the user has to the signature. Valid values are:  - &#x60;none&#x60; - &#x60;read&#x60; - &#x60;admin&#x60; | [optional] 
**signatureType** | **String** | Specifies the type of signature. Possible values include:  - &#x60;RubberStamp&#x60;: A DocuSign pre-formatted signature style. This is the default value. - &#x60;Imported&#x60;: A signature image that the user uploaded. - &#x60;Drawn&#x60;: A freehand drawing of the user&#39;s signature and initials. | [optional] 
**stampFormat** | **String** | The format of a stamp. Valid values are:  - &#x60;NameHanko&#x60;: The stamp represents only the signer&#39;s name. - &#x60;NameDateHanko&#x60;: The stamp represents the signer&#39;s name and the date.  | [optional] 
**stampImageUri** | **String** | The URI for retrieving the image of the user&#39;s stamp. | [optional] 
**stampSizeMM** | **String** | The physical height of the stamp image (in millimeters) that the stamp vendor recommends for displaying the image in PDF documents. | [optional] 
**stampType** | **String** | The type of stamp. Valid values are:  - &#x60;signature&#x60;: A signature image. This is the default value. - &#x60;stamp&#x60;: A stamp image. - null | [optional] 
**status** | **String** | The status of the item. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


