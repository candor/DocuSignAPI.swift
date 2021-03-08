# ConditionalRecipientRuleFilter

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**&#x60;operator&#x60;** | **String** |  | [optional] 
**recipientId** | **String** | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each &#x60;recipientId&#x60; must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a &#x60;recipientId&#x60; of &#x60;1&#x60;. | [optional] 
**scope** | **String** | Must be set to \&quot;api\&quot;. | [optional] 
**tabId** | **String** | The unique identifier for the tab. | [optional] 
**tabLabel** | **String** | The label associated with the tab. This value may be an empty string. If no value is provided, the tab type is used as the value.  Maximum Length: 500 characters.  | [optional] 
**value** | **String** | Specifies the value of the tab.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


