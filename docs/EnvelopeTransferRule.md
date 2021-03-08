# EnvelopeTransferRule

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**carbonCopyOriginalOwner** | **String** | When set to **true**, the original owner is added as a carbon copy recipient after envelope transfer. The default value is **false**. | [optional] 
**enabled** | **String** | When set to **true**, the envelope transfer rule is active. | [optional] 
**envelopeTransferRuleId** | **String** | The id of the envelope transfer rule. The system generates this id when the rule is first created. | [optional] 
**eventType** | **String** | The type of envelope event that triggers the transfer. Valid values are:  - &#x60;sent&#x60; - &#x60;before sent&#x60;  - &#x60;completed&#x60; | [optional] 
**fromGroup** | [**Group**](Group.md) |  | [optional] 
**fromUser** | [**UserInformation**](UserInformation.md) |  | [optional] 
**modifiedDate** | **String** | The UTC DateTime when the envelope transfer rule was last modified. This property is read only. | [optional] 
**modifiedUser** | [**UserInformation**](UserInformation.md) |  | [optional] 
**toFolder** | [**Folder**](Folder.md) |  | [optional] 
**toUser** | [**UserInformation**](UserInformation.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


