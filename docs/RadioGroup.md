# RadioGroup

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**conditionalParentLabel** | **String** | For conditional fields this is the &#x60;tabLabel&#x60; of the parent tab that controls this tab&#39;s visibility. | [optional] 
**conditionalParentLabelMetadata** | [**PropertyMetadata**](PropertyMetadata.md) |  | [optional] 
**conditionalParentValue** | **String** | For conditional fields, this is the value of the parent tab that controls the tab&#39;s visibility.  If the parent tab is a Checkbox, Radio button, Optional Signature, or Optional Initial use \&quot;on\&quot; as the value to show that the parent tab is active.  | [optional] 
**conditionalParentValueMetadata** | [**PropertyMetadata**](PropertyMetadata.md) |  | [optional] 
**documentId** | **String** | The &#x60;documentId&#x60; is set by the API client. It is an integer that falls between &#x60;1&#x60; and 2,147,483,647. The value is encoded as a string without commas. The values &#x60;1&#x60;, &#x60;2&#x60;, &#x60;3&#x60;, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a &#x60;documentId&#x60; property that specifies the document on which to place the tab. | [optional] 
**documentIdMetadata** | [**PropertyMetadata**](PropertyMetadata.md) |  | [optional] 
**groupName** | **String** | The name of the group. The search_text provided in the call automatically performs a wild card search on group_name. | [optional] 
**groupNameMetadata** | [**PropertyMetadata**](PropertyMetadata.md) |  | [optional] 
**radios** | [[**Radio**](Radio.md)] | Specifies the locations and status for radio buttons that are grouped together. | [optional] 
**recipientId** | **String** | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each &#x60;recipientId&#x60; must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a &#x60;recipientId&#x60; of &#x60;1&#x60;. | [optional] 
**recipientIdGuid** | **String** | The globally-unique identifier (GUID) for a specific recipient on a specific envelope. If the same recipient is associated with multiple envelopes, they will have a different GUID for each one. Read only. | [optional] 
**recipientIdGuidMetadata** | [**PropertyMetadata**](PropertyMetadata.md) |  | [optional] 
**recipientIdMetadata** | [**PropertyMetadata**](PropertyMetadata.md) |  | [optional] 
**requireAll** | **String** | When set to **true** and shared is true, information must be entered in this field to complete the envelope.  | [optional] 
**requireAllMetadata** | [**PropertyMetadata**](PropertyMetadata.md) |  | [optional] 
**requireInitialOnSharedChange** | **String** | Optional element for field markup. When set to **true**, the signer is required to initial when they modify a shared field. | [optional] 
**requireInitialOnSharedChangeMetadata** | [**PropertyMetadata**](PropertyMetadata.md) |  | [optional] 
**shared** | **String** | When set to **true**, this custom tab is shared. | [optional] 
**sharedMetadata** | [**PropertyMetadata**](PropertyMetadata.md) |  | [optional] 
**tabType** | **String** | Indicates the type of tab (for example, &#x60;signHere&#x60; or &#x60;initialHere&#x60;). | [optional] 
**tabTypeMetadata** | [**PropertyMetadata**](PropertyMetadata.md) |  | [optional] 
**templateLocked** | **String** | When set to **true**, the sender cannot change any attributes of the recipient. Used only when working with template recipients.  | [optional] 
**templateLockedMetadata** | [**PropertyMetadata**](PropertyMetadata.md) |  | [optional] 
**templateRequired** | **String** | When set to **true**, the sender may not remove the recipient. Used only when working with template recipients. | [optional] 
**templateRequiredMetadata** | [**PropertyMetadata**](PropertyMetadata.md) |  | [optional] 
**tooltip** | **String** | The text of a tooltip that appears when a user hovers over a form field or tab. | [optional] 
**tooltipMetadata** | [**PropertyMetadata**](PropertyMetadata.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


