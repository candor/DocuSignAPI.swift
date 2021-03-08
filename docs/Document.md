# Document

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**applyAnchorTabs** | **String** | Reserved for DocuSign. | [optional] 
**display** | **String** | This string sets the display and behavior properties of the document during signing. The possible values are:  * &#x60;modal&#x60;&lt;br&gt;   The document is shown as a supplement action strip   and can be viewed, downloaded, or printed in a modal window.   This is the recommended value for supplemental documents.   * &#x60;download&#x60;&lt;br&gt;   The document is shown as a supplement action strip   and can be viewed, downloaded, or printed in a new browser window.   * &#x60;inline&#x60;&lt;br&gt;   The document is shown in the normal signing window.   This value is not used with supplemental documents,   but is the default value for all other documents.  | [optional] 
**documentBase64** | **String** | The document&#39;s bytes. This field can be used to include a base64 version of the document bytes within an envelope definition instead of sending the document using a multi-part HTTP request. The maximum document size is smaller if this field is used due to the overhead of the base64 encoding. | [optional] 
**documentFields** | [[**NameValue**](NameValue.md)] |  | [optional] 
**documentId** | **String** | Specifies the document ID of this document. This value is used by tabs to determine which document they appear in. | [optional] 
**encryptedWithKeyManager** | **String** | When set to **true**, the document is been already encrypted by the sender for use with the DocuSign Key Manager Security Appliance.   | [optional] 
**fileExtension** | **String** | The file extension type of the document. Non-PDF documents are converted to PDF.  If the document is not a PDF, &#x60;fileExtension&#x60; is required.  If you try to upload a non-PDF document without a &#x60;fileExtension&#x60;, you will receive an \&quot;unable to load document\&quot; error message.     | [optional] 
**fileFormatHint** | **String** |  | [optional] 
**htmlDefinition** | [**DocumentHtmlDefinition**](DocumentHtmlDefinition.md) |  | [optional] 
**includeInDownload** | **String** | When set to **true**, the document is included in the combined document download (&#x60;documentsCombinedUri&#x60;).  The default value is **true**.  | [optional] 
**matchBoxes** | [[**MatchBox**](MatchBox.md)] | Matchboxes define areas in a document for document matching when you are creating envelopes. They are only used when you upload and edit a template.   A matchbox consists of 5 elements:  * pageNumber - The document page number  on which the matchbox will appear.  * xPosition - The x position of the matchbox on a page.  * yPosition - The y position of the matchbox on a page. * width - The width of the matchbox.  * height - The height of the matchbox.   | [optional] 
**name** | **String** | The name of the document. | [optional] 
**order** | **String** | (Optional) The order in which to sort the results.  Valid values are:    * &#x60;asc&#x60;: Ascending order. * &#x60;desc&#x60;: Descending order.  | [optional] 
**pages** | **String** | An array of page objects. | [optional] 
**password** | **String** | The user&#39;s encrypted password hash. | [optional] 
**pdfFormFieldOption** | **String** |  | [optional] 
**remoteUrl** | **String** | The file id from the cloud storage service where the document is located. This information is returned using [CloudStorage::listFolders](https://developers.docusign.com/esign-rest-api/reference/CloudStorage/CloudStorage/listFolders) or [CloudStorage::list](https://developers.docusign.com/esign-rest-api/reference/CloudStorage/CloudStorage/list).  | [optional] 
**signerMustAcknowledge** | **String** | Sets how the signer interacts with the supplemental document. The possible values are:   * &#x60;no_interaction&#x60;&lt;br&gt;   No recipient action is required.   * &#x60;view&#x60;&lt;br&gt;   The recipient is required to view the document.   * &#x60;accept&#x60;&lt;br&gt;   The recipient is required to accept the document by selecting accept during signing, but is not required to view the document.   * &#x60;view_accept&#x60;&lt;br&gt;   The recipient is required to view and accept the document.     | [optional] 
**signerMustAcknowledgeUseAccountDefault** | **Bool** |  | [optional] 
**tabs** | [**EnvelopeRecipientTabs**](EnvelopeRecipientTabs.md) |  | [optional] 
**templateLocked** | **String** | When set to **true**, the sender cannot change any attributes of the recipient. Used only when working with template recipients.  | [optional] 
**templateRequired** | **String** | When set to **true**, the sender may not remove the recipient. Used only when working with template recipients. | [optional] 
**transformPdfFields** | **String** | When set to **true**, PDF form field data is transformed into document tab values when the PDF form field name matches the DocuSign custom tab tabLabel. The resulting PDF form data is also returned in the PDF meta data when requesting the document PDF.  | [optional] 
**uri** | **String** | A URI containing the user ID. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


