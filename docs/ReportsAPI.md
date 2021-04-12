# ReportsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**reportsInProductDeleteReportInProduct**](ReportsAPI.md#reportsinproductdeletereportinproduct) | **DELETE** /v2.1/accounts/{accountId}/reports/{id} | 
[**reportsInProductGetReportInProduct**](ReportsAPI.md#reportsinproductgetreportinproduct) | **GET** /v2.1/accounts/{accountId}/reports/{id} | 
[**reportsInProductGetReportInProductList**](ReportsAPI.md#reportsinproductgetreportinproductlist) | **GET** /v2.1/accounts/{accountId}/reports | 
[**reportsInProductPostReportInProductCreate**](ReportsAPI.md#reportsinproductpostreportinproductcreate) | **POST** /v2.1/accounts/{accountId}/reports | 
[**reportsInProductPutReportInProductRunResults**](ReportsAPI.md#reportsinproductputreportinproductrunresults) | **PUT** /v2.1/accounts/{accountId}/reports/report_results | 
[**reportsInProductPutReportInProductSave**](ReportsAPI.md#reportsinproductputreportinproductsave) | **PUT** /v2.1/accounts/{accountId}/reports/{id} | 
[**reportsInProductPutReportResultsCsv**](ReportsAPI.md#reportsinproductputreportresultscsv) | **PUT** /v2.1/accounts/{accountId}/reports/report_results_csv | 


# **reportsInProductDeleteReportInProduct**
```swift
    open class func reportsInProductDeleteReportInProduct(accountId: String, id: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ReportsInProductDeleteReportInProduct>
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let id = "id_example" // String | A unique ID for the Salesforce object.

ReportsAPI.reportsInProductDeleteReportInProduct(accountId: accountId, id: id).whenComplete { result in
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
 **id** | **String** | A unique ID for the Salesforce object. | 

### Return type

#### ReportsInProductDeleteReportInProduct

```swift
public enum ReportsInProductDeleteReportInProduct {
    case http200(value: ReportInProductSaveResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ReportInProductSaveResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reportsInProductGetReportInProduct**
```swift
    open class func reportsInProductGetReportInProduct(accountId: String, id: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ReportsInProductGetReportInProduct>
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let id = "id_example" // String | A unique ID for the Salesforce object.

ReportsAPI.reportsInProductGetReportInProduct(accountId: accountId, id: id).whenComplete { result in
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
 **id** | **String** | A unique ID for the Salesforce object. | 

### Return type

#### ReportsInProductGetReportInProduct

```swift
public enum ReportsInProductGetReportInProduct {
    case http200(value: ReportInProductGet?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ReportInProductGet?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reportsInProductGetReportInProductList**
```swift
    open class func reportsInProductGetReportInProductList(accountId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ReportsInProductGetReportInProductList>
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.

ReportsAPI.reportsInProductGetReportInProductList(accountId: accountId).whenComplete { result in
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

#### ReportsInProductGetReportInProductList

```swift
public enum ReportsInProductGetReportInProductList {
    case http200(value: ReportInProductList?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ReportInProductList?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reportsInProductPostReportInProductCreate**
```swift
    open class func reportsInProductPostReportInProductCreate(accountId: String, reportInProductRunRequest: ReportInProductRunRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ReportsInProductPostReportInProductCreate>
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let reportInProductRunRequest = reportInProductRunRequest(customFieldFilter: "customFieldFilter_example", dateRangeCustomFromDate: "dateRangeCustomFromDate_example", dateRangeCustomToDate: "dateRangeCustomToDate_example", dateRangeFilter: "dateRangeFilter_example", envelopeDateTypeFilter: "envelopeDateTypeFilter_example", envelopeRecipientNameContainsFilter: "envelopeRecipientNameContainsFilter_example", envelopeStatusFilter: "envelopeStatusFilter_example", envelopeSubjectContainsFilter: "envelopeSubjectContainsFilter_example", fields: [reportInProductField(displayOrder: "displayOrder_example", fieldVersion: "fieldVersion_example", name: "name_example", selected: "selected_example")], forDownload: "forDownload_example", isDashboard: "isDashboard_example", periodLengthFilter: "periodLengthFilter_example", reportCustomizedId: "reportCustomizedId_example", reportDescription: "reportDescription_example", reportId: "reportId_example", reportInvocationType: "reportInvocationType_example", reportName: "reportName_example", sentByFilter: "sentByFilter_example", sentByIds: "sentByIds_example", sortDirection: "sortDirection_example", sortField: "sortField_example", startPosition: "startPosition_example") // ReportInProductRunRequest |  (optional)

ReportsAPI.reportsInProductPostReportInProductCreate(accountId: accountId, reportInProductRunRequest: reportInProductRunRequest).whenComplete { result in
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
 **reportInProductRunRequest** | [**ReportInProductRunRequest**](ReportInProductRunRequest.md) |  | [optional] 

### Return type

#### ReportsInProductPostReportInProductCreate

```swift
public enum ReportsInProductPostReportInProductCreate {
    case http201(value: ReportInProductSaveResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ReportInProductSaveResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reportsInProductPutReportInProductRunResults**
```swift
    open class func reportsInProductPutReportInProductRunResults(accountId: String, reportInProductRunRequest: ReportInProductRunRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ReportsInProductPutReportInProductRunResults>
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let reportInProductRunRequest = reportInProductRunRequest(customFieldFilter: "customFieldFilter_example", dateRangeCustomFromDate: "dateRangeCustomFromDate_example", dateRangeCustomToDate: "dateRangeCustomToDate_example", dateRangeFilter: "dateRangeFilter_example", envelopeDateTypeFilter: "envelopeDateTypeFilter_example", envelopeRecipientNameContainsFilter: "envelopeRecipientNameContainsFilter_example", envelopeStatusFilter: "envelopeStatusFilter_example", envelopeSubjectContainsFilter: "envelopeSubjectContainsFilter_example", fields: [reportInProductField(displayOrder: "displayOrder_example", fieldVersion: "fieldVersion_example", name: "name_example", selected: "selected_example")], forDownload: "forDownload_example", isDashboard: "isDashboard_example", periodLengthFilter: "periodLengthFilter_example", reportCustomizedId: "reportCustomizedId_example", reportDescription: "reportDescription_example", reportId: "reportId_example", reportInvocationType: "reportInvocationType_example", reportName: "reportName_example", sentByFilter: "sentByFilter_example", sentByIds: "sentByIds_example", sortDirection: "sortDirection_example", sortField: "sortField_example", startPosition: "startPosition_example") // ReportInProductRunRequest |  (optional)

ReportsAPI.reportsInProductPutReportInProductRunResults(accountId: accountId, reportInProductRunRequest: reportInProductRunRequest).whenComplete { result in
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
 **reportInProductRunRequest** | [**ReportInProductRunRequest**](ReportInProductRunRequest.md) |  | [optional] 

### Return type

#### ReportsInProductPutReportInProductRunResults

```swift
public enum ReportsInProductPutReportInProductRunResults {
    case http200(value: ReportInProductRunResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ReportInProductRunResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reportsInProductPutReportInProductSave**
```swift
    open class func reportsInProductPutReportInProductSave(accountId: String, id: String, reportInProductRunRequest: ReportInProductRunRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ReportsInProductPutReportInProductSave>
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let id = "id_example" // String | A unique ID for the Salesforce object.
let reportInProductRunRequest = reportInProductRunRequest(customFieldFilter: "customFieldFilter_example", dateRangeCustomFromDate: "dateRangeCustomFromDate_example", dateRangeCustomToDate: "dateRangeCustomToDate_example", dateRangeFilter: "dateRangeFilter_example", envelopeDateTypeFilter: "envelopeDateTypeFilter_example", envelopeRecipientNameContainsFilter: "envelopeRecipientNameContainsFilter_example", envelopeStatusFilter: "envelopeStatusFilter_example", envelopeSubjectContainsFilter: "envelopeSubjectContainsFilter_example", fields: [reportInProductField(displayOrder: "displayOrder_example", fieldVersion: "fieldVersion_example", name: "name_example", selected: "selected_example")], forDownload: "forDownload_example", isDashboard: "isDashboard_example", periodLengthFilter: "periodLengthFilter_example", reportCustomizedId: "reportCustomizedId_example", reportDescription: "reportDescription_example", reportId: "reportId_example", reportInvocationType: "reportInvocationType_example", reportName: "reportName_example", sentByFilter: "sentByFilter_example", sentByIds: "sentByIds_example", sortDirection: "sortDirection_example", sortField: "sortField_example", startPosition: "startPosition_example") // ReportInProductRunRequest |  (optional)

ReportsAPI.reportsInProductPutReportInProductSave(accountId: accountId, id: id, reportInProductRunRequest: reportInProductRunRequest).whenComplete { result in
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
 **id** | **String** | A unique ID for the Salesforce object. | 
 **reportInProductRunRequest** | [**ReportInProductRunRequest**](ReportInProductRunRequest.md) |  | [optional] 

### Return type

#### ReportsInProductPutReportInProductSave

```swift
public enum ReportsInProductPutReportInProductSave {
    case http200(value: ReportInProductSaveResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ReportInProductSaveResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **reportsInProductPutReportResultsCsv**
```swift
    open class func reportsInProductPutReportResultsCsv(accountId: String, reportInProductCsvRunRequest: ReportInProductCsvRunRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ReportsInProductPutReportResultsCsv>
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let reportInProductCsvRunRequest = reportInProductCsvRunRequest(customFieldFilter: "customFieldFilter_example", dateRangeCustomFromDate: "dateRangeCustomFromDate_example", dateRangeCustomToDate: "dateRangeCustomToDate_example", dateRangeFilter: "dateRangeFilter_example", envelopeDateTypeFilter: "envelopeDateTypeFilter_example", envelopeRecipientNameContainsFilter: "envelopeRecipientNameContainsFilter_example", envelopeStatusFilter: "envelopeStatusFilter_example", envelopeSubjectContainsFilter: "envelopeSubjectContainsFilter_example", fields: [reportInProductField(displayOrder: "displayOrder_example", fieldVersion: "fieldVersion_example", name: "name_example", selected: "selected_example")], forDownload: "forDownload_example", isDashboard: "isDashboard_example", newLine: "newLine_example", overrideTimezoneKey: "overrideTimezoneKey_example", periodLengthFilter: "periodLengthFilter_example", quote: "quote_example", reportCustomizedId: "reportCustomizedId_example", reportDescription: "reportDescription_example", reportId: "reportId_example", reportInvocationType: "reportInvocationType_example", reportName: "reportName_example", sentByFilter: "sentByFilter_example", sentByIds: "sentByIds_example", separator: "separator_example", sortDirection: "sortDirection_example", sortField: "sortField_example", startPosition: "startPosition_example") // ReportInProductCsvRunRequest |  (optional)

ReportsAPI.reportsInProductPutReportResultsCsv(accountId: accountId, reportInProductCsvRunRequest: reportInProductCsvRunRequest).whenComplete { result in
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
 **reportInProductCsvRunRequest** | [**ReportInProductCsvRunRequest**](ReportInProductCsvRunRequest.md) |  | [optional] 

### Return type

#### ReportsInProductPutReportResultsCsv

```swift
public enum ReportsInProductPutReportResultsCsv {
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

