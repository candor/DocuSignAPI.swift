# AccountSignatures

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**adoptedDateTime** | **String** | The UTC date and time when the user adopted the signature. | [optional] 
**createdDateTime** | **String** | The UTC DateTime when the item was created. | [optional] 
**customField** | **String** |  | [optional] 
**dateStampProperties** | [**DateStampProperties**](DateStampProperties.md) |  | [optional] 
**disallowUserResizeStamp** | **String** | When set to **true**, users may not resize the stamp. | [optional] 
**errorDetails** | [**ErrorDetails**](ErrorDetails.md) |  | [optional] 
**externalID** | **String** | Optionally specify an external identifier for the user&#39;s signature. | [optional] 
**imageBase64** | **String** |  | [optional] 
**imageType** | **String** | Specificies the type of image. Valid values are:  - &#x60;signature_image&#x60; - &#x60;initials_image&#x60; | [optional] 
**initials150ImageId** | **String** | The ID of the user&#39;s initials image. | [optional] 
**initialsImageUri** | **String** | The URI for retrieving the image of the user&#39;s initials. | [optional] 
**isDefault** | **String** | Boolean that specifies whether the signature is the default signature for the user. | [optional] 
**lastModifiedDateTime** | **String** | The date and time that the item was last modified. | [optional] 
**nrdsId** | **String** | The National Association of Realtors (NAR) membership ID for a user who is a realtor. | [optional] 
**nrdsLastName** | **String** | The realtor&#39;s last name. | [optional] 
**nrdsStatus** | **String** | The realtor&#39;s NAR membership status. The value &#x60;active&#x60; verifies that the user is a current NAR member. Valid values are:  - &#x60;Active&#x60; - &#x60;Inactive&#x60; - &#x60;Terminate&#x60; - &#x60;Provisional&#x60; - &#x60;Deceased&#x60; - &#x60;Suspend&#x60; - &#x60;Unknown&#x60; | [optional] 
**phoneticName** | **String** | The phonetic spelling of the &#x60;signatureName&#x60;. | [optional] 
**signature150ImageId** | **String** | The ID of the user&#39;s signature image. | [optional] 
**signatureFont** | **String** | The font type to use for the signature if the signature is not drawn. The following font styles  are supported. The quotes are to indicate that these values are strings, not &#x60;enums&#x60;.  - &#x60;\&quot;1_DocuSign\&quot;&#x60; - &#x60;\&quot;2_DocuSign\&quot;&#x60; - &#x60;\&quot;3_DocuSign\&quot;&#x60; - &#x60;\&quot;4_DocuSign\&quot;&#x60; - &#x60;\&quot;5_DocuSign\&quot;&#x60; - &#x60;\&quot;6_DocuSign\&quot;&#x60; - &#x60;\&quot;7_DocuSign\&quot;&#x60; - &#x60;\&quot;8_DocuSign\&quot;&#x60; - &#x60;\&quot;Mistral\&quot;&#x60; - &#x60;\&quot;Rage Italic\&quot;&#x60;  | [optional] 
**signatureGroups** | [[**SignatureGroup**](SignatureGroup.md)] |  | [optional] 
**signatureId** | **String** | The ID of the signature being accessed. | [optional] 
**signatureImageUri** | **String** | An endpoint URI that you can use to retrieve the user&#39;s signature image. | [optional] 
**signatureInitials** | **String** | Specifies the user&#39;s signature in initials format. | [optional] 
**signatureName** | **String** | Specifies the user&#39;s signature name. | [optional] 
**signatureRights** | **String** | The rights that the user has to the signature. Valid values are:  - &#x60;none&#x60; - &#x60;read&#x60; - &#x60;admin&#x60; | [optional] 
**signatureType** | **String** | Specifies the type of signature. | [optional] 
**signatureUsers** | [[**SignatureUser**](SignatureUser.md)] |  | [optional] 
**stampFormat** | **String** | The format of a stamp. Valid values are:  - &#x60;NameHanko&#x60;: The stamp represents only the signer&#39;s name. - &#x60;NameDateHanko&#x60;: The stamp represents the signer&#39;s name and the date.  | [optional] 
**stampImageUri** | **String** | The URI for retrieving the image of the user&#39;s stamp. | [optional] 
**stampSizeMM** | **String** | The physical height of the stamp image (in millimeters) that the stamp vendor recommends for displaying the image in PDF documents. | [optional] 
**stampType** | **String** | The type of stamp. Valid values are:  - &#x60;signature&#x60;: A signature image. This is the default value. - &#x60;stamp&#x60;: A stamp image. - null | [optional] 
**status** | **String** | The status of the item. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


