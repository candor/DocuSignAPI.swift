# EnvelopeTransferRulesAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**envelopeTransferRulesDeleteEnvelopeTransferRules**](EnvelopeTransferRulesAPI.md#envelopetransferrulesdeleteenvelopetransferrules) | **DELETE** /v2.1/accounts/{accountId}/envelopes/transfer_rules/{envelopeTransferRuleId} | Deletes an envelope transfer rule.
[**envelopeTransferRulesGetEnvelopeTransferRules**](EnvelopeTransferRulesAPI.md#envelopetransferrulesgetenvelopetransferrules) | **GET** /v2.1/accounts/{accountId}/envelopes/transfer_rules | Gets envelope transfer rules.
[**envelopeTransferRulesPostEnvelopeTransferRules**](EnvelopeTransferRulesAPI.md#envelopetransferrulespostenvelopetransferrules) | **POST** /v2.1/accounts/{accountId}/envelopes/transfer_rules | Creates an envelope transfer rule.
[**envelopeTransferRulesPutEnvelopeTransferRule**](EnvelopeTransferRulesAPI.md#envelopetransferrulesputenvelopetransferrule) | **PUT** /v2.1/accounts/{accountId}/envelopes/transfer_rules/{envelopeTransferRuleId} | Changes the status of an envelope transfer rule.
[**envelopeTransferRulesPutEnvelopeTransferRules**](EnvelopeTransferRulesAPI.md#envelopetransferrulesputenvelopetransferrules) | **PUT** /v2.1/accounts/{accountId}/envelopes/transfer_rules | Changes the status of multiple envelope transfer rules.


# **envelopeTransferRulesDeleteEnvelopeTransferRules**
```swift
    open class func envelopeTransferRulesDeleteEnvelopeTransferRules(accountId: String, envelopeTransferRuleId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<EnvelopeTransferRulesDeleteEnvelopeTransferRules>
```

Deletes an envelope transfer rule.

This method deletes an envelope transfer rule.  **Note**: Only Administrators can delete envelope transfer rules. In addition, to use envelope transfer rules, the **Transfer Custody** feature must be enabled for your account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeTransferRuleId = "envelopeTransferRuleId_example" // String | The id of the envelope transfer rule. The system generates this id when the rule is first created.

// Deletes an envelope transfer rule.
EnvelopeTransferRulesAPI.envelopeTransferRulesDeleteEnvelopeTransferRules(accountId: accountId, envelopeTransferRuleId: envelopeTransferRuleId).whenComplete { result in
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
 **envelopeTransferRuleId** | **String** | The id of the envelope transfer rule. The system generates this id when the rule is first created. | 

### Return type

#### EnvelopeTransferRulesDeleteEnvelopeTransferRules

```swift
public enum EnvelopeTransferRulesDeleteEnvelopeTransferRules {
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

# **envelopeTransferRulesGetEnvelopeTransferRules**
```swift
    open class func envelopeTransferRulesGetEnvelopeTransferRules(accountId: String, count: String? = nil, startPosition: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<EnvelopeTransferRulesGetEnvelopeTransferRules>
```

Gets envelope transfer rules.

This method retrieves a list of envelope transfer rules associated with an account.  **Note**: Only Administrators can create and use envelope transfer rules. In addition, to use envelope transfer rules, the **Transfer Custody** feature must be enabled for your account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let count = "count_example" // String | (Optional) The maximum number of results to return. (optional)
let startPosition = "startPosition_example" // String | (Optional) The position within the total result set from which to start returning values. The value **thumbnail** may be used to return the page image. (optional)

// Gets envelope transfer rules.
EnvelopeTransferRulesAPI.envelopeTransferRulesGetEnvelopeTransferRules(accountId: accountId, count: count, startPosition: startPosition).whenComplete { result in
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
 **count** | **String** | (Optional) The maximum number of results to return. | [optional] 
 **startPosition** | **String** | (Optional) The position within the total result set from which to start returning values. The value **thumbnail** may be used to return the page image. | [optional] 

### Return type

#### EnvelopeTransferRulesGetEnvelopeTransferRules

```swift
public enum EnvelopeTransferRulesGetEnvelopeTransferRules {
    case http200(value: EnvelopeTransferRuleInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeTransferRuleInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **envelopeTransferRulesPostEnvelopeTransferRules**
```swift
    open class func envelopeTransferRulesPostEnvelopeTransferRules(accountId: String, envelopeTransferRuleRequest: EnvelopeTransferRuleRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<EnvelopeTransferRulesPostEnvelopeTransferRules>
```

Creates an envelope transfer rule.

This method creates an envelope transfer rule.  When you create an envelope transfer rule, you specify the following properties:   - `eventType` - `fromGroups` - `toUser` - `toFolder` - `carbonCopyOriginalOwner` - `enabled`  **Note**: Only Administrators can create envelope transfer rules. In addition, to use envelope transfer rules, the **Transfer Custody** feature must be enabled for your account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeTransferRuleRequest = envelopeTransferRuleRequest(carbonCopyOriginalOwner: "carbonCopyOriginalOwner_example", enabled: "enabled_example", envelopeTransferRuleId: "envelopeTransferRuleId_example", eventType: "eventType_example", fromGroups: [nil], fromUsers: [nil], modifiedDate: "modifiedDate_example", modifiedUser: nil, toFolder: nil, toUser: nil) // EnvelopeTransferRuleRequest |  (optional)

// Creates an envelope transfer rule.
EnvelopeTransferRulesAPI.envelopeTransferRulesPostEnvelopeTransferRules(accountId: accountId, envelopeTransferRuleRequest: envelopeTransferRuleRequest).whenComplete { result in
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
 **envelopeTransferRuleRequest** | [**EnvelopeTransferRuleRequest**](EnvelopeTransferRuleRequest.md) |  | [optional] 

### Return type

#### EnvelopeTransferRulesPostEnvelopeTransferRules

```swift
public enum EnvelopeTransferRulesPostEnvelopeTransferRules {
    case http201(value: EnvelopeTransferRuleInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeTransferRuleInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **envelopeTransferRulesPutEnvelopeTransferRule**
```swift
    open class func envelopeTransferRulesPutEnvelopeTransferRule(accountId: String, envelopeTransferRuleId: String, envelopeTransferRule: EnvelopeTransferRule? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<EnvelopeTransferRulesPutEnvelopeTransferRule>
```

Changes the status of an envelope transfer rule.

This method changes the status of an envelope transfer rule. You use this method to change whether or not the rule is enabled.  You must include the `envelopeTransferRuleId` both as a query parameter, and in the request body.  **Note**: You cannot change any other information about the envelope transfer rule. Only Administrators can update an envelope transfer rule. In addition, to use envelope transfer rules, the **Transfer Custody** feature must be enabled for your account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeTransferRuleId = "envelopeTransferRuleId_example" // String | The id of the envelope transfer rule. The system generates this id when the rule is first created.
let envelopeTransferRule = envelopeTransferRule(carbonCopyOriginalOwner: "carbonCopyOriginalOwner_example", enabled: "enabled_example", envelopeTransferRuleId: "envelopeTransferRuleId_example", eventType: "eventType_example", fromGroup: nil, fromUser: nil, modifiedDate: "modifiedDate_example", modifiedUser: nil, toFolder: nil, toUser: nil) // EnvelopeTransferRule |  (optional)

// Changes the status of an envelope transfer rule.
EnvelopeTransferRulesAPI.envelopeTransferRulesPutEnvelopeTransferRule(accountId: accountId, envelopeTransferRuleId: envelopeTransferRuleId, envelopeTransferRule: envelopeTransferRule).whenComplete { result in
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
 **envelopeTransferRuleId** | **String** | The id of the envelope transfer rule. The system generates this id when the rule is first created. | 
 **envelopeTransferRule** | [**EnvelopeTransferRule**](EnvelopeTransferRule.md) |  | [optional] 

### Return type

#### EnvelopeTransferRulesPutEnvelopeTransferRule

```swift
public enum EnvelopeTransferRulesPutEnvelopeTransferRule {
    case http200(value: EnvelopeTransferRule?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeTransferRule?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **envelopeTransferRulesPutEnvelopeTransferRules**
```swift
    open class func envelopeTransferRulesPutEnvelopeTransferRules(accountId: String, envelopeTransferRuleInformation: EnvelopeTransferRuleInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<EnvelopeTransferRulesPutEnvelopeTransferRules>
```

Changes the status of multiple envelope transfer rules.

This method changes the status for one or more envelope transfer rules based on the `envelopeTransferRuleId`s in the request body. You use this method to change whether or not the rules are enabled.  **Note**: You cannot change any other information about the envelope transfer rule. Only Administrators can update envelope transfer rules. In addition, to use envelope transfer rules, the **Transfer Custody** feature must be enabled for your account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeTransferRuleInformation = envelopeTransferRuleInformation(endPosition: "endPosition_example", envelopeTransferRules: [nil], nextUri: "nextUri_example", previousUri: "previousUri_example", resultSetSize: "resultSetSize_example", startPosition: "startPosition_example", totalSetSize: "totalSetSize_example") // EnvelopeTransferRuleInformation |  (optional)

// Changes the status of multiple envelope transfer rules.
EnvelopeTransferRulesAPI.envelopeTransferRulesPutEnvelopeTransferRules(accountId: accountId, envelopeTransferRuleInformation: envelopeTransferRuleInformation).whenComplete { result in
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
 **envelopeTransferRuleInformation** | [**EnvelopeTransferRuleInformation**](EnvelopeTransferRuleInformation.md) |  | [optional] 

### Return type

#### EnvelopeTransferRulesPutEnvelopeTransferRules

```swift
public enum EnvelopeTransferRulesPutEnvelopeTransferRules {
    case http200(value: EnvelopeTransferRuleInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeTransferRuleInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

