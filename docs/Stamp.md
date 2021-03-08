# Stamp

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
**lastModifiedDateTime** | **String** | The date and time that the item was last modified. | [optional] 
**phoneticName** | **String** | The phonetic spelling of the &#x60;signatureName&#x60;. | [optional] 
**signatureName** | **String** | Specifies the user&#39;s signature name. | [optional] 
**stampFormat** | **String** | The format of a stamp. Valid values are:  - &#x60;NameHanko&#x60;: The stamp represents only the signer&#39;s name. - &#x60;NameDateHanko&#x60;: The stamp represents the signer&#39;s name and the date.  | [optional] 
**stampImageUri** | **String** | The URI for retrieving the image of the user&#39;s stamp. | [optional] 
**stampSizeMM** | **String** | The physical height of the stamp image (in millimeters) that the stamp vendor recommends for displaying the image in PDF documents. | [optional] 
**status** | **String** | The status of the item. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


