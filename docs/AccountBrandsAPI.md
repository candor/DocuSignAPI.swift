# AccountBrandsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**brandDeleteBrand**](AccountBrandsAPI.md#branddeletebrand) | **DELETE** /v2.1/accounts/{accountId}/brands/{brandId} | Deletes a brand.
[**brandExportGetBrandExportFile**](AccountBrandsAPI.md#brandexportgetbrandexportfile) | **GET** /v2.1/accounts/{accountId}/brands/{brandId}/file | Exports a brand.
[**brandGetBrand**](AccountBrandsAPI.md#brandgetbrand) | **GET** /v2.1/accounts/{accountId}/brands/{brandId} | Gets information about a brand.
[**brandLogoDeleteBrandLogo**](AccountBrandsAPI.md#brandlogodeletebrandlogo) | **DELETE** /v2.1/accounts/{accountId}/brands/{brandId}/logos/{logoType} | Deletes a brand logo.
[**brandLogoGetBrandLogo**](AccountBrandsAPI.md#brandlogogetbrandlogo) | **GET** /v2.1/accounts/{accountId}/brands/{brandId}/logos/{logoType} | Gets a brand logo.
[**brandLogoPutBrandLogo**](AccountBrandsAPI.md#brandlogoputbrandlogo) | **PUT** /v2.1/accounts/{accountId}/brands/{brandId}/logos/{logoType} | Updates a brand logo.
[**brandPutBrand**](AccountBrandsAPI.md#brandputbrand) | **PUT** /v2.1/accounts/{accountId}/brands/{brandId} | Updates an existing brand.
[**brandResourcesGetBrandResources**](AccountBrandsAPI.md#brandresourcesgetbrandresources) | **GET** /v2.1/accounts/{accountId}/brands/{brandId}/resources/{resourceContentType} | Returns a branding resource file.
[**brandResourcesGetBrandResourcesList**](AccountBrandsAPI.md#brandresourcesgetbrandresourceslist) | **GET** /v2.1/accounts/{accountId}/brands/{brandId}/resources | Returns metadata about the branding resources for an account.
[**brandResourcesPutBrandResources**](AccountBrandsAPI.md#brandresourcesputbrandresources) | **PUT** /v2.1/accounts/{accountId}/brands/{brandId}/resources/{resourceContentType} | Updates a branding resource file.
[**brandsDeleteBrands**](AccountBrandsAPI.md#brandsdeletebrands) | **DELETE** /v2.1/accounts/{accountId}/brands | Deletes one or more brand profiles.
[**brandsGetBrands**](AccountBrandsAPI.md#brandsgetbrands) | **GET** /v2.1/accounts/{accountId}/brands | Gets a list of brands.
[**brandsPostBrands**](AccountBrandsAPI.md#brandspostbrands) | **POST** /v2.1/accounts/{accountId}/brands | Creates one or more brand profiles for an account.


# **brandDeleteBrand**
```swift
    open class func brandDeleteBrand(accountId: String, brandId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BrandDeleteBrand>
```

Deletes a brand.

This method deletes a brand from an account.  **Note**: Branding for either signing or sending must be enabled for the account (`canSelfBrandSend` , `canSelfBrandSign`, or both of these account settings must be **true**).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let brandId = "brandId_example" // String | The id of the brand.

// Deletes a brand.
AccountBrandsAPI.brandDeleteBrand(accountId: accountId, brandId: brandId).whenComplete { result in
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
 **brandId** | **String** | The id of the brand. | 

### Return type

#### BrandDeleteBrand

```swift
public enum BrandDeleteBrand {
    case http200(value: Void?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Void?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **brandExportGetBrandExportFile**
```swift
    open class func brandExportGetBrandExportFile(accountId: String, brandId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BrandExportGetBrandExportFile>
```

Exports a brand.

This method exports information about a brand to an XML file.  **Note**: Branding for either signing or sending must be enabled for the account (`canSelfBrandSend` , `canSelfBrandSign`, or both of these account settings must be **true**).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let brandId = "brandId_example" // String | The id of the brand.

// Exports a brand.
AccountBrandsAPI.brandExportGetBrandExportFile(accountId: accountId, brandId: brandId).whenComplete { result in
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
 **brandId** | **String** | The id of the brand. | 

### Return type

#### BrandExportGetBrandExportFile

```swift
public enum BrandExportGetBrandExportFile {
    case http200(value: Void?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Void?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **brandGetBrand**
```swift
    open class func brandGetBrand(accountId: String, brandId: String, includeExternalReferences: String? = nil, includeLogos: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BrandGetBrand>
```

Gets information about a brand.

This method returns details about an account brand.  **Note**: Branding for either signing or sending must be enabled for the account (`canSelfBrandSend` , `canSelfBrandSign`, or both of these account settings must be **true**).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let brandId = "brandId_example" // String | The id of the brand.
let includeExternalReferences = "includeExternalReferences_example" // String | When **true**, the landing pages and links associated with the brand are included in the response. (optional)
let includeLogos = "includeLogos_example" // String | When **true**, the URIs for the logos associated with the brand are included in the response. (optional)

// Gets information about a brand.
AccountBrandsAPI.brandGetBrand(accountId: accountId, brandId: brandId, includeExternalReferences: includeExternalReferences, includeLogos: includeLogos).whenComplete { result in
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
 **brandId** | **String** | The id of the brand. | 
 **includeExternalReferences** | **String** | When **true**, the landing pages and links associated with the brand are included in the response. | [optional] 
 **includeLogos** | **String** | When **true**, the URIs for the logos associated with the brand are included in the response. | [optional] 

### Return type

#### BrandGetBrand

```swift
public enum BrandGetBrand {
    case http200(value: Brand?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Brand?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **brandLogoDeleteBrandLogo**
```swift
    open class func brandLogoDeleteBrandLogo(accountId: String, brandId: String, logoType: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BrandLogoDeleteBrandLogo>
```

Deletes a brand logo.

This method deletes a single logo from an account brand.  **Note**: Branding for either signing or sending must be enabled for the account (`canSelfBrandSend` , `canSelfBrandSign`, or both of these account settings must be **true**).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let brandId = "brandId_example" // String | The id of the brand.
let logoType = "logoType_example" // String | The type of logo. Valid values are:  - `primary`  - `secondary`  - `email`

// Deletes a brand logo.
AccountBrandsAPI.brandLogoDeleteBrandLogo(accountId: accountId, brandId: brandId, logoType: logoType).whenComplete { result in
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
 **brandId** | **String** | The id of the brand. | 
 **logoType** | **String** | The type of logo. Valid values are:  - &#x60;primary&#x60;  - &#x60;secondary&#x60;  - &#x60;email&#x60; | 

### Return type

#### BrandLogoDeleteBrandLogo

```swift
public enum BrandLogoDeleteBrandLogo {
    case http200(value: Void?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Void?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **brandLogoGetBrandLogo**
```swift
    open class func brandLogoGetBrandLogo(accountId: String, brandId: String, logoType: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BrandLogoGetBrandLogo>
```

Gets a brand logo.

This method returns a specific logo that is used in a brand.  **Note**: Branding for either signing or sending must be enabled for the account (`canSelfBrandSend` , `canSelfBrandSign`, or both of these account settings must be **true**).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let brandId = "brandId_example" // String | The id of the brand.
let logoType = "logoType_example" // String | The type of logo. Valid values are:  - `primary`  - `secondary`  - `email`

// Gets a brand logo.
AccountBrandsAPI.brandLogoGetBrandLogo(accountId: accountId, brandId: brandId, logoType: logoType).whenComplete { result in
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
 **brandId** | **String** | The id of the brand. | 
 **logoType** | **String** | The type of logo. Valid values are:  - &#x60;primary&#x60;  - &#x60;secondary&#x60;  - &#x60;email&#x60; | 

### Return type

#### BrandLogoGetBrandLogo

```swift
public enum BrandLogoGetBrandLogo {
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

# **brandLogoPutBrandLogo**
```swift
    open class func brandLogoPutBrandLogo(accountId: String, brandId: String, logoType: String, logoFileBytes: Data, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BrandLogoPutBrandLogo>
```

Updates a brand logo.

This method updates a single brand logo.  You pass in the new version of the resource in the `Content-Disposition` header. Example:  `Content-Disposition: form-data; name=\"file\"; filename=\"logo.jpg\"`  **Note**: Branding for either signing or sending must be enabled for the account (`canSelfBrandSend` , `canSelfBrandSign`, or both of these account settings must be **true**).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let brandId = "brandId_example" // String | The id of the brand.
let logoType = "logoType_example" // String | The type of logo. Valid values are:  - `primary`  - `secondary`  - `email`
let logoFileBytes = 987 // Data | Brand logo binary Stream. Supported formats: JPG, GIF, PNG. Maximum file size: 300 KB. Recommended dimensions: 296 x 76 pixels (larger images will be resized). Changes may take up to one hour to display in all places

// Updates a brand logo.
AccountBrandsAPI.brandLogoPutBrandLogo(accountId: accountId, brandId: brandId, logoType: logoType, logoFileBytes: logoFileBytes).whenComplete { result in
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
 **brandId** | **String** | The id of the brand. | 
 **logoType** | **String** | The type of logo. Valid values are:  - &#x60;primary&#x60;  - &#x60;secondary&#x60;  - &#x60;email&#x60; | 
 **logoFileBytes** | **Data** | Brand logo binary Stream. Supported formats: JPG, GIF, PNG. Maximum file size: 300 KB. Recommended dimensions: 296 x 76 pixels (larger images will be resized). Changes may take up to one hour to display in all places | 

### Return type

#### BrandLogoPutBrandLogo

```swift
public enum BrandLogoPutBrandLogo {
    case http200(value: Void?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Void?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: image/png
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **brandPutBrand**
```swift
    open class func brandPutBrand(accountId: String, brandId: String, brand: Brand? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BrandPutBrand>
```

Updates an existing brand.

This method updates an account brand.   **Note**: Branding for either signing or sending must be enabled for the account (`canSelfBrandSend` , `canSelfBrandSign`, or both of these account settings must be **true**).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let brandId = "brandId_example" // String | The id of the brand.
let brand = brand(brandCompany: "brandCompany_example", brandId: "brandId_example", brandLanguages: ["brandLanguages_example"], brandName: "brandName_example", colors: [nameValue(errorDetails: errorDetails(errorCode: "errorCode_example", message: "message_example"), name: "name_example", originalValue: "originalValue_example", value: "value_example")], defaultBrandLanguage: "defaultBrandLanguage_example", emailContent: [brandEmailContent(content: "content_example", emailContentType: "emailContentType_example", emailToLink: "emailToLink_example", linkText: "linkText_example")], errorDetails: nil, isOverridingCompanyName: false, isSendingDefault: false, isSigningDefault: false, landingPages: [nil], links: [brandLink(linkText: "linkText_example", linkType: "linkType_example", showLink: "showLink_example", urlOrMailTo: "urlOrMailTo_example")], logos: brandLogos(email: "email_example", primary: "primary_example", secondary: "secondary_example"), resources: brandResourceUrls(email: "email_example", sending: "sending_example", signing: "signing_example", signingCaptive: "signingCaptive_example")) // Brand |  (optional)

// Updates an existing brand.
AccountBrandsAPI.brandPutBrand(accountId: accountId, brandId: brandId, brand: brand).whenComplete { result in
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
 **brandId** | **String** | The id of the brand. | 
 **brand** | [**Brand**](Brand.md) |  | [optional] 

### Return type

#### BrandPutBrand

```swift
public enum BrandPutBrand {
    case http200(value: Brand?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Brand?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **brandResourcesGetBrandResources**
```swift
    open class func brandResourcesGetBrandResources(accountId: String, brandId: String, resourceContentType: String, langcode: String? = nil, returnMaster: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BrandResourcesGetBrandResources>
```

Returns a branding resource file.

This method returns a specific branding resource file.  A brand uses a set of brand resource files to control the sending, signing, email message, and captive (embedded) signing experiences.  You can modify the default email messages and formats in these files and upload them to your brand to customize the user experience.  **Important**: When you upload a modified resource file, only the elements that differ from the master resource file are saved as your resource file. Similarly, when you download your resource files, only the modified elements are included in the file.   **Note**: Branding for either signing or sending must be enabled for the account (`canSelfBrandSend` , `canSelfBrandSign`, or both of these account settings must be **true**).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let brandId = "brandId_example" // String | The id of the brand.
let resourceContentType = "resourceContentType_example" // String | The type of brand resource file to return. Valid values are:  - `sending` - `signing` - `email` - `signing_captive`
let langcode = "langcode_example" // String | The ISO 3166-1 alpha-2 codes for the languages that the brand supports. (optional)
let returnMaster = "returnMaster_example" // String | Specifies which resource file data to return. When **true**, only the master resource file is returned. When **false**, only the elements that you modified are returned. (optional)

// Returns a branding resource file.
AccountBrandsAPI.brandResourcesGetBrandResources(accountId: accountId, brandId: brandId, resourceContentType: resourceContentType, langcode: langcode, returnMaster: returnMaster).whenComplete { result in
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
 **brandId** | **String** | The id of the brand. | 
 **resourceContentType** | **String** | The type of brand resource file to return. Valid values are:  - &#x60;sending&#x60; - &#x60;signing&#x60; - &#x60;email&#x60; - &#x60;signing_captive&#x60; | 
 **langcode** | **String** | The ISO 3166-1 alpha-2 codes for the languages that the brand supports. | [optional] 
 **returnMaster** | **String** | Specifies which resource file data to return. When **true**, only the master resource file is returned. When **false**, only the elements that you modified are returned. | [optional] 

### Return type

#### BrandResourcesGetBrandResources

```swift
public enum BrandResourcesGetBrandResources {
    case http200(value: Void?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Void?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **brandResourcesGetBrandResourcesList**
```swift
    open class func brandResourcesGetBrandResourcesList(accountId: String, brandId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BrandResourcesGetBrandResourcesList>
```

Returns metadata about the branding resources for an account.

This method returns metadata about the branding resources that are associated with an account.  **Note**: Branding for either signing or sending must be enabled for the account (`canSelfBrandSend` , `canSelfBrandSign`, or both of these account settings must be **true**).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let brandId = "brandId_example" // String | The id of the brand.

// Returns metadata about the branding resources for an account.
AccountBrandsAPI.brandResourcesGetBrandResourcesList(accountId: accountId, brandId: brandId).whenComplete { result in
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
 **brandId** | **String** | The id of the brand. | 

### Return type

#### BrandResourcesGetBrandResourcesList

```swift
public enum BrandResourcesGetBrandResourcesList {
    case http200(value: BrandResourcesList?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: BrandResourcesList?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **brandResourcesPutBrandResources**
```swift
    open class func brandResourcesPutBrandResources(accountId: String, brandId: String, resourceContentType: String, fileXml: Data, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BrandResourcesPutBrandResources>
```

Updates a branding resource file.

This method updates a branding resource file.  You pass in the new version of the resource file in the `Content-Disposition` header. Example:  `Content-Disposition: form-data; name=\"file\"; filename=\"DocuSign_SigningResource_4328673.xml\"`  **Note**: Branding for either signing or sending must be enabled for the account (`canSelfBrandSend` , `canSelfBrandSign`, or both of these account settings must be **true**).  **Important**: Customizing resource files is an advanced branding configuration option which can significantly impact your account, and should be done only by someone with expertise in XML and HTML. The master resource files are subject to change without notice. If you customize your resource files, after each release, DocuSign recommends you review any changes and update your custom files as needed.  When you upload a modified resource file, only the elements that differ from the master resource file are saved as your resource file. Similarly, when you download your resource files, only the modified elements are included in the file.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let brandId = "brandId_example" // String | The id of the brand.
let resourceContentType = "resourceContentType_example" // String | The type of brand resource file that you are updating. Valid values are:  - `sending` - `signing` - `email` - `signing_captive`
let fileXml = 987 // Data | Brand resource XML file.

// Updates a branding resource file.
AccountBrandsAPI.brandResourcesPutBrandResources(accountId: accountId, brandId: brandId, resourceContentType: resourceContentType, fileXml: fileXml).whenComplete { result in
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
 **brandId** | **String** | The id of the brand. | 
 **resourceContentType** | **String** | The type of brand resource file that you are updating. Valid values are:  - &#x60;sending&#x60; - &#x60;signing&#x60; - &#x60;email&#x60; - &#x60;signing_captive&#x60; | 
 **fileXml** | **Data** | Brand resource XML file. | 

### Return type

#### BrandResourcesPutBrandResources

```swift
public enum BrandResourcesPutBrandResources {
    case http200(value: BrandResources?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: BrandResources?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **brandsDeleteBrands**
```swift
    open class func brandsDeleteBrands(accountId: String, brandsRequest: BrandsRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BrandsDeleteBrands>
```

Deletes one or more brand profiles.

This method deletes one or more brand profiles from an account, based on the brand ids that you include in the `brandsRequest`.  **Note**: Branding for either signing or sending must be enabled for the account (`canSelfBrandSend` , `canSelfBrandSign`, or both of these account settings must be **true**).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let brandsRequest = brandsRequest(brands: [brandRequest(brandId: "brandId_example")]) // BrandsRequest |  (optional)

// Deletes one or more brand profiles.
AccountBrandsAPI.brandsDeleteBrands(accountId: accountId, brandsRequest: brandsRequest).whenComplete { result in
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
 **brandsRequest** | [**BrandsRequest**](BrandsRequest.md) |  | [optional] 

### Return type

#### BrandsDeleteBrands

```swift
public enum BrandsDeleteBrands {
    case http200(value: AccountBrands?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: AccountBrands?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **brandsGetBrands**
```swift
    open class func brandsGetBrands(accountId: String, excludeDistributorBrand: String? = nil, includeLogos: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BrandsGetBrands>
```

Gets a list of brands.

This method returns details about all of the brands associated with an account, including the default brand profiles.   **Note**: Branding for either signing or sending must be enabled for the account (`canSelfBrandSend` , `canSelfBrandSign`, or both of these account settings must be **true**).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let excludeDistributorBrand = "excludeDistributorBrand_example" // String | When **true**, excludes distributor brand information from the response set. (optional)
let includeLogos = "includeLogos_example" // String | When **true**, the URIs for the logos associated with the brand are included in the response. (optional)

// Gets a list of brands.
AccountBrandsAPI.brandsGetBrands(accountId: accountId, excludeDistributorBrand: excludeDistributorBrand, includeLogos: includeLogos).whenComplete { result in
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
 **excludeDistributorBrand** | **String** | When **true**, excludes distributor brand information from the response set. | [optional] 
 **includeLogos** | **String** | When **true**, the URIs for the logos associated with the brand are included in the response. | [optional] 

### Return type

#### BrandsGetBrands

```swift
public enum BrandsGetBrands {
    case http200(value: AccountBrands?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: AccountBrands?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **brandsPostBrands**
```swift
    open class func brandsPostBrands(accountId: String, brand: Brand? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BrandsPostBrands>
```

Creates one or more brand profiles for an account.

This method creates one or more brand profile files for an account.  If the `brandId` property for a brand profile is already set for the account, an error is returned. To upload a new version of an existing brand profile, you must delete the profile and then upload the newer version.  When you upload brand profile files, you must combine them into a single zip file and set the `Content-Type` to `application/zip`.  **Note**: Branding for either signing or sending must be enabled for the account (`canSelfBrandSend` , `canSelfBrandSign`, or both of these account settings must be **true**).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let brand = brand(brandCompany: "brandCompany_example", brandId: "brandId_example", brandLanguages: ["brandLanguages_example"], brandName: "brandName_example", colors: [nameValue(errorDetails: errorDetails(errorCode: "errorCode_example", message: "message_example"), name: "name_example", originalValue: "originalValue_example", value: "value_example")], defaultBrandLanguage: "defaultBrandLanguage_example", emailContent: [brandEmailContent(content: "content_example", emailContentType: "emailContentType_example", emailToLink: "emailToLink_example", linkText: "linkText_example")], errorDetails: nil, isOverridingCompanyName: false, isSendingDefault: false, isSigningDefault: false, landingPages: [nil], links: [brandLink(linkText: "linkText_example", linkType: "linkType_example", showLink: "showLink_example", urlOrMailTo: "urlOrMailTo_example")], logos: brandLogos(email: "email_example", primary: "primary_example", secondary: "secondary_example"), resources: brandResourceUrls(email: "email_example", sending: "sending_example", signing: "signing_example", signingCaptive: "signingCaptive_example")) // Brand |  (optional)

// Creates one or more brand profiles for an account.
AccountBrandsAPI.brandsPostBrands(accountId: accountId, brand: brand).whenComplete { result in
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
 **brand** | [**Brand**](Brand.md) |  | [optional] 

### Return type

#### BrandsPostBrands

```swift
public enum BrandsPostBrands {
    case http201(value: AccountBrands?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: AccountBrands?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

