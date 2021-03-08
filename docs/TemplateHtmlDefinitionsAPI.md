# TemplateHtmlDefinitionsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**responsiveHtmlGetTemplateHtmlDefinitions**](TemplateHtmlDefinitionsAPI.md#responsivehtmlgettemplatehtmldefinitions) | **GET** /v2.1/accounts/{accountId}/templates/{templateId}/html_definitions | 


# **responsiveHtmlGetTemplateHtmlDefinitions**
```swift
    open class func responsiveHtmlGetTemplateHtmlDefinitions(accountId: String, templateId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ResponsiveHtmlGetTemplateHtmlDefinitions>
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let templateId = "templateId_example" // String | The id of the template.

TemplateHtmlDefinitionsAPI.responsiveHtmlGetTemplateHtmlDefinitions(accountId: accountId, templateId: templateId).whenComplete { result in
    switch result {
    case .failure(let error):
    // process error
    case .success(let response):
        switch response {
        // process decoded response value or raw ClientResponse
        case .http200(let value, let raw):
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

### Return type

#### ResponsiveHtmlGetTemplateHtmlDefinitions

```swift
public enum ResponsiveHtmlGetTemplateHtmlDefinitions {
    case http200(value: DocumentHtmlDefinitionOriginals?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: DocumentHtmlDefinitionOriginals?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

