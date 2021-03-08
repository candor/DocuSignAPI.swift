# ResourcesAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**serviceInformationGetResourceInformation**](ResourcesAPI.md#serviceinformationgetresourceinformation) | **GET** /v2.1 | Lists resources for REST version specified


# **serviceInformationGetResourceInformation**
```swift
    open class func serviceInformationGetResourceInformation(headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ServiceInformationGetResourceInformation>
```

Lists resources for REST version specified

Retrieves the base resources available for the DocuSign REST APIs.  You do not need an integrator key to view the REST API versions and resources.  Example: https://demo.docusign.net/restapi/v2 lists all of the base resources available in version 2 of the REST API on the DocuSign Demo system.  To view descriptions and samples of the service operations for all versions, remove the version number and add /help to the URL.  Example: https://demo.docusign.net/restapi/help lists the REST API operations on the DocuSign Demo system with XML and JSON request and response samples.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI


// Lists resources for REST version specified
ResourcesAPI.serviceInformationGetResourceInformation().whenComplete { result in
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

#### ServiceInformationGetResourceInformation

```swift
public enum ServiceInformationGetResourceInformation {
    case http200(value: ResourceInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ResourceInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

