# DocumentHtmlDefinition

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**displayAnchorPrefix** | **String** | Contains text that all display anchors must start with. Using at least 4 characters will improve anchor processing performance. | [optional] 
**displayAnchors** | [[**DocumentHtmlDisplayAnchor**](DocumentHtmlDisplayAnchor.md)] | An object that defines how to handle a section of the HTML in signing. This property enables an incoming request to make a section of the HTML collapsible and expandable or hidden from view. A start anchor, end anchor, or both are required. If the anchors are not found, the display anchor will be ignored. For a list of the available types, see the &#x60;display&#x60; enum. | [optional] 
**displayOrder** | **String** | The position on the page where the display section appears. | [optional] 
**displayPageNumber** | **String** | The number of the page on which the display section appears. | [optional] 
**documentGuid** | **String** | The GUID of the document. | [optional] 
**documentId** | **String** | The &#x60;documentId&#x60; is set by the API client. It is an integer that falls between &#x60;1&#x60; and 2,147,483,647. The value is encoded as a string without commas. The values &#x60;1&#x60;, &#x60;2&#x60;, &#x60;3&#x60;, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a &#x60;documentId&#x60; property that specifies the document on which to place the tab. | [optional] 
**headerLabel** | **String** | Header text or an HTML tag to place above the responsive HTML block. | [optional] 
**maxScreenWidth** | **String** | If set, the responsive HTML version of the signing document will only display on screens with the specified pixel width or less. If the screen is larger than the value that you specify, the default PDF version of the content displays instead. | [optional] 
**removeEmptyTags** | **String** | Holds a comma-separated list of HTML tags to remove if they have no text within their node (including child nodes). | [optional] 
**showMobileOptimizedToggle** | **String** | When set to **true**, the **Mobile-Friendly** toggle displays at the top of the screen on the user&#39;s mobile device. This toggle enables the user to switch between the mobile-friendly and PDF versions of a document. For example, the recipient can use this toggle to review the document using the PDF view before they finish signing. | [optional] 
**source** | **String** | Specifies the type of responsive signing that will be used with the document. Valid strings are:  - &#x60;document&#x60;: The HTML signing page will be generated from the provided document. For details, see [Converting a PDF to a signable HTML document](https://developers.docusign.com/esign-rest-api/guides/responsive-signing/converting-pdf). - &#x60;html&#x60;: The HTML signing page will be passed directly. For details, see [Converting a PDF to a signable HTML document](https://developers.docusign.com/esign-rest-api/guides/responsive-signing/converting-pdf). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


