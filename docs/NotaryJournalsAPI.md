# NotaryJournalsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**notaryJournalsGetNotaryJournals**](NotaryJournalsAPI.md#notaryjournalsgetnotaryjournals) | **GET** /v2.1/current_user/notary/journals | 


# **notaryJournalsGetNotaryJournals**
```swift
    open class func notaryJournalsGetNotaryJournals(count: String? = nil, searchText: String? = nil, startPosition: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<NotaryJournalsGetNotaryJournals>
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let count = "count_example" // String | The maximum number of results to return. (optional)
let searchText = "searchText_example" // String | Use this parameter to search for specific text. (optional)
let startPosition = "startPosition_example" // String | The position within the total result set from which to start returning values. The value **thumbnail** may be used to return the page image. (optional)

NotaryJournalsAPI.notaryJournalsGetNotaryJournals(count: count, searchText: searchText, startPosition: startPosition).whenComplete { result in
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
 **count** | **String** | The maximum number of results to return. | [optional] 
 **searchText** | **String** | Use this parameter to search for specific text. | [optional] 
 **startPosition** | **String** | The position within the total result set from which to start returning values. The value **thumbnail** may be used to return the page image. | [optional] 

### Return type

#### NotaryJournalsGetNotaryJournals

```swift
public enum NotaryJournalsGetNotaryJournals {
    case http200(value: NotaryJournalList?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: NotaryJournalList?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

