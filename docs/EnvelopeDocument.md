# EnvelopeDocument

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**addedRecipientIds** | **[String]** | If recipients were added by converting form fields into tabs, their ids appear here. Read only. | [optional] 
**attachmentTabId** | **String** | If this document is an attachment to another document in the envelope, this is the id of the attachment tab it is associated with on the other document. | [optional] 
**authoritativeCopy** | **String** | When **true**, marks all of the documents in the envelope as authoritative copies.  **Note**: You can override this value for a specific document. For example, you can set the &#x60;authoritativeCopy&#x60; property to **true** at the envelope level, but turn it off for a single document by setting the &#x60;authoritativeCopy&#x60; property for the document to **false**. | [optional] 
**authoritativeCopyMetadata** | [**PropertyMetadata**](PropertyMetadata.md) |  | [optional] 
**availableDocumentTypes** | [SignatureType] |  | [optional] 
**containsPdfFormFields** | **String** | When **true**, the document has editable form fields that are made available through a PDF format. | [optional] 
**display** | **String** | This string sets the display and behavior properties of the document during signing. The possible values are:  * &#x60;modal&#x60;&lt;br&gt;   The document is shown as a supplement action strip   and can be viewed, downloaded, or printed in a modal window.   This is the recommended value for supplemental documents.   * &#x60;download&#x60;&lt;br&gt;   The document is shown as a supplement action strip   and can be viewed, downloaded, or printed in a new browser window.   * &#x60;inline&#x60;&lt;br&gt;   The document is shown in the normal signing window.   This value is not used with supplemental documents,   but is the default value for all other documents.  | [optional] 
**displayMetadata** | [**PropertyMetadata**](PropertyMetadata.md) |  | [optional] 
**documentFields** | [NameValue] | An object containing information about the custom fields on the document. | [optional] 
**documentId** | **String** | The id of the document that the tab is placed on. This value must refer to the id of an existing document. | [optional] 
**documentIdGuid** | **String** | The GUID of the document. | [optional] 
**errorDetails** | [**ErrorDetails**](ErrorDetails.md) |  | [optional] 
**includeInDownload** | **String** | When set to **true**, the document is included in the combined document download (&#x60;documentsCombinedUri&#x60;).  The default value is **true**.  | [optional] 
**includeInDownloadMetadata** | [**PropertyMetadata**](PropertyMetadata.md) |  | [optional] 
**name** | **String** | The document&#39;s file name.   Example: &#x60;Q1-Report.docx&#x60; | [optional] 
**nameMetadata** | [**PropertyMetadata**](PropertyMetadata.md) |  | [optional] 
**order** | **String** | (Optional) The order in which to sort the results.  Valid values are:    * &#x60;asc&#x60;: Ascending order. * &#x60;desc&#x60;: Descending order.  | [optional] 
**pages** | [Page] | An array of page objects that contain information about the pages in the document. | [optional] 
**signerMustAcknowledge** | **String** | Sets how the signer interacts with the supplemental document. The possible values are:   * &#x60;no_interaction&#x60;&lt;br&gt;   No recipient action is required.   * &#x60;view&#x60;&lt;br&gt;   The recipient is required to view the document.   * &#x60;accept&#x60;&lt;br&gt;   The recipient is required to accept the document by selecting accept during signing, but is not required to view the document.   * &#x60;view_accept&#x60;&lt;br&gt;   The recipient is required to view and accept the document.     | [optional] 
**signerMustAcknowledgeMetadata** | [**PropertyMetadata**](PropertyMetadata.md) |  | [optional] 
**sizeBytes** | **String** |  | [optional] 
**templateLocked** | **String** | When set to **true**, the sender cannot change any attributes of the recipient. Used only when working with template recipients.  | [optional] 
**templateRequired** | **String** | When set to **true**, the sender may not remove the recipient. Used only when working with template recipients. | [optional] 
**type** | **String** |  | [optional] 
**uri** | **String** | The URI for retrieving the document. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


