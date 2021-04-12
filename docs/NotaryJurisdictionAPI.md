# NotaryJurisdictionAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**notaryJurisdictionsDeleteNotaryJurisdiction**](NotaryJurisdictionAPI.md#notaryjurisdictionsdeletenotaryjurisdiction) | **DELETE** /v2.1/current_user/notary/jurisdictions/{jurisdictionId} | Deletes the specified jurisdiction.
[**notaryJurisdictionsGetNotaryJurisdiction**](NotaryJurisdictionAPI.md#notaryjurisdictionsgetnotaryjurisdiction) | **GET** /v2.1/current_user/notary/jurisdictions/{jurisdictionId} | Gets a jurisdiction object for the current user. The user must be a notary.
[**notaryJurisdictionsGetNotaryJurisdictions**](NotaryJurisdictionAPI.md#notaryjurisdictionsgetnotaryjurisdictions) | **GET** /v2.1/current_user/notary/jurisdictions | Returns a list of jurisdictions that the notary is registered in.
[**notaryJurisdictionsPostNotaryJurisdictions**](NotaryJurisdictionAPI.md#notaryjurisdictionspostnotaryjurisdictions) | **POST** /v2.1/current_user/notary/jurisdictions | Creates a jurisdiction object.
[**notaryJurisdictionsPutNotaryJurisdiction**](NotaryJurisdictionAPI.md#notaryjurisdictionsputnotaryjurisdiction) | **PUT** /v2.1/current_user/notary/jurisdictions/{jurisdictionId} | Updates the jurisdiction information about a notary.


# **notaryJurisdictionsDeleteNotaryJurisdiction**
```swift
    open class func notaryJurisdictionsDeleteNotaryJurisdiction(jurisdictionId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<NotaryJurisdictionsDeleteNotaryJurisdiction>
```

Deletes the specified jurisdiction.

Deletes the specified jurisdiction.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let jurisdictionId = "jurisdictionId_example" // String | The ID of the jurisdiction. The following jurisdictions are supported:  -  `5 - California` -  `6 - Colorado` -  `9 - Florida` -  `10 - Georgia` -  `12 - Idaho` -  `13 - Illinois` -  `14 - Indiana` -  `15 - Iowa` -  `17 - Kentucky` -  `23 - Minnesota` -  `25 - Missouri` -  `30 - New Jersey` -  `32 - New York` -  `33 - North Carolina` -  `35 - Ohio` -  `37 - Oregon` -  `38 - Pennsylvania` -  `40 - South Carolina` -  `43 - Texas` -  `44 - Utah` -  `47 - Washington` -  `48 - West Virginia` -  `49 - Wisconsin` -  `62 - Florida Commissioner of Deeds` 

// Deletes the specified jurisdiction.
NotaryJurisdictionAPI.notaryJurisdictionsDeleteNotaryJurisdiction(jurisdictionId: jurisdictionId).whenComplete { result in
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
 **jurisdictionId** | **String** | The ID of the jurisdiction. The following jurisdictions are supported:  -  &#x60;5 - California&#x60; -  &#x60;6 - Colorado&#x60; -  &#x60;9 - Florida&#x60; -  &#x60;10 - Georgia&#x60; -  &#x60;12 - Idaho&#x60; -  &#x60;13 - Illinois&#x60; -  &#x60;14 - Indiana&#x60; -  &#x60;15 - Iowa&#x60; -  &#x60;17 - Kentucky&#x60; -  &#x60;23 - Minnesota&#x60; -  &#x60;25 - Missouri&#x60; -  &#x60;30 - New Jersey&#x60; -  &#x60;32 - New York&#x60; -  &#x60;33 - North Carolina&#x60; -  &#x60;35 - Ohio&#x60; -  &#x60;37 - Oregon&#x60; -  &#x60;38 - Pennsylvania&#x60; -  &#x60;40 - South Carolina&#x60; -  &#x60;43 - Texas&#x60; -  &#x60;44 - Utah&#x60; -  &#x60;47 - Washington&#x60; -  &#x60;48 - West Virginia&#x60; -  &#x60;49 - Wisconsin&#x60; -  &#x60;62 - Florida Commissioner of Deeds&#x60;  | 

### Return type

#### NotaryJurisdictionsDeleteNotaryJurisdiction

```swift
public enum NotaryJurisdictionsDeleteNotaryJurisdiction {
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

# **notaryJurisdictionsGetNotaryJurisdiction**
```swift
    open class func notaryJurisdictionsGetNotaryJurisdiction(jurisdictionId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<NotaryJurisdictionsGetNotaryJurisdiction>
```

Gets a jurisdiction object for the current user. The user must be a notary.

Gets a jurisdiction object for the current user.  The following restrictions apply:  - The current user must be a notary. - The `jurisdictionId` must be a jurisdiction that the notary is registered for. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let jurisdictionId = "jurisdictionId_example" // String | The ID of the jurisdiction. The following jurisdictions are supported:  -  `5 - California` -  `6 - Colorado` -  `9 - Florida` -  `10 - Georgia` -  `12 - Idaho` -  `13 - Illinois` -  `14 - Indiana` -  `15 - Iowa` -  `17 - Kentucky` -  `23 - Minnesota` -  `25 - Missouri` -  `30 - New Jersey` -  `32 - New York` -  `33 - North Carolina` -  `35 - Ohio` -  `37 - Oregon` -  `38 - Pennsylvania` -  `40 - South Carolina` -  `43 - Texas` -  `44 - Utah` -  `47 - Washington` -  `48 - West Virginia` -  `49 - Wisconsin` -  `62 - Florida Commissioner of Deeds` 

// Gets a jurisdiction object for the current user. The user must be a notary.
NotaryJurisdictionAPI.notaryJurisdictionsGetNotaryJurisdiction(jurisdictionId: jurisdictionId).whenComplete { result in
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
 **jurisdictionId** | **String** | The ID of the jurisdiction. The following jurisdictions are supported:  -  &#x60;5 - California&#x60; -  &#x60;6 - Colorado&#x60; -  &#x60;9 - Florida&#x60; -  &#x60;10 - Georgia&#x60; -  &#x60;12 - Idaho&#x60; -  &#x60;13 - Illinois&#x60; -  &#x60;14 - Indiana&#x60; -  &#x60;15 - Iowa&#x60; -  &#x60;17 - Kentucky&#x60; -  &#x60;23 - Minnesota&#x60; -  &#x60;25 - Missouri&#x60; -  &#x60;30 - New Jersey&#x60; -  &#x60;32 - New York&#x60; -  &#x60;33 - North Carolina&#x60; -  &#x60;35 - Ohio&#x60; -  &#x60;37 - Oregon&#x60; -  &#x60;38 - Pennsylvania&#x60; -  &#x60;40 - South Carolina&#x60; -  &#x60;43 - Texas&#x60; -  &#x60;44 - Utah&#x60; -  &#x60;47 - Washington&#x60; -  &#x60;48 - West Virginia&#x60; -  &#x60;49 - Wisconsin&#x60; -  &#x60;62 - Florida Commissioner of Deeds&#x60;  | 

### Return type

#### NotaryJurisdictionsGetNotaryJurisdiction

```swift
public enum NotaryJurisdictionsGetNotaryJurisdiction {
    case http200(value: NotaryJurisdiction?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: NotaryJurisdiction?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notaryJurisdictionsGetNotaryJurisdictions**
```swift
    open class func notaryJurisdictionsGetNotaryJurisdictions(headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<NotaryJurisdictionsGetNotaryJurisdictions>
```

Returns a list of jurisdictions that the notary is registered in.

Returns a list of jurisdictions that the notary is registered in. The current user must be a notary.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI


// Returns a list of jurisdictions that the notary is registered in.
NotaryJurisdictionAPI.notaryJurisdictionsGetNotaryJurisdictions().whenComplete { result in
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
This endpoint does not need any parameter.

### Return type

#### NotaryJurisdictionsGetNotaryJurisdictions

```swift
public enum NotaryJurisdictionsGetNotaryJurisdictions {
    case http200(value: NotaryJurisdictionList?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: NotaryJurisdictionList?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notaryJurisdictionsPostNotaryJurisdictions**
```swift
    open class func notaryJurisdictionsPostNotaryJurisdictions(notaryJurisdiction: NotaryJurisdiction? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<NotaryJurisdictionsPostNotaryJurisdictions>
```

Creates a jurisdiction object.

Creates a jurisdiction object.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let notaryJurisdiction = NotaryJurisdiction(commissionExpiration: "commissionExpiration_example", commissionId: "commissionId_example", county: "county_example", errorDetails: errorDetails(errorCode: "errorCode_example", message: "message_example"), jurisdiction: jurisdiction(allowSystemCreatedSeal: "allowSystemCreatedSeal_example", allowUserUploadedSeal: "allowUserUploadedSeal_example", commissionIdInSeal: "commissionIdInSeal_example", county: "county_example", countyInSeal: "countyInSeal_example", enabled: "enabled_example", jurisdictionId: "jurisdictionId_example", name: "name_example", notaryPublicInSeal: "notaryPublicInSeal_example", stateNameInSeal: "stateNameInSeal_example"), registeredName: "registeredName_example", sealType: "sealType_example") // NotaryJurisdiction |  (optional)

// Creates a jurisdiction object.
NotaryJurisdictionAPI.notaryJurisdictionsPostNotaryJurisdictions(notaryJurisdiction: notaryJurisdiction).whenComplete { result in
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
 **notaryJurisdiction** | [**NotaryJurisdiction**](NotaryJurisdiction.md) |  | [optional] 

### Return type

#### NotaryJurisdictionsPostNotaryJurisdictions

```swift
public enum NotaryJurisdictionsPostNotaryJurisdictions {
    case http201(value: NotaryJurisdiction?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: NotaryJurisdiction?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notaryJurisdictionsPutNotaryJurisdiction**
```swift
    open class func notaryJurisdictionsPutNotaryJurisdiction(jurisdictionId: String, notaryJurisdiction: NotaryJurisdiction? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<NotaryJurisdictionsPutNotaryJurisdiction>
```

Updates the jurisdiction information about a notary.

Updates the jurisdiction information about a notary.  The following restrictions apply:  - The current user must be a notary. - The `jurisdictionId` path parameter must be a jurisdiction that the notary is registered for. - The `jurisdictionId` path parameter must match the request body's `jurisdiction.jurisdictionId`.  The request body must have a full `jurisdiction` object for the jurisdiction property. The best way to do this is to use `getNotaryJurisdiction` to obtain the current values and update the properties you want to change.  For example, assume `getNotaryJurisdiction` returns this:  ``` {     \"jurisdiction\": {         \"jurisdictionId\": \"15\",         \"name\": \"Iowa\",         \"county\": \"\",         \"enabled\": \"true\",         \"countyInSeal\": \"false\",         \"commissionIdInSeal\": \"true\",         \"stateNameInSeal\": \"true\",         \"notaryPublicInSeal\": \"true\",         \"allowSystemCreatedSeal\": \"true\",         \"allowUserUploadedSeal\": \"false\"     },     \"commissionId\": \"123456\",     \"commissionExpiration\": \"2020-08-31T07:00:00.0000000Z\",     \"registeredName\": \"Bob Notary\",     \"county\": \"Adams\",     \"sealType\": \"system_created\" } ```  If you want to change the name of the notary from \"Bob Notary\" to \"Robert Notary\", your request body would be:  ``` {     \"jurisdiction\": {         \"jurisdictionId\": \"15\",         \"name\": \"Iowa\",         \"county\": \"\",         \"enabled\": \"true\",         \"countyInSeal\": \"false\",         \"commissionIdInSeal\": \"true\",         \"stateNameInSeal\": \"true\",         \"notaryPublicInSeal\": \"true\",         \"allowSystemCreatedSeal\": \"true\",         \"allowUserUploadedSeal\": \"false\"     },     \"commissionId\": \"123456\",     \"commissionExpiration\": \"2020-08-31T07:00:00.0000000Z\",     \"registeredName\": \"Robert Notary\",     \"county\": \"Adams\",     \"sealType\": \"system_created\" } ``` 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let jurisdictionId = "jurisdictionId_example" // String | The ID of the jurisdiction. The following jurisdictions are supported:  -  `5 - California` -  `6 - Colorado` -  `9 - Florida` -  `10 - Georgia` -  `12 - Idaho` -  `13 - Illinois` -  `14 - Indiana` -  `15 - Iowa` -  `17 - Kentucky` -  `23 - Minnesota` -  `25 - Missouri` -  `30 - New Jersey` -  `32 - New York` -  `33 - North Carolina` -  `35 - Ohio` -  `37 - Oregon` -  `38 - Pennsylvania` -  `40 - South Carolina` -  `43 - Texas` -  `44 - Utah` -  `47 - Washington` -  `48 - West Virginia` -  `49 - Wisconsin` -  `62 - Florida Commissioner of Deeds` 
let notaryJurisdiction = NotaryJurisdiction(commissionExpiration: "commissionExpiration_example", commissionId: "commissionId_example", county: "county_example", errorDetails: errorDetails(errorCode: "errorCode_example", message: "message_example"), jurisdiction: jurisdiction(allowSystemCreatedSeal: "allowSystemCreatedSeal_example", allowUserUploadedSeal: "allowUserUploadedSeal_example", commissionIdInSeal: "commissionIdInSeal_example", county: "county_example", countyInSeal: "countyInSeal_example", enabled: "enabled_example", jurisdictionId: "jurisdictionId_example", name: "name_example", notaryPublicInSeal: "notaryPublicInSeal_example", stateNameInSeal: "stateNameInSeal_example"), registeredName: "registeredName_example", sealType: "sealType_example") // NotaryJurisdiction |  (optional)

// Updates the jurisdiction information about a notary.
NotaryJurisdictionAPI.notaryJurisdictionsPutNotaryJurisdiction(jurisdictionId: jurisdictionId, notaryJurisdiction: notaryJurisdiction).whenComplete { result in
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
 **jurisdictionId** | **String** | The ID of the jurisdiction. The following jurisdictions are supported:  -  &#x60;5 - California&#x60; -  &#x60;6 - Colorado&#x60; -  &#x60;9 - Florida&#x60; -  &#x60;10 - Georgia&#x60; -  &#x60;12 - Idaho&#x60; -  &#x60;13 - Illinois&#x60; -  &#x60;14 - Indiana&#x60; -  &#x60;15 - Iowa&#x60; -  &#x60;17 - Kentucky&#x60; -  &#x60;23 - Minnesota&#x60; -  &#x60;25 - Missouri&#x60; -  &#x60;30 - New Jersey&#x60; -  &#x60;32 - New York&#x60; -  &#x60;33 - North Carolina&#x60; -  &#x60;35 - Ohio&#x60; -  &#x60;37 - Oregon&#x60; -  &#x60;38 - Pennsylvania&#x60; -  &#x60;40 - South Carolina&#x60; -  &#x60;43 - Texas&#x60; -  &#x60;44 - Utah&#x60; -  &#x60;47 - Washington&#x60; -  &#x60;48 - West Virginia&#x60; -  &#x60;49 - Wisconsin&#x60; -  &#x60;62 - Florida Commissioner of Deeds&#x60;  | 
 **notaryJurisdiction** | [**NotaryJurisdiction**](NotaryJurisdiction.md) |  | [optional] 

### Return type

#### NotaryJurisdictionsPutNotaryJurisdiction

```swift
public enum NotaryJurisdictionsPutNotaryJurisdiction {
    case http200(value: NotaryJurisdiction?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: NotaryJurisdiction?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

