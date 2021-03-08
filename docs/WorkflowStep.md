# WorkflowStep

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action** | **String** | Indicates the action to perform.  - &#x60;pause_before&#x60;: The workflow should pause before the trigger described by &#x60;triggerOnItem&#x60; is reached. - &#x60;pause_after&#x60;: The workflow should pause after the trigger described by &#x60;triggerOnItem&#x60; is processed.  | [optional] 
**completedDate** | **String** | The timestamp of when the workflow step transitioned to &#x60;completed&#x60; status. | [optional] 
**itemId** | **String** | The unique ID of the item being triggered. | [optional] 
**recipientRouting** | [**RecipientRouting**](RecipientRouting.md) |  | [optional] 
**status** | **String** | The status of the step. One of:  - &#x60;inactive&#x60; - &#x60;in_progress&#x60; - &#x60;paused&#x60; - &#x60;pending&#x60; - &#x60;completed&#x60;  This is a read-only property. | [optional] 
**triggeredDate** | **String** | The timestamp of when the workflow step transitioned to &#x60;in_progress&#x60; status. | [optional] 
**triggerOnItem** | **String** | The type of item that triggers this workflow step. Currently, only &#x60;routing_order&#x60;, is the only supported value. | [optional] 
**workflowStepId** | **String** | A unique identifier for this workflow step. This value is available from the &#x60;currentWorkflowStepId&#x60; property of the &#x60;workflow&#x60; object, | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


