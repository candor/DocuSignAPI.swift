# Filter

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**actionRequired** | **String** | When set to **true**, the current user needs to take action on the item. | [optional] 
**expires** | **String** | The number of days a sent envelope remains active before it expires. | [optional] 
**folderIds** | **String** | Filters for any combination of folder ids and folder types. The possible folder types are:  - &#x60;awaiting_my_signature&#x60; - &#x60;completed&#x60; - &#x60;draft&#x60; - &#x60;drafts&#x60; - &#x60;expiring_soon&#x60; - &#x60;inbox&#x60; - &#x60;out_for_signature&#x60; - &#x60;recyclebin&#x60; - &#x60;sentitems&#x60; - &#x60;waiting_for_others&#x60; | [optional] 
**fromDateTime** | **String** | The UTC DateTime of the beginning of a date range. If no value is provided, the default search is the previous 30 days. | [optional] 
**isTemplate** | **String** | When set to **true**, the item is a template. | [optional] 
**order** | **String** | (Optional) The order in which to sort the results.  Valid values are:    * &#x60;asc&#x60;: Ascending order. * &#x60;desc&#x60;: Descending order.  | [optional] 
**orderBy** | **String** | The field used to sort the results.  Example: &#x60;Created&#x60; | [optional] 
**searchTarget** | **String** | Reserved for DocuSign. | [optional] 
**searchText** | **String** | A free text search field for searching across the items in a folder. The search looks for the text that you enter in the recipient names and emails, envelope custom fields, sender name, and subject. | [optional] 
**status** | **String** | The status of the envelope. By default, all statuses are returned.  For details, see [Envelope Status Code Descriptions](https://developers.docusign.com/esign-rest-api/guides/status-and-error-codes#envelope-status-code-descriptions). | [optional] 
**toDateTime** | **String** | The UTC DateTime of the end of a date range. If no value is provided, the default search is to the current date. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


