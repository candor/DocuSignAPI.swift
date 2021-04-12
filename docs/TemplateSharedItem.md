# TemplateSharedItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errorDetails** | [**ErrorDetails**](ErrorDetails.md) |  | [optional] 
**owner** | [**UserInfo**](UserInfo.md) |  | [optional] 
**password** | **String** | The user&#39;s encrypted password hash. | [optional] 
**shared** | **String** | How the template is shared. One of:  - &#x60;not_shared&#x60; - &#x60;shared_to&#x60;  | [optional] 
**sharedGroups** | [MemberGroupSharedItem] | List of groups that share the template. | [optional] 
**sharedUsers** | [UserSharedItem] | List of users that share the template. | [optional] 
**templateId** | **String** | The unique identifier of the template. If this is not provided, DocuSign will generate a value.  | [optional] 
**templateName** | **String** | The name of the shared template. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


