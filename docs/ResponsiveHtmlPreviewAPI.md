# ResponsiveHtmlPreviewAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**responsiveHtmlPostResponsiveHtmlPreview**](ResponsiveHtmlPreviewAPI.md#responsivehtmlpostresponsivehtmlpreview) | **POST** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/responsive_html_preview | Creates a preview of the responsive versions of all of the documents in an envelope.


# **responsiveHtmlPostResponsiveHtmlPreview**
```swift
    open class func responsiveHtmlPostResponsiveHtmlPreview(accountId: String, envelopeId: String, documentHtmlDefinition: DocumentHtmlDefinition? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ResponsiveHtmlPostResponsiveHtmlPreview>
```

Creates a preview of the responsive versions of all of the documents in an envelope.

Creates a preview of the [responsive](https://developers.docusign.com/esign-rest-api/guides/responsive-signing/api-overview), HTML versions of all of the documents in an envelope. This method enables you to preview the PDF document conversions to responsive HTML across device types prior to sending.   The request body is a `documentHtmlDefinition` object, which holds the responsive signing parameters that define how to generate the HTML version of the documents.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let documentHtmlDefinition = documentHtmlDefinition(displayAnchorPrefix: "displayAnchorPrefix_example", displayAnchors: [documentHtmlDisplayAnchor(caseSensitive: false, displaySettings: documentHtmlDisplaySettings(cellStyle: "cellStyle_example", collapsibleSettings: documentHtmlCollapsibleDisplaySettings(arrowClosed: "arrowClosed_example", arrowColor: "arrowColor_example", arrowLocation: "arrowLocation_example", arrowOpen: "arrowOpen_example", arrowSize: "arrowSize_example", arrowStyle: "arrowStyle_example", containerStyle: "containerStyle_example", labelStyle: "labelStyle_example", onlyArrowIsClickable: false, outerLabelAndArrowStyle: "outerLabelAndArrowStyle_example"), display: "display_example", displayLabel: "displayLabel_example", displayOrder: 123, displayPageNumber: 123, hideLabelWhenOpened: false, inlineOuterStyle: "inlineOuterStyle_example", labelWhenOpened: "labelWhenOpened_example", preLabel: "preLabel_example", scrollToTopWhenOpened: false, tableStyle: "tableStyle_example"), endAnchor: "endAnchor_example", removeEndAnchor: false, removeStartAnchor: false, startAnchor: "startAnchor_example")], displayOrder: "displayOrder_example", displayPageNumber: "displayPageNumber_example", documentGuid: "documentGuid_example", documentId: "documentId_example", headerLabel: "headerLabel_example", maxScreenWidth: "maxScreenWidth_example", removeEmptyTags: "removeEmptyTags_example", showMobileOptimizedToggle: "showMobileOptimizedToggle_example", source: "source_example") // DocumentHtmlDefinition |  (optional)

// Creates a preview of the responsive versions of all of the documents in an envelope.
ResponsiveHtmlPreviewAPI.responsiveHtmlPostResponsiveHtmlPreview(accountId: accountId, envelopeId: envelopeId, documentHtmlDefinition: documentHtmlDefinition).whenComplete { result in
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
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **documentHtmlDefinition** | [**DocumentHtmlDefinition**](DocumentHtmlDefinition.md) |  | [optional] 

### Return type

#### ResponsiveHtmlPostResponsiveHtmlPreview

```swift
public enum ResponsiveHtmlPostResponsiveHtmlPreview {
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

