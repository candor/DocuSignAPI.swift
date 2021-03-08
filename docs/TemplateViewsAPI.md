# TemplateViewsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**viewsPostTemplateEditView**](TemplateViewsAPI.md#viewsposttemplateeditview) | **POST** /v2.1/accounts/{accountId}/templates/{templateId}/views/edit | Gets a URL for a template edit view.


# **viewsPostTemplateEditView**
```swift
    open class func viewsPostTemplateEditView(accountId: String, templateId: String, returnUrlRequest: ReturnUrlRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ViewsPostTemplateEditView>
```

Gets a URL for a template edit view.

This method returns a URL for starting an edit view of a template that uses the DocuSign Template UI.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let templateId = "templateId_example" // String | The id of the template.
let returnUrlRequest = returnUrlRequest(returnUrl: "returnUrl_example") // ReturnUrlRequest |  (optional)

// Gets a URL for a template edit view.
TemplateViewsAPI.viewsPostTemplateEditView(accountId: accountId, templateId: templateId, returnUrlRequest: returnUrlRequest).whenComplete { result in
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
 **templateId** | **String** | The id of the template. | 
 **returnUrlRequest** | [**ReturnUrlRequest**](ReturnUrlRequest.md) |  | [optional] 

### Return type

#### ViewsPostTemplateEditView

```swift
public enum ViewsPostTemplateEditView {
    case http201(value: ViewUrl?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ViewUrl?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

