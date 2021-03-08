# AccountWatermarksAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**watermarkGetWatermark**](AccountWatermarksAPI.md#watermarkgetwatermark) | **GET** /v2.1/accounts/{accountId}/watermark | Get watermark information.
[**watermarkPreviewPutWatermarkPreview**](AccountWatermarksAPI.md#watermarkpreviewputwatermarkpreview) | **PUT** /v2.1/accounts/{accountId}/watermark/preview | Get watermark preview.
[**watermarkPutWatermark**](AccountWatermarksAPI.md#watermarkputwatermark) | **PUT** /v2.1/accounts/{accountId}/watermark | Update watermark information.


# **watermarkGetWatermark**
```swift
    open class func watermarkGetWatermark(accountId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<WatermarkGetWatermark>
```

Get watermark information.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.

// Get watermark information.
AccountWatermarksAPI.watermarkGetWatermark(accountId: accountId).whenComplete { result in
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

### Return type

#### WatermarkGetWatermark

```swift
public enum WatermarkGetWatermark {
    case http200(value: Watermark?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Watermark?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **watermarkPreviewPutWatermarkPreview**
```swift
    open class func watermarkPreviewPutWatermarkPreview(accountId: String, watermark: Watermark? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<WatermarkPreviewPutWatermarkPreview>
```

Get watermark preview.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let watermark = watermark(displayAngle: "displayAngle_example", enabled: "enabled_example", font: "font_example", fontColor: "fontColor_example", fontSize: "fontSize_example", id: "id_example", imageBase64: "imageBase64_example", transparency: "transparency_example", watermarkText: "watermarkText_example") // Watermark | When set to **true**, the account has the watermark feature enabled, and the envelope is not complete, then the watermark for the account is added to the PDF documents. This option can remove the watermark.  (optional)

// Get watermark preview.
AccountWatermarksAPI.watermarkPreviewPutWatermarkPreview(accountId: accountId, watermark: watermark).whenComplete { result in
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
 **watermark** | [**Watermark**](Watermark.md) | When set to **true**, the account has the watermark feature enabled, and the envelope is not complete, then the watermark for the account is added to the PDF documents. This option can remove the watermark.  | [optional] 

### Return type

#### WatermarkPreviewPutWatermarkPreview

```swift
public enum WatermarkPreviewPutWatermarkPreview {
    case http200(value: Watermark?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Watermark?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **watermarkPutWatermark**
```swift
    open class func watermarkPutWatermark(accountId: String, watermark: Watermark? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<WatermarkPutWatermark>
```

Update watermark information.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let watermark = watermark(displayAngle: "displayAngle_example", enabled: "enabled_example", font: "font_example", fontColor: "fontColor_example", fontSize: "fontSize_example", id: "id_example", imageBase64: "imageBase64_example", transparency: "transparency_example", watermarkText: "watermarkText_example") // Watermark | When set to **true**, the account has the watermark feature enabled, and the envelope is not complete, then the watermark for the account is added to the PDF documents. This option can remove the watermark.  (optional)

// Update watermark information.
AccountWatermarksAPI.watermarkPutWatermark(accountId: accountId, watermark: watermark).whenComplete { result in
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
 **watermark** | [**Watermark**](Watermark.md) | When set to **true**, the account has the watermark feature enabled, and the envelope is not complete, then the watermark for the account is added to the PDF documents. This option can remove the watermark.  | [optional] 

### Return type

#### WatermarkPutWatermark

```swift
public enum WatermarkPutWatermark {
    case http200(value: Watermark?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Watermark?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

