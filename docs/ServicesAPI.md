# ServicesAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**serviceInformationGetServiceInformation**](ServicesAPI.md#serviceinformationgetserviceinformation) | **GET** /service_information | Retrieves the available REST API versions.


# **serviceInformationGetServiceInformation**
```swift
    open class func serviceInformationGetServiceInformation(headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ServiceInformationGetServiceInformation>
```

Retrieves the available REST API versions.

Retrieves the available REST API versions.  DocuSign Production system: https://www.docusign.net/restapi/service_information DocuSign Demo system: https://demo.docusign.net/restapi/service_information  You do not need an integrator key to view the REST API versions and resources.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI


// Retrieves the available REST API versions.
ServicesAPI.serviceInformationGetServiceInformation().whenComplete { result in
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

#### ServiceInformationGetServiceInformation

```swift
public enum ServiceInformationGetServiceInformation {
    case http200(value: ServiceInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ServiceInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

