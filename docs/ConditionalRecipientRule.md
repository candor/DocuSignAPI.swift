# ConditionalRecipientRule

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**conditions** | [ConditionalRecipientRuleCondition] | An array of conditions that satisfy the rule. | [optional] 
**order** | **String** | An integer that specifies the order in which rules are processed. Lower values are processed before higher values. | [optional] 
**recipientGroup** | [**RecipientGroup**](RecipientGroup.md) |  | [optional] 
**recipientId** | **String** | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each &#x60;recipientId&#x60; must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a &#x60;recipientId&#x60; of &#x60;1&#x60;. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


