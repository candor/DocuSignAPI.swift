# TemplateDocumentResponsiveHtmlPreviewAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**responsiveHtmlPostTemplateDocumentResponsiveHtmlPreview**](TemplateDocumentResponsiveHtmlPreviewAPI.md#responsivehtmlposttemplatedocumentresponsivehtmlpreview) | **POST** /v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/responsive_html_preview | Creates a preview of the responsive version of a template document.


# **responsiveHtmlPostTemplateDocumentResponsiveHtmlPreview**
```swift
    open class func responsiveHtmlPostTemplateDocumentResponsiveHtmlPreview(accountId: String, documentId: String, templateId: String, documentHtmlDefinition: DocumentHtmlDefinition? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ResponsiveHtmlPostTemplateDocumentResponsiveHtmlPreview>
```

Creates a preview of the responsive version of a template document.

Creates a preview of the [responsive](https://developers.docusign.com/esign-rest-api/guides/responsive-signing/api-overview), HTML version of a specific template document. This method enables you to preview a PDF document conversion to responsive HTML across device types prior to sending.   The request body is a `documentHtmlDefinition` object, which holds the responsive signing parameters that define how to generate the HTML version of the signing document.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
let templateId = "templateId_example" // String | The id of the template.
let documentHtmlDefinition = documentHtmlDefinition(displayAnchorPrefix: "displayAnchorPrefix_example", displayAnchors: [nil], displayOrder: "displayOrder_example", displayPageNumber: "displayPageNumber_example", documentGuid: "documentGuid_example", documentId: "documentId_example", headerLabel: "headerLabel_example", maxScreenWidth: "maxScreenWidth_example", removeEmptyTags: "removeEmptyTags_example", showMobileOptimizedToggle: "showMobileOptimizedToggle_example", source: "source_example") // DocumentHtmlDefinition |  (optional)

// Creates a preview of the responsive version of a template document.
TemplateDocumentResponsiveHtmlPreviewAPI.responsiveHtmlPostTemplateDocumentResponsiveHtmlPreview(accountId: accountId, documentId: documentId, templateId: templateId, documentHtmlDefinition: documentHtmlDefinition).whenComplete { result in
    switch result {
    case .failure(let error):
    // process error
    case .success(let response):
        switch response {
        // process decoded response value or raw ClientResponse
        case .http201(let value, let raw):
        case .http400(let value, let raw):
        case .http0(let value, let raw):
        }
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountId** | **String** | The external account number (int) or account ID GUID. | 
 **documentId** | **String** | The &#x60;documentId&#x60; is set by the API client. It is an integer that falls between &#x60;1&#x60; and 2,147,483,647. The value is encoded as a string without commas. The values &#x60;1&#x60;, &#x60;2&#x60;, &#x60;3&#x60;, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a &#x60;documentId&#x60; property that specifies the document on which to place the tab. | 
 **templateId** | **String** | The id of the template. | 
 **documentHtmlDefinition** | [**DocumentHtmlDefinition**](DocumentHtmlDefinition.md) |  | [optional] 

### Return type

#### ResponsiveHtmlPostTemplateDocumentResponsiveHtmlPreview

```swift
public enum ResponsiveHtmlPostTemplateDocumentResponsiveHtmlPreview {
    case http201(value: DocumentHtmlDefinitions?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: DocumentHtmlDefinitions?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

