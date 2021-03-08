# BrandResources

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdByUserInfo** | [**UserInfo**](UserInfo.md) |  | [optional] 
**createdDate** | **String** | The date and time that the brand resource was created. | [optional] 
**dataNotSavedNotInMaster** | **[String]** | Deprecated. | [optional] 
**modifiedByUserInfo** | [**UserInfo**](UserInfo.md) |  | [optional] 
**modifiedDate** | **String** | The date on which this user record was last modified. | [optional] 
**modifiedTemplates** | **[String]** | This property is returned in the response to the [AccountBrands::listResources][listResources] request. It contains a list of any email templates that have been modified to differ from the master resource files.  [listResources]: /esign-rest-api/reference/Accounts/AccountBrands/listResources | [optional] 
**resourcesContentType** | **String** | The type of brand resource file. A brand uses a different resource file to control each of the following experiences:  - Sending (&#x60;sending&#x60;) - Signing (&#x60;signing&#x60;) - Email messages (&#x60;email&#x60;) - Captive (embedded) signing (&#x60;signing_captive&#x60;)  You can modify the default email messages and formats in these files and upload them to your brand to customize the user experience. | [optional] 
**resourcesContentUri** | **String** | The URI for the brand resource file. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


