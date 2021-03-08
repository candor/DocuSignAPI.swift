# TemplatesAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**notificationGetTemplatesTemplateIdNotification**](TemplatesAPI.md#notificationgettemplatestemplateidnotification) | **GET** /v2.1/accounts/{accountId}/templates/{templateId}/notification | Gets template notification information.
[**notificationPutTemplatesTemplateIdNotification**](TemplatesAPI.md#notificationputtemplatestemplateidnotification) | **PUT** /v2.1/accounts/{accountId}/templates/{templateId}/notification | Updates the notification  structure for an existing template.
[**pagesDeleteTemplatePage**](TemplatesAPI.md#pagesdeletetemplatepage) | **DELETE** /v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/pages/{pageNumber} | Deletes a page from a document in an template.
[**pagesGetTemplatePageImage**](TemplatesAPI.md#pagesgettemplatepageimage) | **GET** /v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/pages/{pageNumber}/page_image | Gets a page image from a template for display.
[**pagesGetTemplatePageImages**](TemplatesAPI.md#pagesgettemplatepageimages) | **GET** /v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/pages | Returns document page image(s) based on input.
[**pagesPutTemplatePageImage**](TemplatesAPI.md#pagesputtemplatepageimage) | **PUT** /v2.1/accounts/{accountId}/templates/{templateId}/documents/{documentId}/pages/{pageNumber}/page_image | Rotates page image from a template for display.
[**templatesDeleteTemplatePart**](TemplatesAPI.md#templatesdeletetemplatepart) | **DELETE** /v2.1/accounts/{accountId}/templates/{templateId}/{templatePart} | Removes a member group&#39;s sharing permissions for a template.
[**templatesGetTemplate**](TemplatesAPI.md#templatesgettemplate) | **GET** /v2.1/accounts/{accountId}/templates/{templateId} | Gets a specific template associated with a specified account.
[**templatesGetTemplates**](TemplatesAPI.md#templatesgettemplates) | **GET** /v2.1/accounts/{accountId}/templates | Gets template definitions.
[**templatesPostTemplates**](TemplatesAPI.md#templatesposttemplates) | **POST** /v2.1/accounts/{accountId}/templates | Creates one or more templates.
[**templatesPutTemplate**](TemplatesAPI.md#templatesputtemplate) | **PUT** /v2.1/accounts/{accountId}/templates/{templateId} | Updates an existing template.
[**templatesPutTemplatePart**](TemplatesAPI.md#templatesputtemplatepart) | **PUT** /v2.1/accounts/{accountId}/templates/{templateId}/{templatePart} | Shares a template with a group.


# **notificationGetTemplatesTemplateIdNotification**
```swift
    open class func notificationGetTemplatesTemplateIdNotification(accountId: String, templateId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<NotificationGetTemplatesTemplateIdNotification>
```

Gets template notification information.

Retrieves the envelope notification, reminders and expirations, information for an existing template.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let templateId = "templateId_example" // String | The id of the template.

// Gets template notification information.
TemplatesAPI.notificationGetTemplatesTemplateIdNotification(accountId: accountId, templateId: templateId).whenComplete { result in
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

#### NotificationGetTemplatesTemplateIdNotification

```swift
public enum NotificationGetTemplatesTemplateIdNotification {
    case http200(value: Notification?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Notification?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notificationPutTemplatesTemplateIdNotification**
```swift
    open class func notificationPutTemplatesTemplateIdNotification(accountId: String, templateId: String, templateNotificationRequest: TemplateNotificationRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<NotificationPutTemplatesTemplateIdNotification>
```

Updates the notification  structure for an existing template.

Updates the notification structure for an existing template. Use this endpoint to set reminder and expiration notifications.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let templateId = "templateId_example" // String | The id of the template.
let templateNotificationRequest = templateNotificationRequest(expirations: nil, password: "password_example", reminders: nil, useAccountDefaults: "useAccountDefaults_example") // TemplateNotificationRequest |  (optional)

// Updates the notification  structure for an existing template.
TemplatesAPI.notificationPutTemplatesTemplateIdNotification(accountId: accountId, templateId: templateId, templateNotificationRequest: templateNotificationRequest).whenComplete { result in
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
 **templateNotificationRequest** | [**TemplateNotificationRequest**](TemplateNotificationRequest.md) |  | [optional] 

### Return type

#### NotificationPutTemplatesTemplateIdNotification

```swift
public enum NotificationPutTemplatesTemplateIdNotification {
    case http200(value: Notification?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Notification?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pagesDeleteTemplatePage**
```swift
    open class func pagesDeleteTemplatePage(accountId: String, documentId: String, pageNumber: String, templateId: String, pageRequest: PageRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<PagesDeleteTemplatePage>
```

Deletes a page from a document in an template.

Deletes a page from a document in a template based on the page number.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
let pageNumber = "pageNumber_example" // String | The page number being accessed.
let templateId = "templateId_example" // String | The id of the template.
let pageRequest = pageRequest(password: "password_example", rotate: "rotate_example") // PageRequest |  (optional)

// Deletes a page from a document in an template.
TemplatesAPI.pagesDeleteTemplatePage(accountId: accountId, documentId: documentId, pageNumber: pageNumber, templateId: templateId, pageRequest: pageRequest).whenComplete { result in
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
 **documentId** | **String** | The &#x60;documentId&#x60; is set by the API client. It is an integer that falls between &#x60;1&#x60; and 2,147,483,647. The value is encoded as a string without commas. The values &#x60;1&#x60;, &#x60;2&#x60;, &#x60;3&#x60;, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a &#x60;documentId&#x60; property that specifies the document on which to place the tab. | 
 **pageNumber** | **String** | The page number being accessed. | 
 **templateId** | **String** | The id of the template. | 
 **pageRequest** | [**PageRequest**](PageRequest.md) |  | [optional] 

### Return type

#### PagesDeleteTemplatePage

```swift
public enum PagesDeleteTemplatePage {
    case http200(value: Void?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Void?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pagesGetTemplatePageImage**
```swift
    open class func pagesGetTemplatePageImage(accountId: String, documentId: String, pageNumber: String, templateId: String, dpi: String? = nil, maxHeight: String? = nil, maxWidth: String? = nil, showChanges: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<PagesGetTemplatePageImage>
```

Gets a page image from a template for display.

Retrieves a page image for display from the specified template.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
let pageNumber = "pageNumber_example" // String | The page number being accessed.
let templateId = "templateId_example" // String | The id of the template.
let dpi = "dpi_example" // String | The number of dots per inch (DPI) for the resulting images. Valid values are 1-310 DPI. The default value is 94. (optional)
let maxHeight = "maxHeight_example" // String | Sets the maximum height of the returned images in pixels. (optional)
let maxWidth = "maxWidth_example" // String | Sets the maximum width of the returned images in pixels. (optional)
let showChanges = "showChanges_example" // String |  (optional)

// Gets a page image from a template for display.
TemplatesAPI.pagesGetTemplatePageImage(accountId: accountId, documentId: documentId, pageNumber: pageNumber, templateId: templateId, dpi: dpi, maxHeight: maxHeight, maxWidth: maxWidth, showChanges: showChanges).whenComplete { result in
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
 **documentId** | **String** | The &#x60;documentId&#x60; is set by the API client. It is an integer that falls between &#x60;1&#x60; and 2,147,483,647. The value is encoded as a string without commas. The values &#x60;1&#x60;, &#x60;2&#x60;, &#x60;3&#x60;, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a &#x60;documentId&#x60; property that specifies the document on which to place the tab. | 
 **pageNumber** | **String** | The page number being accessed. | 
 **templateId** | **String** | The id of the template. | 
 **dpi** | **String** | The number of dots per inch (DPI) for the resulting images. Valid values are 1-310 DPI. The default value is 94. | [optional] 
 **maxHeight** | **String** | Sets the maximum height of the returned images in pixels. | [optional] 
 **maxWidth** | **String** | Sets the maximum width of the returned images in pixels. | [optional] 
 **showChanges** | **String** |  | [optional] 

### Return type

#### PagesGetTemplatePageImage

```swift
public enum PagesGetTemplatePageImage {
    case http200(value: Data?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Data?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pagesGetTemplatePageImages**
```swift
    open class func pagesGetTemplatePageImages(accountId: String, documentId: String, templateId: String, count: String? = nil, dpi: String? = nil, maxHeight: String? = nil, maxWidth: String? = nil, nocache: String? = nil, showChanges: String? = nil, startPosition: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<PagesGetTemplatePageImages>
```

Returns document page image(s) based on input.

Returns images of the pages in a template document for display based on the parameters that you specify.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | (Required) The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | (Required) The ID of the document.
let templateId = "templateId_example" // String | (Required) The ID of the template.
let count = "count_example" // String | The maximum number of results to return. (optional)
let dpi = "dpi_example" // String | The number of dots per inch (DPI) for the resulting images. Valid values are 1-310 DPI. The default value is 94. (optional)
let maxHeight = "maxHeight_example" // String | Sets the maximum height of the returned images in pixels. (optional)
let maxWidth = "maxWidth_example" // String | Sets the maximum width of the returned images in pixels. (optional)
let nocache = "nocache_example" // String | If **true**, using cache is disabled and image information is retrieved from a database. **True** is the default value.  (optional)
let showChanges = "showChanges_example" // String | If **true**, changes display in the user interface. (optional)
let startPosition = "startPosition_example" // String | The position within the total result set from which to start returning values. The value **thumbnail** may be used to return the page image. (optional)

// Returns document page image(s) based on input.
TemplatesAPI.pagesGetTemplatePageImages(accountId: accountId, documentId: documentId, templateId: templateId, count: count, dpi: dpi, maxHeight: maxHeight, maxWidth: maxWidth, nocache: nocache, showChanges: showChanges, startPosition: startPosition).whenComplete { result in
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
 **accountId** | **String** | (Required) The external account number (int) or account ID GUID. | 
 **documentId** | **String** | (Required) The ID of the document. | 
 **templateId** | **String** | (Required) The ID of the template. | 
 **count** | **String** | The maximum number of results to return. | [optional] 
 **dpi** | **String** | The number of dots per inch (DPI) for the resulting images. Valid values are 1-310 DPI. The default value is 94. | [optional] 
 **maxHeight** | **String** | Sets the maximum height of the returned images in pixels. | [optional] 
 **maxWidth** | **String** | Sets the maximum width of the returned images in pixels. | [optional] 
 **nocache** | **String** | If **true**, using cache is disabled and image information is retrieved from a database. **True** is the default value.  | [optional] 
 **showChanges** | **String** | If **true**, changes display in the user interface. | [optional] 
 **startPosition** | **String** | The position within the total result set from which to start returning values. The value **thumbnail** may be used to return the page image. | [optional] 

### Return type

#### PagesGetTemplatePageImages

```swift
public enum PagesGetTemplatePageImages {
    case http200(value: PageImages?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: PageImages?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pagesPutTemplatePageImage**
```swift
    open class func pagesPutTemplatePageImage(accountId: String, documentId: String, pageNumber: String, templateId: String, pageRequest: PageRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<PagesPutTemplatePageImage>
```

Rotates page image from a template for display.

Rotates page image from a template for display. The page image can be rotated to the left or right.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
let pageNumber = "pageNumber_example" // String | The page number being accessed.
let templateId = "templateId_example" // String | The id of the template.
let pageRequest = pageRequest(password: "password_example", rotate: "rotate_example") // PageRequest |  (optional)

// Rotates page image from a template for display.
TemplatesAPI.pagesPutTemplatePageImage(accountId: accountId, documentId: documentId, pageNumber: pageNumber, templateId: templateId, pageRequest: pageRequest).whenComplete { result in
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
 **documentId** | **String** | The &#x60;documentId&#x60; is set by the API client. It is an integer that falls between &#x60;1&#x60; and 2,147,483,647. The value is encoded as a string without commas. The values &#x60;1&#x60;, &#x60;2&#x60;, &#x60;3&#x60;, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a &#x60;documentId&#x60; property that specifies the document on which to place the tab. | 
 **pageNumber** | **String** | The page number being accessed. | 
 **templateId** | **String** | The id of the template. | 
 **pageRequest** | [**PageRequest**](PageRequest.md) |  | [optional] 

### Return type

#### PagesPutTemplatePageImage

```swift
public enum PagesPutTemplatePageImage {
    case http200(value: Void?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Void?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **templatesDeleteTemplatePart**
```swift
    open class func templatesDeleteTemplatePart(accountId: String, templateId: String, templatePart: String, groupInformation: GroupInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TemplatesDeleteTemplatePart>
```

Removes a member group's sharing permissions for a template.

Removes a member group's sharing permissions for a specified template.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let templateId = "templateId_example" // String | The id of the template.
let templatePart = "templatePart_example" // String | Currently, the only defined part is **groups**.
let groupInformation = groupInformation(endPosition: "endPosition_example", groups: [nil], nextUri: "nextUri_example", previousUri: "previousUri_example", resultSetSize: "resultSetSize_example", startPosition: "startPosition_example", totalSetSize: "totalSetSize_example") // GroupInformation |  (optional)

// Removes a member group's sharing permissions for a template.
TemplatesAPI.templatesDeleteTemplatePart(accountId: accountId, templateId: templateId, templatePart: templatePart, groupInformation: groupInformation).whenComplete { result in
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
 **templatePart** | **String** | Currently, the only defined part is **groups**. | 
 **groupInformation** | [**GroupInformation**](GroupInformation.md) |  | [optional] 

### Return type

#### TemplatesDeleteTemplatePart

```swift
public enum TemplatesDeleteTemplatePart {
    case http200(value: GroupInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: GroupInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **templatesGetTemplate**
```swift
    open class func templatesGetTemplate(accountId: String, templateId: String, include: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TemplatesGetTemplate>
```

Gets a specific template associated with a specified account.

Retrieves the definition of the specified template.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let templateId = "templateId_example" // String | The id of the template.
let include = "include_example" // String | A comma-separated list of additional template attributes to include in the response. Valid values are:  - `powerforms`: Includes information about PowerForms. - `tabs`: Includes information about tabs. - `documents`: Includes information about documents. - `favorite_template_status`: : Includes the template `favoritedByMe` property in the response. **Note**: You can mark a template as a favorite only in eSignature v2.1. (optional)

// Gets a specific template associated with a specified account.
TemplatesAPI.templatesGetTemplate(accountId: accountId, templateId: templateId, include: include).whenComplete { result in
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
 **include** | **String** | A comma-separated list of additional template attributes to include in the response. Valid values are:  - &#x60;powerforms&#x60;: Includes information about PowerForms. - &#x60;tabs&#x60;: Includes information about tabs. - &#x60;documents&#x60;: Includes information about documents. - &#x60;favorite_template_status&#x60;: : Includes the template &#x60;favoritedByMe&#x60; property in the response. **Note**: You can mark a template as a favorite only in eSignature v2.1. | [optional] 

### Return type

#### TemplatesGetTemplate

```swift
public enum TemplatesGetTemplate {
    case http200(value: EnvelopeTemplate?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeTemplate?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **templatesGetTemplates**
```swift
    open class func templatesGetTemplates(accountId: String, count: String? = nil, createdFromDate: String? = nil, createdToDate: String? = nil, folderIds: String? = nil, folderTypes: String? = nil, fromDate: String? = nil, include: String? = nil, isDownload: String? = nil, modifiedFromDate: String? = nil, modifiedToDate: String? = nil, order: String? = nil, orderBy: String? = nil, searchFields: String? = nil, searchText: String? = nil, sharedByMe: String? = nil, startPosition: String? = nil, templateIds: String? = nil, toDate: String? = nil, usedFromDate: String? = nil, usedToDate: String? = nil, userFilter: String? = nil, userId: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TemplatesGetTemplates>
```

Gets template definitions.

Retrieves the list of templates for the specified account. The request can be limited to a specific folder.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let count = "count_example" // String | The number of records to return in the cache. (optional)
let createdFromDate = "createdFromDate_example" // String | Lists templates created on or after this date. (optional)
let createdToDate = "createdToDate_example" // String | Lists templates modified before this date. (optional)
let folderIds = "folderIds_example" // String | A comma-separated list of folder id GUIDs. (optional)
let folderTypes = "folderTypes_example" // String | The type of folder to return templates for. Possible values are:  - `templates`: Templates in the **My Templates** folder.   Templates in the **Shared Templates**  and **All Template** folders (if the request id from and Admin) are excluded. - `templates_root`: Templates in the root level of the **My Templates** folder, but not in an actual folder. Note that the **My Templates** folder is not a real folder. - `recylebin`: Templates that have been deleted.  (optional)
let fromDate = "fromDate_example" // String | Start of the search date range. Only returns templates created on or after this date/time. If no value is specified, there is no limit on the earliest date created. (optional)
let include = "include_example" // String | A comma-separated list of additional template attributes to include in the response. Valid values are:  - `powerforms`: Includes details about the PowerForms associated with the templates. - `documents`: Includes information about template documents. - `folders`: Includes information about the folder that holds the template. - `favorite_template_status`: Includes the template `favoritedByMe` property. **Note**: You can mark a template as a favorite only in eSignature v2.1. - `advanced_templates`: Includes information about advanced templates. - `recipients`: Includes information about template recipients. - `custom_fields`: Includes information about template custom fields. - `notifications`: Includes information about the notification settings for templates. (optional)
let isDownload = "isDownload_example" // String | When set to **true**, downloads the templates listed in `template_ids` as a collection of JSON definitions in a single zip file.  The `Content-Disposition` header is set in the response. The value of the header provides the filename of the file.  The default is **false**.  **Note**: This parameter only works when you specify a list of templates in the `template_ids` parameter. (optional)
let modifiedFromDate = "modifiedFromDate_example" // String | Lists templates modified on or after this date. (optional)
let modifiedToDate = "modifiedToDate_example" // String | Lists templates modified before this date. (optional)
let order = "order_example" // String | Specifies the sort order of the search results. Valid values are:  - `asc`: Ascending (A to Z) - `desc`: Descending (Z to A) (optional)
let orderBy = "orderBy_example" // String | Specifies how the search results are listed. Valid values are:  - `name`: template name - `modified`: date/time template was last modified - `used`: date/time the template was last used. (optional)
let searchFields = "searchFields_example" // String | A comma-separated list of additional template properties to search.   - `sender`: Include sender name and email in the search. - `recipients`: Include recipient names and emails in the search. - `envelope`: Not used in template searches.  (optional)
let searchText = "searchText_example" // String | The search text to use to search the names of templates. (optional)
let sharedByMe = "sharedByMe_example" // String | If **true**, the response only includes templates shared by the user. If false, the response only returns template not shared by the user. If not specified, the response is not affected. (optional)
let startPosition = "startPosition_example" // String | The starting zero-based index position for the first template to show in the response. This value must be greater than or equal to `0` (zero). (optional)
let templateIds = "templateIds_example" // String | A comma-separated list of template ids to download. This value is valid only when `is_download` is **true**. (optional)
let toDate = "toDate_example" // String | The end of a search date range in UTC DateTime format. When you use this parameter, only templates created up to this date and time are returned.  **Note**: If this property is null, the value defaults to the current date. (optional)
let usedFromDate = "usedFromDate_example" // String | Start of the search date range. Only returns templates used or edited on or after this date/time. If no value is specified, there is no limit on the earliest date used. (optional)
let usedToDate = "usedToDate_example" // String | End of the search date range. Only returns templates used or edited up to this date/time. If no value is provided, this defaults to the current date. (optional)
let userFilter = "userFilter_example" // String | Filters the templates in the response. Valid values are:   - `owned_by_me`: Results include only templates owned by the user. - `shared_with_me`: Results include only templates owned by the user.   - `all`:  Results include all templates owned or shared with the user. (optional)
let userId = "userId_example" // String | The id of the user. (optional)

// Gets template definitions.
TemplatesAPI.templatesGetTemplates(accountId: accountId, count: count, createdFromDate: createdFromDate, createdToDate: createdToDate, folderIds: folderIds, folderTypes: folderTypes, fromDate: fromDate, include: include, isDownload: isDownload, modifiedFromDate: modifiedFromDate, modifiedToDate: modifiedToDate, order: order, orderBy: orderBy, searchFields: searchFields, searchText: searchText, sharedByMe: sharedByMe, startPosition: startPosition, templateIds: templateIds, toDate: toDate, usedFromDate: usedFromDate, usedToDate: usedToDate, userFilter: userFilter, userId: userId).whenComplete { result in
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
 **count** | **String** | The number of records to return in the cache. | [optional] 
 **createdFromDate** | **String** | Lists templates created on or after this date. | [optional] 
 **createdToDate** | **String** | Lists templates modified before this date. | [optional] 
 **folderIds** | **String** | A comma-separated list of folder id GUIDs. | [optional] 
 **folderTypes** | **String** | The type of folder to return templates for. Possible values are:  - &#x60;templates&#x60;: Templates in the **My Templates** folder.   Templates in the **Shared Templates**  and **All Template** folders (if the request id from and Admin) are excluded. - &#x60;templates_root&#x60;: Templates in the root level of the **My Templates** folder, but not in an actual folder. Note that the **My Templates** folder is not a real folder. - &#x60;recylebin&#x60;: Templates that have been deleted.  | [optional] 
 **fromDate** | **String** | Start of the search date range. Only returns templates created on or after this date/time. If no value is specified, there is no limit on the earliest date created. | [optional] 
 **include** | **String** | A comma-separated list of additional template attributes to include in the response. Valid values are:  - &#x60;powerforms&#x60;: Includes details about the PowerForms associated with the templates. - &#x60;documents&#x60;: Includes information about template documents. - &#x60;folders&#x60;: Includes information about the folder that holds the template. - &#x60;favorite_template_status&#x60;: Includes the template &#x60;favoritedByMe&#x60; property. **Note**: You can mark a template as a favorite only in eSignature v2.1. - &#x60;advanced_templates&#x60;: Includes information about advanced templates. - &#x60;recipients&#x60;: Includes information about template recipients. - &#x60;custom_fields&#x60;: Includes information about template custom fields. - &#x60;notifications&#x60;: Includes information about the notification settings for templates. | [optional] 
 **isDownload** | **String** | When set to **true**, downloads the templates listed in &#x60;template_ids&#x60; as a collection of JSON definitions in a single zip file.  The &#x60;Content-Disposition&#x60; header is set in the response. The value of the header provides the filename of the file.  The default is **false**.  **Note**: This parameter only works when you specify a list of templates in the &#x60;template_ids&#x60; parameter. | [optional] 
 **modifiedFromDate** | **String** | Lists templates modified on or after this date. | [optional] 
 **modifiedToDate** | **String** | Lists templates modified before this date. | [optional] 
 **order** | **String** | Specifies the sort order of the search results. Valid values are:  - &#x60;asc&#x60;: Ascending (A to Z) - &#x60;desc&#x60;: Descending (Z to A) | [optional] 
 **orderBy** | **String** | Specifies how the search results are listed. Valid values are:  - &#x60;name&#x60;: template name - &#x60;modified&#x60;: date/time template was last modified - &#x60;used&#x60;: date/time the template was last used. | [optional] 
 **searchFields** | **String** | A comma-separated list of additional template properties to search.   - &#x60;sender&#x60;: Include sender name and email in the search. - &#x60;recipients&#x60;: Include recipient names and emails in the search. - &#x60;envelope&#x60;: Not used in template searches.  | [optional] 
 **searchText** | **String** | The search text to use to search the names of templates. | [optional] 
 **sharedByMe** | **String** | If **true**, the response only includes templates shared by the user. If false, the response only returns template not shared by the user. If not specified, the response is not affected. | [optional] 
 **startPosition** | **String** | The starting zero-based index position for the first template to show in the response. This value must be greater than or equal to &#x60;0&#x60; (zero). | [optional] 
 **templateIds** | **String** | A comma-separated list of template ids to download. This value is valid only when &#x60;is_download&#x60; is **true**. | [optional] 
 **toDate** | **String** | The end of a search date range in UTC DateTime format. When you use this parameter, only templates created up to this date and time are returned.  **Note**: If this property is null, the value defaults to the current date. | [optional] 
 **usedFromDate** | **String** | Start of the search date range. Only returns templates used or edited on or after this date/time. If no value is specified, there is no limit on the earliest date used. | [optional] 
 **usedToDate** | **String** | End of the search date range. Only returns templates used or edited up to this date/time. If no value is provided, this defaults to the current date. | [optional] 
 **userFilter** | **String** | Filters the templates in the response. Valid values are:   - &#x60;owned_by_me&#x60;: Results include only templates owned by the user. - &#x60;shared_with_me&#x60;: Results include only templates owned by the user.   - &#x60;all&#x60;:  Results include all templates owned or shared with the user. | [optional] 
 **userId** | **String** | The id of the user. | [optional] 

### Return type

#### TemplatesGetTemplates

```swift
public enum TemplatesGetTemplates {
    case http200(value: EnvelopeTemplateResults?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeTemplateResults?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **templatesPostTemplates**
```swift
    open class func templatesPostTemplates(accountId: String, envelopeTemplate: EnvelopeTemplate? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TemplatesPostTemplates>
```

Creates one or more templates.

Creates one or more template definitions, using a multipart request for each template.  Templates help streamline the sending process when you frequently send the same or similar documents, or send different documents to the same group of people.  When you create a template, you define placeholder roles. Rather than specifying a person, you specify a role that regularly participates in a transaction that uses the template. Then, when you create or send an envelope based on the template, you assign actual recipients to the template roles. The recipients automatically inherit all of the workflow that is defined for that role in the template, such as the tabs and routing information.  For code examples and more information, see [REST API Templates](https://developers.docusign.com/esign-rest-api/guides/features/templates#sending-from-a-template).  ## Template Email Subject Merge Fields  Placeholder roles have associated merge fields that personalize the email notification that DocuSign sends. For example, the template automatically personalizes the email message by adding placeholders for the recipient's name and email address within the email subject line, based on the recipient's role. When the sender adds the name and email information for the recipient and sends the envelope, the recipient information is automatically merged into the appropriate fields in the email subject line.  Both the sender and the recipients will see the information in the email subject line for any emails associated with the template. This provides an easy way for senders to organize their envelope emails without having to open an envelope to find out who the recipient is.  **Warning: If merging the recipient information into the subject line causes the subject line to exceed 100 characters, then any characters over the 100 character limit are not included in the subject line. For cases where you expect the recipient name or email to be long, you should consider placing the merge field at the start of the email subject.**  To insert a recipient's name into the subject line, add the following text in the `emailSubject` property when you create the template:  `[[<roleName>_UserName]]`  Example:  `\"emailSubject\":\"[[Signer 1_UserName]], Please sign this NDA\",`  To add a recipient's email address in the subject line, add the following text in the `emailSubject` property when you create the template or send an envelope from the template:  `[[<roleName>_Email]]`  Example:  `\"emailSubject\":\"[[Signer 1_Email]], Please sign this NDA\",`  In these examples, the role name specified in the template  is “Signer 1”.  When the envelope is sent, the placeholder will be dynamically substituted with the recipient's name or email.  ## Creating multiple templates  To create multiple templates, you provide a zip file of JSON files. You can also use the Templates::ListTemplates method with the `is_download` query parameter to download a zip file containing your existing templates and use that as a guide. The API supports both .zip and .gzip file formats as input.  You also need to set the following headers:  - `Content-Length` - `Content-Type` - `Content-Disposition`  Example:   `Content-Length: 71068`  `Content-Type: application/zip`  `Content-Disposition: file; filename=\"DocuSignTemplates_Nov_25_2019_20_40_21.zip\"; fileExtension=.zip`

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | (Required) The external account number (int) or account ID GUID.
let envelopeTemplate = envelopeTemplate(accessControlListBase64: "accessControlListBase64_example", allowComments: "allowComments_example", allowMarkup: "allowMarkup_example", allowReassign: "allowReassign_example", allowViewHistory: "allowViewHistory_example", anySigner: "anySigner_example", asynchronous: "asynchronous_example", attachmentsUri: "attachmentsUri_example", authoritativeCopy: "authoritativeCopy_example", authoritativeCopyDefault: "authoritativeCopyDefault_example", autoMatch: "autoMatch_example", autoMatchSpecifiedByUser: "autoMatchSpecifiedByUser_example", autoNavigation: "autoNavigation_example", brandId: "brandId_example", brandLock: "brandLock_example", certificateUri: "certificateUri_example", completedDateTime: "completedDateTime_example", copyRecipientData: "copyRecipientData_example", created: "created_example", createdDateTime: "createdDateTime_example", customFields: nil, customFieldsUri: "customFieldsUri_example", declinedDateTime: "declinedDateTime_example", deletedDateTime: "deletedDateTime_example", deliveredDateTime: "deliveredDateTime_example", description: "description_example", disableResponsiveDocument: "disableResponsiveDocument_example", documents: [nil], documentsCombinedUri: "documentsCombinedUri_example", documentsUri: "documentsUri_example", emailBlurb: "emailBlurb_example", emailSettings: nil, emailSubject: "emailSubject_example", enableWetSign: "enableWetSign_example", enforceSignerVisibility: "enforceSignerVisibility_example", envelopeAttachments: [nil], envelopeDocuments: [nil], envelopeId: "envelopeId_example", envelopeIdStamping: "envelopeIdStamping_example", envelopeLocation: "envelopeLocation_example", envelopeMetadata: nil, envelopeUri: "envelopeUri_example", expireAfter: "expireAfter_example", expireDateTime: "expireDateTime_example", expireEnabled: "expireEnabled_example", externalEnvelopeId: "externalEnvelopeId_example", favoritedByMe: "favoritedByMe_example", folderId: "folderId_example", folderIds: ["folderIds_example"], folderName: "folderName_example", folders: [nil], hasComments: "hasComments_example", hasFormDataChanged: "hasFormDataChanged_example", hasWavFile: "hasWavFile_example", holder: "holder_example", initialSentDateTime: "initialSentDateTime_example", is21CFRPart11: "is21CFRPart11_example", isDynamicEnvelope: "isDynamicEnvelope_example", isSignatureProviderEnvelope: "isSignatureProviderEnvelope_example", lastModified: "lastModified_example", lastModifiedBy: nil, lastModifiedDateTime: "lastModifiedDateTime_example", lastUsed: "lastUsed_example", location: "location_example", lockInformation: nil, messageLock: "messageLock_example", name: "name_example", newPassword: "newPassword_example", notification: nil, notificationUri: "notificationUri_example", owner: nil, pageCount: "pageCount_example", password: "password_example", passwordProtected: "passwordProtected_example", powerForm: nil, powerForms: [nil], purgeCompletedDate: "purgeCompletedDate_example", purgeRequestDate: "purgeRequestDate_example", purgeState: "purgeState_example", recipients: nil, recipientsLock: "recipientsLock_example", recipientsUri: "recipientsUri_example", sender: nil, sentDateTime: "sentDateTime_example", shared: "shared_example", signerCanSignOnMobile: "signerCanSignOnMobile_example", signingLocation: "signingLocation_example", status: "status_example", statusChangedDateTime: "statusChangedDateTime_example", statusDateTime: "statusDateTime_example", templateId: "templateId_example", templatesUri: "templatesUri_example", transactionId: "transactionId_example", uri: "uri_example", useDisclosure: "useDisclosure_example", voidedDateTime: "voidedDateTime_example", voidedReason: "voidedReason_example", workflow: nil) // EnvelopeTemplate |  (optional)

// Creates one or more templates.
TemplatesAPI.templatesPostTemplates(accountId: accountId, envelopeTemplate: envelopeTemplate).whenComplete { result in
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
 **accountId** | **String** | (Required) The external account number (int) or account ID GUID. | 
 **envelopeTemplate** | [**EnvelopeTemplate**](EnvelopeTemplate.md) |  | [optional] 

### Return type

#### TemplatesPostTemplates

```swift
public enum TemplatesPostTemplates {
    case http201(value: TemplateSummary?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: TemplateSummary?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **templatesPutTemplate**
```swift
    open class func templatesPutTemplate(accountId: String, templateId: String, envelopeTemplate: EnvelopeTemplate? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TemplatesPutTemplate>
```

Updates an existing template.

Updates an existing template.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let templateId = "templateId_example" // String | The id of the template.
let envelopeTemplate = envelopeTemplate(accessControlListBase64: "accessControlListBase64_example", allowComments: "allowComments_example", allowMarkup: "allowMarkup_example", allowReassign: "allowReassign_example", allowViewHistory: "allowViewHistory_example", anySigner: "anySigner_example", asynchronous: "asynchronous_example", attachmentsUri: "attachmentsUri_example", authoritativeCopy: "authoritativeCopy_example", authoritativeCopyDefault: "authoritativeCopyDefault_example", autoMatch: "autoMatch_example", autoMatchSpecifiedByUser: "autoMatchSpecifiedByUser_example", autoNavigation: "autoNavigation_example", brandId: "brandId_example", brandLock: "brandLock_example", certificateUri: "certificateUri_example", completedDateTime: "completedDateTime_example", copyRecipientData: "copyRecipientData_example", created: "created_example", createdDateTime: "createdDateTime_example", customFields: nil, customFieldsUri: "customFieldsUri_example", declinedDateTime: "declinedDateTime_example", deletedDateTime: "deletedDateTime_example", deliveredDateTime: "deliveredDateTime_example", description: "description_example", disableResponsiveDocument: "disableResponsiveDocument_example", documents: [nil], documentsCombinedUri: "documentsCombinedUri_example", documentsUri: "documentsUri_example", emailBlurb: "emailBlurb_example", emailSettings: nil, emailSubject: "emailSubject_example", enableWetSign: "enableWetSign_example", enforceSignerVisibility: "enforceSignerVisibility_example", envelopeAttachments: [nil], envelopeDocuments: [nil], envelopeId: "envelopeId_example", envelopeIdStamping: "envelopeIdStamping_example", envelopeLocation: "envelopeLocation_example", envelopeMetadata: nil, envelopeUri: "envelopeUri_example", expireAfter: "expireAfter_example", expireDateTime: "expireDateTime_example", expireEnabled: "expireEnabled_example", externalEnvelopeId: "externalEnvelopeId_example", favoritedByMe: "favoritedByMe_example", folderId: "folderId_example", folderIds: ["folderIds_example"], folderName: "folderName_example", folders: [nil], hasComments: "hasComments_example", hasFormDataChanged: "hasFormDataChanged_example", hasWavFile: "hasWavFile_example", holder: "holder_example", initialSentDateTime: "initialSentDateTime_example", is21CFRPart11: "is21CFRPart11_example", isDynamicEnvelope: "isDynamicEnvelope_example", isSignatureProviderEnvelope: "isSignatureProviderEnvelope_example", lastModified: "lastModified_example", lastModifiedBy: nil, lastModifiedDateTime: "lastModifiedDateTime_example", lastUsed: "lastUsed_example", location: "location_example", lockInformation: nil, messageLock: "messageLock_example", name: "name_example", newPassword: "newPassword_example", notification: nil, notificationUri: "notificationUri_example", owner: nil, pageCount: "pageCount_example", password: "password_example", passwordProtected: "passwordProtected_example", powerForm: nil, powerForms: [nil], purgeCompletedDate: "purgeCompletedDate_example", purgeRequestDate: "purgeRequestDate_example", purgeState: "purgeState_example", recipients: nil, recipientsLock: "recipientsLock_example", recipientsUri: "recipientsUri_example", sender: nil, sentDateTime: "sentDateTime_example", shared: "shared_example", signerCanSignOnMobile: "signerCanSignOnMobile_example", signingLocation: "signingLocation_example", status: "status_example", statusChangedDateTime: "statusChangedDateTime_example", statusDateTime: "statusDateTime_example", templateId: "templateId_example", templatesUri: "templatesUri_example", transactionId: "transactionId_example", uri: "uri_example", useDisclosure: "useDisclosure_example", voidedDateTime: "voidedDateTime_example", voidedReason: "voidedReason_example", workflow: nil) // EnvelopeTemplate |  (optional)

// Updates an existing template.
TemplatesAPI.templatesPutTemplate(accountId: accountId, templateId: templateId, envelopeTemplate: envelopeTemplate).whenComplete { result in
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
 **envelopeTemplate** | [**EnvelopeTemplate**](EnvelopeTemplate.md) |  | [optional] 

### Return type

#### TemplatesPutTemplate

```swift
public enum TemplatesPutTemplate {
    case http200(value: TemplateUpdateSummary?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: TemplateUpdateSummary?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **templatesPutTemplatePart**
```swift
    open class func templatesPutTemplatePart(accountId: String, templateId: String, templatePart: String, groupInformation: GroupInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<TemplatesPutTemplatePart>
```

Shares a template with a group.

Shares a template with the specified members group.  **Note**: For a newer version of this functionality, see [Accounts::Update Shared Access](https://developers.docusign.com/esign-rest-api/reference/Accounts/Accounts/updateSharedAccess).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let templateId = "templateId_example" // String | The id of the template.
let templatePart = "templatePart_example" // String | Currently, the only defined part is **groups**.
let groupInformation = groupInformation(endPosition: "endPosition_example", groups: [nil], nextUri: "nextUri_example", previousUri: "previousUri_example", resultSetSize: "resultSetSize_example", startPosition: "startPosition_example", totalSetSize: "totalSetSize_example") // GroupInformation |  (optional)

// Shares a template with a group.
TemplatesAPI.templatesPutTemplatePart(accountId: accountId, templateId: templateId, templatePart: templatePart, groupInformation: groupInformation).whenComplete { result in
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
 **templatePart** | **String** | Currently, the only defined part is **groups**. | 
 **groupInformation** | [**GroupInformation**](GroupInformation.md) |  | [optional] 

### Return type

#### TemplatesPutTemplatePart

```swift
public enum TemplatesPutTemplatePart {
    case http200(value: GroupInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: GroupInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

