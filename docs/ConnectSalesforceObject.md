# ConnectSalesforceObject

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**active** | **String** | When set to **true**, the &#x60;connectSalesforceObject&#x60; is active. | [optional] 
**description** | **String** | A description of the &#x60;connectSalesforceObject&#x60;. | [optional] 
**id** | **String** | The id of the &#x60;connectSalesforceObject&#x60;. | [optional] 
**insert** | **String** |  | [optional] 
**onCompleteOnly** | **String** | When **true**, Salesforce is updated only when the envelope is complete. | [optional] 
**selectFields** | [ConnectSalesforceField] | The DocuSign and Salesforce fields that you want to use to match a Salesforce object with DocuSign information. This information tells Connect when to send updates to Salesforce. | [optional] 
**sfObject** | **String** | The Salesforce.com object type, such as &#x60;case&#x60;, &#x60;contact&#x60;, or &#x60;opportunity&#x60;. | [optional] 
**sfObjectName** | **String** | A name for the Salesforce object.  **Note**: You can enter any name for the object. It does not have to match the &#x60;sfObject&#x60; property. | [optional] 
**updateFields** | [ConnectSalesforceField] | The DocuSign and Salesforce fields that you want to update.   **Note**: You can choose to update SalesForce (with information from DocuSign) only, update DocuSign only, or both. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


