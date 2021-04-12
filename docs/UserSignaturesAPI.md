# UserSignaturesAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userSignaturesDeleteUserSignature**](UserSignaturesAPI.md#usersignaturesdeleteusersignature) | **DELETE** /v2.1/accounts/{accountId}/users/{userId}/signatures/{signatureId} | Removes removes signature information for the specified user.
[**userSignaturesDeleteUserSignatureImage**](UserSignaturesAPI.md#usersignaturesdeleteusersignatureimage) | **DELETE** /v2.1/accounts/{accountId}/users/{userId}/signatures/{signatureId}/{imageType} | Deletes the user initials image or the  user signature image for the specified user.
[**userSignaturesGetUserSignature**](UserSignaturesAPI.md#usersignaturesgetusersignature) | **GET** /v2.1/accounts/{accountId}/users/{userId}/signatures/{signatureId} | Gets the user signature information for the specified user.
[**userSignaturesGetUserSignatureImage**](UserSignaturesAPI.md#usersignaturesgetusersignatureimage) | **GET** /v2.1/accounts/{accountId}/users/{userId}/signatures/{signatureId}/{imageType} | Retrieves the user initials image or the  user signature image for the specified user.
[**userSignaturesGetUserSignatures**](UserSignaturesAPI.md#usersignaturesgetusersignatures) | **GET** /v2.1/accounts/{accountId}/users/{userId}/signatures | Retrieves a list of signature definitions for a user.
[**userSignaturesPostUserSignatures**](UserSignaturesAPI.md#usersignaturespostusersignatures) | **POST** /v2.1/accounts/{accountId}/users/{userId}/signatures | Adds user Signature and initials images to a Signature.
[**userSignaturesPutUserSignature**](UserSignaturesAPI.md#usersignaturesputusersignature) | **PUT** /v2.1/accounts/{accountId}/users/{userId}/signatures | Adds/updates a user signature.
[**userSignaturesPutUserSignatureById**](UserSignaturesAPI.md#usersignaturesputusersignaturebyid) | **PUT** /v2.1/accounts/{accountId}/users/{userId}/signatures/{signatureId} | Updates the user signature for a specified user.
[**userSignaturesPutUserSignatureImage**](UserSignaturesAPI.md#usersignaturesputusersignatureimage) | **PUT** /v2.1/accounts/{accountId}/users/{userId}/signatures/{signatureId}/{imageType} | Updates the user signature image or user initials image for the specified user.


# **userSignaturesDeleteUserSignature**
```swift
    open class func userSignaturesDeleteUserSignature(accountId: String, signatureId: String, userId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<UserSignaturesDeleteUserSignature>
```

Removes removes signature information for the specified user.

Removes the signature information for the user.  The userId parameter specified in the endpoint must match the authenticated user's user ID and the user must be a member of the account.  The `signatureId` accepts a signature ID or a signature name. DocuSign recommends you use signature ID (`signatureId`), since some names contain characters that do not properly encode into a URL. If you use the user name, it is likely that the name includes spaces. In that case, URL encode the name before using it in the endpoint.   For example encode \"Bob Smith\" as \"Bob%20Smith\".

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let signatureId = "signatureId_example" // String | The ID of the signature being accessed.
let userId = "userId_example" // String | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing. 

// Removes removes signature information for the specified user.
UserSignaturesAPI.userSignaturesDeleteUserSignature(accountId: accountId, signatureId: signatureId, userId: userId).whenComplete { result in
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
 **userId** | **String** | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, &#x60;userId&#x60; can represent another user whom the Administrator is accessing.  | 

### Return type

#### UserSignaturesDeleteUserSignature

```swift
public enum UserSignaturesDeleteUserSignature {
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

# **userSignaturesDeleteUserSignatureImage**
```swift
    open class func userSignaturesDeleteUserSignatureImage(accountId: String, imageType: String, signatureId: String, userId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<UserSignaturesDeleteUserSignatureImage>
```

Deletes the user initials image or the  user signature image for the specified user.

Deletes the specified initials image or signature image for the specified user.  The function deletes one or the other of the image types, to delete both the initials image and signature image you must call the endpoint twice.  The userId parameter specified in the endpoint must match the authenticated user's user ID and the user must be a member of the account.  The `signatureId` parameter accepts a signature ID or a signature name. DocuSign recommends you use signature ID (`signatureId`), since some names contain characters that do not properly encode into a URL. If you use the user name, it is likely that the name includes spaces. In that case, URL encode the name before using it in the endpoint.   For example encode \"Bob Smith\" as \"Bob%20Smith\".

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let imageType = "imageType_example" // String | Specificies the type of image. Valid values are:  - `signature_image` - `initials_image`
let signatureId = "signatureId_example" // String | The ID of the signature being accessed.
let userId = "userId_example" // String | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing. 

// Deletes the user initials image or the  user signature image for the specified user.
UserSignaturesAPI.userSignaturesDeleteUserSignatureImage(accountId: accountId, imageType: imageType, signatureId: signatureId, userId: userId).whenComplete { result in
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
 **userId** | **String** | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, &#x60;userId&#x60; can represent another user whom the Administrator is accessing.  | 

### Return type

#### UserSignaturesDeleteUserSignatureImage

```swift
public enum UserSignaturesDeleteUserSignatureImage {
    case http200(value: UserSignature?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: UserSignature?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSignaturesGetUserSignature**
```swift
    open class func userSignaturesGetUserSignature(accountId: String, signatureId: String, userId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<UserSignaturesGetUserSignature>
```

Gets the user signature information for the specified user.

Retrieves the structure of a single signature with a known signature name.  The userId specified in the endpoint must match the authenticated user's user ID and the user must be a member of the account.  The `signatureId` parameter accepts a signature ID or a signature name. DocuSign recommends you use signature ID (`signatureId`), since some names contain characters that do not properly encode into a URL. If you use the user name, it is likely that the name includes spaces. In that case, URL encode the name before using it in the endpoint.   For example encode \"Bob Smith\" as \"Bob%20Smith\".

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let signatureId = "signatureId_example" // String | The ID of the signature being accessed.
let userId = "userId_example" // String | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing. 

// Gets the user signature information for the specified user.
UserSignaturesAPI.userSignaturesGetUserSignature(accountId: accountId, signatureId: signatureId, userId: userId).whenComplete { result in
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
 **userId** | **String** | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, &#x60;userId&#x60; can represent another user whom the Administrator is accessing.  | 

### Return type

#### UserSignaturesGetUserSignature

```swift
public enum UserSignaturesGetUserSignature {
    case http200(value: UserSignature?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: UserSignature?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSignaturesGetUserSignatureImage**
```swift
    open class func userSignaturesGetUserSignatureImage(accountId: String, imageType: String, signatureId: String, userId: String, includeChrome: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<UserSignaturesGetUserSignatureImage>
```

Retrieves the user initials image or the  user signature image for the specified user.

Retrieves the specified initials image or signature image for the specified user. The image is returned in the same format in which it was uploaded. In the request you can specify if the chrome (the added line and identifier around the initial image) is returned with the image.  The userId property specified in the endpoint must match the authenticated user's user ID and the user must be a member of the account.  The `signatureId` parameter accepts a signature ID or a signature name. DocuSign recommends you use signature ID (`signatureId`), since some names contain characters that do not properly encode into a URL. If you use the user name, it is likely that the name includes spaces. In that case, URL encode the name before using it in the endpoint.  For example encode \"Bob Smith\" as \"Bob%20Smith\".  **Note**: Older envelopes might only have chromed images. If getting the non-chromed image fails, try getting the chromed image.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let imageType = "imageType_example" // String | Specificies the type of image. Valid values are:  - `signature_image` - `initials_image`
let signatureId = "signatureId_example" // String | The ID of the signature being accessed.
let userId = "userId_example" // String | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing. 
let includeChrome = "includeChrome_example" // String | When **true**, the chrome (or frame containing the added line and identifier) is included with the signature image. (optional)

// Retrieves the user initials image or the  user signature image for the specified user.
UserSignaturesAPI.userSignaturesGetUserSignatureImage(accountId: accountId, imageType: imageType, signatureId: signatureId, userId: userId, includeChrome: includeChrome).whenComplete { result in
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
 **userId** | **String** | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, &#x60;userId&#x60; can represent another user whom the Administrator is accessing.  | 
 **includeChrome** | **String** | When **true**, the chrome (or frame containing the added line and identifier) is included with the signature image. | [optional] 

### Return type

#### UserSignaturesGetUserSignatureImage

```swift
public enum UserSignaturesGetUserSignatureImage {
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

# **userSignaturesGetUserSignatures**
```swift
    open class func userSignaturesGetUserSignatures(accountId: String, userId: String, stampType: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<UserSignaturesGetUserSignatures>
```

Retrieves a list of signature definitions for a user.

This method retrieves the signature definitions for the user that you specify.  The `userId` parameter specified in the endpoint must match the authenticated user's user ID, and the user must be a member of the account.  The `signatureId` parameter accepts a signature ID or a signature name. DocuSign recommends you use signature ID (`signatureId`), since some names contain characters that do not properly encode into a URL. If you use the user name, it is likely that the name includes spaces. In that case, URL encode the name before using it in the endpoint.   For example, encode \"Bob Smith\" as \"Bob%20Smith\".

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let userId = "userId_example" // String | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing. 
let stampType = "stampType_example" // String | The type of stamps to return. Valid values are:  - `signature`: Returns information about signature images only. This is the default value. - `stamp`: Returns information about eHanko and custom stamps only. - null (optional)

// Retrieves a list of signature definitions for a user.
UserSignaturesAPI.userSignaturesGetUserSignatures(accountId: accountId, userId: userId, stampType: stampType).whenComplete { result in
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
 **userId** | **String** | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, &#x60;userId&#x60; can represent another user whom the Administrator is accessing.  | 
 **stampType** | **String** | The type of stamps to return. Valid values are:  - &#x60;signature&#x60;: Returns information about signature images only. This is the default value. - &#x60;stamp&#x60;: Returns information about eHanko and custom stamps only. - null | [optional] 

### Return type

#### UserSignaturesGetUserSignatures

```swift
public enum UserSignaturesGetUserSignatures {
    case http200(value: UserSignaturesInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: UserSignaturesInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSignaturesPostUserSignatures**
```swift
    open class func userSignaturesPostUserSignatures(accountId: String, userId: String, userSignaturesInformation: UserSignaturesInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<UserSignaturesPostUserSignatures>
```

Adds user Signature and initials images to a Signature.

Adds a user signature image and/or user initials image to the specified user.   The userId property specified in the endpoint must match the authenticated user's `userId` and the user must be a member of the account.  The rules and processes associated with this are:  * If `Content-Type` is set to `application/json`, then the default behavior for creating a default signature image, based on the name and a DocuSign font, is used. * If `Content-Type` is set to `multipart/form-data`, then the request must contain a first part with the user signature information, followed by parts that contain the images.  For each Image part, the Content-Disposition header has a \"filename\" value that is used to map to the `signatureName` and/or `signatureInitials` properties in the JSON to the image.   For example:  `Content-Disposition: file; filename=\"Ron Test20121127083900\"`  If no matching image (by filename value) is found, then the image is not set. One, both, or neither of the signature and initials images can be set with this call.  The Content-Transfer-Encoding: base64 header, set in the header for the part containing the image, can be set to indicate that the images are formatted as base64 instead of as binary.  If successful, 200-OK is returned, and a JSON structure containing the signature information is provided, note that the signatureId can change with each API POST, PUT, or DELETE since the changes to the signature structure cause the current signature to be closed, and a new signature record to be created.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let userId = "userId_example" // String | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing. 
let userSignaturesInformation = userSignaturesInformation(userSignatures: [userSignature(adoptedDateTime: "adoptedDateTime_example", createdDateTime: "createdDateTime_example", customField: "customField_example", dateStampProperties: dateStampProperties(dateAreaHeight: "dateAreaHeight_example", dateAreaWidth: "dateAreaWidth_example", dateAreaX: "dateAreaX_example", dateAreaY: "dateAreaY_example"), disallowUserResizeStamp: "disallowUserResizeStamp_example", errorDetails: errorDetails(errorCode: "errorCode_example", message: "message_example"), externalID: "externalID_example", imageBase64: "imageBase64_example", imageType: "imageType_example", initials150ImageId: "initials150ImageId_example", initialsImageUri: "initialsImageUri_example", isDefault: "isDefault_example", lastModifiedDateTime: "lastModifiedDateTime_example", nrdsId: "nrdsId_example", nrdsLastName: "nrdsLastName_example", nrdsStatus: "nrdsStatus_example", phoneticName: "phoneticName_example", signature150ImageId: "signature150ImageId_example", signatureFont: "signatureFont_example", signatureId: "signatureId_example", signatureImageUri: "signatureImageUri_example", signatureInitials: "signatureInitials_example", signatureName: "signatureName_example", signatureRights: "signatureRights_example", signatureType: "signatureType_example", stampFormat: "stampFormat_example", stampImageUri: "stampImageUri_example", stampSizeMM: "stampSizeMM_example", stampType: "stampType_example", status: "status_example")]) // UserSignaturesInformation |  (optional)

// Adds user Signature and initials images to a Signature.
UserSignaturesAPI.userSignaturesPostUserSignatures(accountId: accountId, userId: userId, userSignaturesInformation: userSignaturesInformation).whenComplete { result in
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
 **userId** | **String** | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, &#x60;userId&#x60; can represent another user whom the Administrator is accessing.  | 
 **userSignaturesInformation** | [**UserSignaturesInformation**](UserSignaturesInformation.md) |  | [optional] 

### Return type

#### UserSignaturesPostUserSignatures

```swift
public enum UserSignaturesPostUserSignatures {
    case http201(value: UserSignaturesInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: UserSignaturesInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSignaturesPutUserSignature**
```swift
    open class func userSignaturesPutUserSignature(accountId: String, userId: String, userSignaturesInformation: UserSignaturesInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<UserSignaturesPutUserSignature>
```

Adds/updates a user signature.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let userId = "userId_example" // String | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing. 
let userSignaturesInformation = userSignaturesInformation(userSignatures: [userSignature(adoptedDateTime: "adoptedDateTime_example", createdDateTime: "createdDateTime_example", customField: "customField_example", dateStampProperties: dateStampProperties(dateAreaHeight: "dateAreaHeight_example", dateAreaWidth: "dateAreaWidth_example", dateAreaX: "dateAreaX_example", dateAreaY: "dateAreaY_example"), disallowUserResizeStamp: "disallowUserResizeStamp_example", errorDetails: errorDetails(errorCode: "errorCode_example", message: "message_example"), externalID: "externalID_example", imageBase64: "imageBase64_example", imageType: "imageType_example", initials150ImageId: "initials150ImageId_example", initialsImageUri: "initialsImageUri_example", isDefault: "isDefault_example", lastModifiedDateTime: "lastModifiedDateTime_example", nrdsId: "nrdsId_example", nrdsLastName: "nrdsLastName_example", nrdsStatus: "nrdsStatus_example", phoneticName: "phoneticName_example", signature150ImageId: "signature150ImageId_example", signatureFont: "signatureFont_example", signatureId: "signatureId_example", signatureImageUri: "signatureImageUri_example", signatureInitials: "signatureInitials_example", signatureName: "signatureName_example", signatureRights: "signatureRights_example", signatureType: "signatureType_example", stampFormat: "stampFormat_example", stampImageUri: "stampImageUri_example", stampSizeMM: "stampSizeMM_example", stampType: "stampType_example", status: "status_example")]) // UserSignaturesInformation |  (optional)

// Adds/updates a user signature.
UserSignaturesAPI.userSignaturesPutUserSignature(accountId: accountId, userId: userId, userSignaturesInformation: userSignaturesInformation).whenComplete { result in
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
 **userId** | **String** | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, &#x60;userId&#x60; can represent another user whom the Administrator is accessing.  | 
 **userSignaturesInformation** | [**UserSignaturesInformation**](UserSignaturesInformation.md) |  | [optional] 

### Return type

#### UserSignaturesPutUserSignature

```swift
public enum UserSignaturesPutUserSignature {
    case http200(value: UserSignaturesInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: UserSignaturesInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSignaturesPutUserSignatureById**
```swift
    open class func userSignaturesPutUserSignatureById(accountId: String, signatureId: String, userId: String, closeExistingSignature: String? = nil, userSignatureDefinition: UserSignatureDefinition? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<UserSignaturesPutUserSignatureById>
```

Updates the user signature for a specified user.

Creates, or updates, the signature font and initials for the specified user. When creating a signature, you use this resource to create the signature name and then add the signature and initials images into the signature.  **Note**: This will also create a default signature for the user when one does not exist.  The userId property specified in the endpoint must match the authenticated user's user ID and the user must be a member of the account.  The `signatureId` parameter accepts a signature ID. DocuSign recommends you use signature ID (`signatureId`), since some names contain characters that do not properly encode into a URL. If you use the user name, it is likely that the name includes spaces. In that case, URL encode the name before using it in the endpoint.  For example encode \"Bob Smith\" as \"Bob%20Smith\".

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let signatureId = "signatureId_example" // String | The ID of the signature being accessed.
let userId = "userId_example" // String | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing. 
let closeExistingSignature = "closeExistingSignature_example" // String | When set to **true**, closes the current signature. (optional)
let userSignatureDefinition = userSignatureDefinition(dateStampProperties: dateStampProperties(dateAreaHeight: "dateAreaHeight_example", dateAreaWidth: "dateAreaWidth_example", dateAreaX: "dateAreaX_example", dateAreaY: "dateAreaY_example"), disallowUserResizeStamp: "disallowUserResizeStamp_example", externalID: "externalID_example", imageType: "imageType_example", isDefault: "isDefault_example", nrdsId: "nrdsId_example", nrdsLastName: "nrdsLastName_example", phoneticName: "phoneticName_example", signatureFont: "signatureFont_example", signatureId: "signatureId_example", signatureInitials: "signatureInitials_example", signatureName: "signatureName_example", stampFormat: "stampFormat_example", stampSizeMM: "stampSizeMM_example") // UserSignatureDefinition |  (optional)

// Updates the user signature for a specified user.
UserSignaturesAPI.userSignaturesPutUserSignatureById(accountId: accountId, signatureId: signatureId, userId: userId, closeExistingSignature: closeExistingSignature, userSignatureDefinition: userSignatureDefinition).whenComplete { result in
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
 **userId** | **String** | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, &#x60;userId&#x60; can represent another user whom the Administrator is accessing.  | 
 **closeExistingSignature** | **String** | When set to **true**, closes the current signature. | [optional] 
 **userSignatureDefinition** | [**UserSignatureDefinition**](UserSignatureDefinition.md) |  | [optional] 

### Return type

#### UserSignaturesPutUserSignatureById

```swift
public enum UserSignaturesPutUserSignatureById {
    case http200(value: UserSignature?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: UserSignature?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSignaturesPutUserSignatureImage**
```swift
    open class func userSignaturesPutUserSignatureImage(accountId: String, imageType: String, signatureId: String, userId: String, transparentPng: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<UserSignaturesPutUserSignatureImage>
```

Updates the user signature image or user initials image for the specified user.

Updates the user signature image or user initials image for the specified user. The supported image formats for this file are: gif, png, jpeg, and bmp. The file must be less than 200K.  The userId property specified in the endpoint must match the authenticated user's user ID and the user must be a member of the account.  The `signatureId` parameter accepts a signature ID or a signature name. DocuSign recommends you use signature ID (`signatureId`), since some names contain characters that do not properly encode into a URL. If you use the user name, it is likely that the name includes spaces. In that case, URL encode the name before using it in the endpoint.   For example encode \"Bob Smith\" as \"Bob%20Smith\". 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let imageType = "imageType_example" // String | Specificies the type of image. Valid values are:  - `signature_image` - `initials_image`
let signatureId = "signatureId_example" // String | The ID of the signature being accessed.
let userId = "userId_example" // String | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing. 
let transparentPng = "transparentPng_example" // String |  (optional)

// Updates the user signature image or user initials image for the specified user.
UserSignaturesAPI.userSignaturesPutUserSignatureImage(accountId: accountId, imageType: imageType, signatureId: signatureId, userId: userId, transparentPng: transparentPng).whenComplete { result in
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
 **userId** | **String** | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, &#x60;userId&#x60; can represent another user whom the Administrator is accessing.  | 
 **transparentPng** | **String** |  | [optional] 

### Return type

#### UserSignaturesPutUserSignatureImage

```swift
public enum UserSignaturesPutUserSignatureImage {
    case http200(value: UserSignature?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: UserSignature?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

