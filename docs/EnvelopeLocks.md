# EnvelopeLocks

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errorDetails** | [**ErrorDetails**](ErrorDetails.md) |  | [optional] 
**lockDurationInSeconds** | **String** | Sets the time, in seconds, until the lock expires when there is no activity on the envelope.  The default value is 300 seconds. The maximum value is 1,800 seconds.  The lock duration can be extended.  | [optional] 
**lockedByApp** | **String** | The human-readable name of the application that is locking the envelope or template. This value displays to the user in error messages when lock conflicts occur. | [optional] 
**lockedByUser** | [**UserInfo**](UserInfo.md) |  | [optional] 
**lockedUntilDateTime** | **String** | The date and time that the lock expires. | [optional] 
**lockToken** | **String** | A unique identifier provided to the owner of the lock. You must use this token with subsequent calls to prove ownership of the lock. | [optional] 
**lockType** | **String** | The type of lock.  Currently &#x60;edit&#x60; is the only supported type. | [optional] 
**useScratchPad** | **String** | When set to **true**, a scratchpad is used to edit information.   | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


