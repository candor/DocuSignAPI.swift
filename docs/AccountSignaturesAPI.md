# AccountSignaturesAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accountSignaturesDeleteAccountSignature**](AccountSignaturesAPI.md#accountsignaturesdeleteaccountsignature) | **DELETE** /v2.1/accounts/{accountId}/signatures/{signatureId} | 
[**accountSignaturesDeleteAccountSignatureImage**](AccountSignaturesAPI.md#accountsignaturesdeleteaccountsignatureimage) | **DELETE** /v2.1/accounts/{accountId}/signatures/{signatureId}/{imageType} | 
[**accountSignaturesGetAccountSignature**](AccountSignaturesAPI.md#accountsignaturesgetaccountsignature) | **GET** /v2.1/accounts/{accountId}/signatures/{signatureId} | 
[**accountSignaturesGetAccountSignatureImage**](AccountSignaturesAPI.md#accountsignaturesgetaccountsignatureimage) | **GET** /v2.1/accounts/{accountId}/signatures/{signatureId}/{imageType} | 
[**accountSignaturesGetAccountSignatures**](AccountSignaturesAPI.md#accountsignaturesgetaccountsignatures) | **GET** /v2.1/accounts/{accountId}/signatures | 
[**accountSignaturesPostAccountSignatures**](AccountSignaturesAPI.md#accountsignaturespostaccountsignatures) | **POST** /v2.1/accounts/{accountId}/signatures | 
[**accountSignaturesPutAccountSignature**](AccountSignaturesAPI.md#accountsignaturesputaccountsignature) | **PUT** /v2.1/accounts/{accountId}/signatures | 
[**accountSignaturesPutAccountSignatureById**](AccountSignaturesAPI.md#accountsignaturesputaccountsignaturebyid) | **PUT** /v2.1/accounts/{accountId}/signatures/{signatureId} | 
[**accountSignaturesPutAccountSignatureImage**](AccountSignaturesAPI.md#accountsignaturesputaccountsignatureimage) | **PUT** /v2.1/accounts/{accountId}/signatures/{signatureId}/{imageType} | 


# **accountSignaturesDeleteAccountSignature**
```swift
    open class func accountSignaturesDeleteAccountSignature(accountId: String, signatureId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<AccountSignaturesDeleteAccountSignature>
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let signatureId = "signatureId_example" // String | The ID of the signature being accessed.

AccountSignaturesAPI.accountSignaturesDeleteAccountSignature(accountId: accountId, signatureId: signatureId).whenComplete { result in
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
 **signatureId** | **String** | The ID of the signature being accessed. | 

### Return type

#### AccountSignaturesDeleteAccountSignature

```swift
public enum AccountSignaturesDeleteAccountSignature {
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

# **accountSignaturesDeleteAccountSignatureImage**
```swift
    open class func accountSignaturesDeleteAccountSignatureImage(accountId: String, imageType: String, signatureId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<AccountSignaturesDeleteAccountSignatureImage>
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let imageType = "imageType_example" // String | Specificies the type of image. Valid values are:  - `signature_image` - `initials_image`
let signatureId = "signatureId_example" // String | The ID of the signature being accessed.

AccountSignaturesAPI.accountSignaturesDeleteAccountSignatureImage(accountId: accountId, imageType: imageType, signatureId: signatureId).whenComplete { result in
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
 **imageType** | **String** | Specificies the type of image. Valid values are:  - &#x60;signature_image&#x60; - &#x60;initials_image&#x60; | 
 **signatureId** | **String** | The ID of the signature being accessed. | 

### Return type

#### AccountSignaturesDeleteAccountSignatureImage

```swift
public enum AccountSignaturesDeleteAccountSignatureImage {
    case http200(value: AccountSignature?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: AccountSignature?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountSignaturesGetAccountSignature**
```swift
    open class func accountSignaturesGetAccountSignature(accountId: String, signatureId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<AccountSignaturesGetAccountSignature>
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let signatureId = "signatureId_example" // String | The ID of the signature being accessed.

AccountSignaturesAPI.accountSignaturesGetAccountSignature(accountId: accountId, signatureId: signatureId).whenComplete { result in
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
 **signatureId** | **String** | The ID of the signature being accessed. | 

### Return type

#### AccountSignaturesGetAccountSignature

```swift
public enum AccountSignaturesGetAccountSignature {
    case http200(value: AccountSignature?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: AccountSignature?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountSignaturesGetAccountSignatureImage**
```swift
    open class func accountSignaturesGetAccountSignatureImage(accountId: String, imageType: String, signatureId: String, includeChrome: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<AccountSignaturesGetAccountSignatureImage>
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let imageType = "imageType_example" // String | Specificies the type of image. Valid values are:  - `signature_image` - `initials_image`
let signatureId = "signatureId_example" // String | The ID of the signature being accessed.
let includeChrome = "includeChrome_example" // String | When **true**, the chrome (or frame containing the added line and identifier) is included with the signature image. (optional)

AccountSignaturesAPI.accountSignaturesGetAccountSignatureImage(accountId: accountId, imageType: imageType, signatureId: signatureId, includeChrome: includeChrome).whenComplete { result in
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
 **imageType** | **String** | Specificies the type of image. Valid values are:  - &#x60;signature_image&#x60; - &#x60;initials_image&#x60; | 
 **signatureId** | **String** | The ID of the signature being accessed. | 
 **includeChrome** | **String** | When **true**, the chrome (or frame containing the added line and identifier) is included with the signature image. | [optional] 

### Return type

#### AccountSignaturesGetAccountSignatureImage

```swift
public enum AccountSignaturesGetAccountSignatureImage {
    case http200(value: Data?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Data?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/gif

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountSignaturesGetAccountSignatures**
```swift
    open class func accountSignaturesGetAccountSignatures(accountId: String, stampFormat: String? = nil, stampName: String? = nil, stampType: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<AccountSignaturesGetAccountSignatures>
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let stampFormat = "stampFormat_example" // String |  (optional)
let stampName = "stampName_example" // String |  (optional)
let stampType = "stampType_example" // String |  (optional)

AccountSignaturesAPI.accountSignaturesGetAccountSignatures(accountId: accountId, stampFormat: stampFormat, stampName: stampName, stampType: stampType).whenComplete { result in
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
 **stampFormat** | **String** |  | [optional] 
 **stampName** | **String** |  | [optional] 
 **stampType** | **String** |  | [optional] 

### Return type

#### AccountSignaturesGetAccountSignatures

```swift
public enum AccountSignaturesGetAccountSignatures {
    case http200(value: AccountSignaturesInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: AccountSignaturesInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountSignaturesPostAccountSignatures**
```swift
    open class func accountSignaturesPostAccountSignatures(accountId: String, decodeOnly: String? = nil, accountSignaturesInformation: AccountSignaturesInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<AccountSignaturesPostAccountSignatures>
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let decodeOnly = "decodeOnly_example" // String |  (optional)
let accountSignaturesInformation = accountSignaturesInformation(accountSignatures: [nil]) // AccountSignaturesInformation |  (optional)

AccountSignaturesAPI.accountSignaturesPostAccountSignatures(accountId: accountId, decodeOnly: decodeOnly, accountSignaturesInformation: accountSignaturesInformation).whenComplete { result in
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
 **decodeOnly** | **String** |  | [optional] 
 **accountSignaturesInformation** | [**AccountSignaturesInformation**](AccountSignaturesInformation.md) |  | [optional] 

### Return type

#### AccountSignaturesPostAccountSignatures

```swift
public enum AccountSignaturesPostAccountSignatures {
    case http201(value: AccountSignaturesInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: AccountSignaturesInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountSignaturesPutAccountSignature**
```swift
    open class func accountSignaturesPutAccountSignature(accountId: String, accountSignaturesInformation: AccountSignaturesInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<AccountSignaturesPutAccountSignature>
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let accountSignaturesInformation = accountSignaturesInformation(accountSignatures: [nil]) // AccountSignaturesInformation |  (optional)

AccountSignaturesAPI.accountSignaturesPutAccountSignature(accountId: accountId, accountSignaturesInformation: accountSignaturesInformation).whenComplete { result in
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
 **accountSignaturesInformation** | [**AccountSignaturesInformation**](AccountSignaturesInformation.md) |  | [optional] 

### Return type

#### AccountSignaturesPutAccountSignature

```swift
public enum AccountSignaturesPutAccountSignature {
    case http200(value: AccountSignaturesInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: AccountSignaturesInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountSignaturesPutAccountSignatureById**
```swift
    open class func accountSignaturesPutAccountSignatureById(accountId: String, signatureId: String, closeExistingSignature: String? = nil, accountSignatureDefinition: AccountSignatureDefinition? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<AccountSignaturesPutAccountSignatureById>
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let signatureId = "signatureId_example" // String | The ID of the signature being accessed.
let closeExistingSignature = "closeExistingSignature_example" // String | When set to **true**, closes the current signature. (optional)
let accountSignatureDefinition = accountSignatureDefinition(dateStampProperties: nil, disallowUserResizeStamp: "disallowUserResizeStamp_example", externalID: "externalID_example", imageType: "imageType_example", isDefault: "isDefault_example", nrdsId: "nrdsId_example", nrdsLastName: "nrdsLastName_example", phoneticName: "phoneticName_example", signatureFont: "signatureFont_example", signatureGroups: [nil], signatureId: "signatureId_example", signatureInitials: "signatureInitials_example", signatureName: "signatureName_example", signatureUsers: [nil], stampFormat: "stampFormat_example", stampSizeMM: "stampSizeMM_example") // AccountSignatureDefinition |  (optional)

AccountSignaturesAPI.accountSignaturesPutAccountSignatureById(accountId: accountId, signatureId: signatureId, closeExistingSignature: closeExistingSignature, accountSignatureDefinition: accountSignatureDefinition).whenComplete { result in
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
 **signatureId** | **String** | The ID of the signature being accessed. | 
 **closeExistingSignature** | **String** | When set to **true**, closes the current signature. | [optional] 
 **accountSignatureDefinition** | [**AccountSignatureDefinition**](AccountSignatureDefinition.md) |  | [optional] 

### Return type

#### AccountSignaturesPutAccountSignatureById

```swift
public enum AccountSignaturesPutAccountSignatureById {
    case http200(value: AccountSignature?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: AccountSignature?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountSignaturesPutAccountSignatureImage**
```swift
    open class func accountSignaturesPutAccountSignatureImage(accountId: String, imageType: String, signatureId: String, transparentPng: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<AccountSignaturesPutAccountSignatureImage>
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let imageType = "imageType_example" // String | Specificies the type of image. Valid values are:  - `signature_image` - `initials_image`
let signatureId = "signatureId_example" // String | The ID of the signature being accessed.
let transparentPng = "transparentPng_example" // String |  (optional)

AccountSignaturesAPI.accountSignaturesPutAccountSignatureImage(accountId: accountId, imageType: imageType, signatureId: signatureId, transparentPng: transparentPng).whenComplete { result in
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
 **imageType** | **String** | Specificies the type of image. Valid values are:  - &#x60;signature_image&#x60; - &#x60;initials_image&#x60; | 
 **signatureId** | **String** | The ID of the signature being accessed. | 
 **transparentPng** | **String** |  | [optional] 

### Return type

#### AccountSignaturesPutAccountSignatureImage

```swift
public enum AccountSignaturesPutAccountSignatureImage {
    case http200(value: AccountSignature?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: AccountSignature?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

