# CorrectViewRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**returnUrl** | **String** | (Optional) The URL to which the user should be redirected after the correct/send view session has ended. DocuSign redirects to this URL and includes an event parameter that your app can use.  Maximum Length: 500 characters. If the &#x60;returnUrl&#x60; exceeds this limit, the user is redirected to a truncated URL.  The event parameters returned are:  * &#x60;send&#x60; (user corrected and sent the envelope) * &#x60;save&#x60; (user saved the envelope) * &#x60;cancel&#x60; (user canceled the transaction.) * &#x60;error&#x60; (there was an error when performing the correct or send) * &#x60;sessionEnd&#x60; (the session ended before the user completed a different action)  **Note**: Include &#x60;https://&#x60; in the URL or the redirect might not succeed on some browsers. | [optional] 
**suppressNavigation** | **String** | Specifies whether the window is displayed with or without dressing. | [optional] 
**viewUrl** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


