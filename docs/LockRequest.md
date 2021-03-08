# LockRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**lockDurationInSeconds** | **String** | The number of seconds to lock the envelope for editing.  This value must be greater than &#x60;0&#x60; seconds. | [optional] 
**lockedByApp** | **String** | The human-readable name of the application that is locking the envelope or template. This value displays to the user in error messages when lock conflicts occur. | [optional] 
**lockType** | **String** | The type of lock.  Currently &#x60;edit&#x60; is the only supported type. | [optional] 
**templatePassword** | **String** | The [password for the template](https://support.docusign.com/en/guides/ndse-user-guide-template-passwords). If you are using a lock for a template that has a password or an envelope that is based on a template that has a password, you must enter the &#x60;templatePassword&#x60; to save the changes. | [optional] 
**useScratchPad** | **String** | When set to **true**, a scratchpad is used to edit information.   | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


