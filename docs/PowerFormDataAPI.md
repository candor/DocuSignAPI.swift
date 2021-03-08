# PowerFormDataAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**powerFormsGetPowerFormFormData**](PowerFormDataAPI.md#powerformsgetpowerformformdata) | **GET** /v2.1/accounts/{accountId}/powerforms/{powerFormId}/form_data | Returns the data that users entered in a PowerForm.


# **powerFormsGetPowerFormFormData**
```swift
    open class func powerFormsGetPowerFormFormData(accountId: String, powerFormId: String, dataLayout: String? = nil, fromDate: String? = nil, toDate: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<PowerFormsGetPowerFormFormData>
```

Returns the data that users entered in a PowerForm.

This method enables Powerform Administrators or the sender of a PowerForm to download the data that recipients have entered into a PowerForm.  You specify the format in which you want to retrieve the data in the `Accept` header. This header accepts the following values:   - `application/json`: JSON format - `application/xml`: XML format - `text/csv`: Comma-separated value (CSV) format  **Note**: Only PowerForm Administrators or the PowerForm Sender can download the data associated with a PowerForm.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let powerFormId = "powerFormId_example" // String | The id of the PowerForm.
let dataLayout = "dataLayout_example" // String | The layout in which to return the PowerForm data. Valid values are:  - `Native` - `Csv_Classic` - `Csv_One_Envelope_Per_Line` - `Xml_Classic` (optional)
let fromDate = "fromDate_example" // String | The start date for a date range in UTC DateTime format.  **Note**: If this property is null, no date filtering is applied. (optional)
let toDate = "toDate_example" // String | The end date of a date range in UTC DateTime format. The default value is `UtcNow`. (optional)

// Returns the data that users entered in a PowerForm.
PowerFormDataAPI.powerFormsGetPowerFormFormData(accountId: accountId, powerFormId: powerFormId, dataLayout: dataLayout, fromDate: fromDate, toDate: toDate).whenComplete { result in
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
 **powerFormId** | **String** | The id of the PowerForm. | 
 **dataLayout** | **String** | The layout in which to return the PowerForm data. Valid values are:  - &#x60;Native&#x60; - &#x60;Csv_Classic&#x60; - &#x60;Csv_One_Envelope_Per_Line&#x60; - &#x60;Xml_Classic&#x60; | [optional] 
 **fromDate** | **String** | The start date for a date range in UTC DateTime format.  **Note**: If this property is null, no date filtering is applied. | [optional] 
 **toDate** | **String** | The end date of a date range in UTC DateTime format. The default value is &#x60;UtcNow&#x60;. | [optional] 

### Return type

#### PowerFormsGetPowerFormFormData

```swift
public enum PowerFormsGetPowerFormFormData {
    case http200(value: PowerFormsFormDataResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: PowerFormsFormDataResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

