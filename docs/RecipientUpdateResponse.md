# RecipientUpdateResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**combined** | **String** | When you use the query parameter &#x60;combine_same_order_recipients&#x60; on the PUT Recipients call, the &#x60;recipientUpdateResponse&#x60; returns this property. When set to **true**, it indicates that the recipient has been combined or merged with a matching recipient. Recipient matching occurs as part of template matching, and is based on Recipient Role and Routing Order. | [optional] 
**errorDetails** | [**ErrorDetails**](ErrorDetails.md) |  | [optional] 
**recipientId** | **String** | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each &#x60;recipientId&#x60; must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a &#x60;recipientId&#x60; of &#x60;1&#x60;. | [optional] 
**recipientIdGuid** | **String** | The globally-unique identifier (GUID) for a specific recipient on a specific envelope. If the same recipient is associated with multiple envelopes, they will have a different GUID for each one. Read only. | [optional] 
**tabs** | [**EnvelopeRecipientTabs**](EnvelopeRecipientTabs.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


