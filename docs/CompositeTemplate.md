# CompositeTemplate

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**compositeTemplateId** | **String** | The id of this composite template. This id is used as a reference when adding document object information. If used, the document&#39;s &#x60;content-disposition&#x60; must include the composite template ID to which the document should be added. If a composite template ID is not specified in the content-disposition, the document is applied based on the value of the &#x60;documentId&#x60; property only. If no document object is specified, the composite template inherits the first document. | [optional] 
**document** | [**Document**](Document.md) |  | [optional] 
**inlineTemplates** | [InlineTemplate] |  Zero or more inline templates and their position in the overlay. If supplied, they are overlaid into the envelope in the order of their Sequence value. | [optional] 
**pdfMetaDataTemplateSequence** | **String** | A number representing the sequence in which to apply the template that contains the PDF metadata.  Example: &#x60;4&#x60; | [optional] 
**serverTemplates** | [ServerTemplate] | Zero or more server-side templates and their position in the overlay. If supplied, they are overlaid into the envelope in the order of their Sequence value | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


