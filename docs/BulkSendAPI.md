# BulkSendAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulkSendV2BatchGetBulkSendBatchStatus**](BulkSendAPI.md#bulksendv2batchgetbulksendbatchstatus) | **GET** /v2.1/accounts/{accountId}/bulk_send_batch/{bulkSendBatchId} | 
[**bulkSendV2BatchGetBulkSendBatches**](BulkSendAPI.md#bulksendv2batchgetbulksendbatches) | **GET** /v2.1/accounts/{accountId}/bulk_send_batch | 
[**bulkSendV2CRUDDeleteBulkSendList**](BulkSendAPI.md#bulksendv2cruddeletebulksendlist) | **DELETE** /v2.1/accounts/{accountId}/bulk_send_lists/{bulkSendListId} | Deletes a bulk send list
[**bulkSendV2CRUDGetBulkSendList**](BulkSendAPI.md#bulksendv2crudgetbulksendlist) | **GET** /v2.1/accounts/{accountId}/bulk_send_lists/{bulkSendListId} | Gets a specific bulk send list
[**bulkSendV2CRUDGetBulkSendLists**](BulkSendAPI.md#bulksendv2crudgetbulksendlists) | **GET** /v2.1/accounts/{accountId}/bulk_send_lists | Gets bulk send lists
[**bulkSendV2CRUDPostBulkSendList**](BulkSendAPI.md#bulksendv2crudpostbulksendlist) | **POST** /v2.1/accounts/{accountId}/bulk_send_lists | Creates a bulk send list
[**bulkSendV2CRUDPutBulkSendList**](BulkSendAPI.md#bulksendv2crudputbulksendlist) | **PUT** /v2.1/accounts/{accountId}/bulk_send_lists/{bulkSendListId} | Updates a bulk send list
[**bulkSendV2SendPostBulkSendRequest**](BulkSendAPI.md#bulksendv2sendpostbulksendrequest) | **POST** /v2.1/accounts/{accountId}/bulk_send_lists/{bulkSendListId}/send | Creates a bulk send request
[**bulkSendV2TestPostBulkSendTestRequest**](BulkSendAPI.md#bulksendv2testpostbulksendtestrequest) | **POST** /v2.1/accounts/{accountId}/bulk_send_lists/{bulkSendListId}/test | Creates a bulk send test


# **bulkSendV2BatchGetBulkSendBatchStatus**
```swift
    open class func bulkSendV2BatchGetBulkSendBatchStatus(accountId: String, bulkSendBatchId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BulkSendV2BatchGetBulkSendBatchStatus>
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let bulkSendBatchId = "bulkSendBatchId_example" // String | 

BulkSendAPI.bulkSendV2BatchGetBulkSendBatchStatus(accountId: accountId, bulkSendBatchId: bulkSendBatchId).whenComplete { result in
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
 **bulkSendBatchId** | **String** |  | 

### Return type

#### BulkSendV2BatchGetBulkSendBatchStatus

```swift
public enum BulkSendV2BatchGetBulkSendBatchStatus {
    case http200(value: BulkSendBatchStatus?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: BulkSendBatchStatus?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulkSendV2BatchGetBulkSendBatches**
```swift
    open class func bulkSendV2BatchGetBulkSendBatches(accountId: String, batchIds: String? = nil, count: String? = nil, startPosition: String? = nil, status: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BulkSendV2BatchGetBulkSendBatches>
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let batchIds = "batchIds_example" // String |  (optional)
let count = "count_example" // String | The maximum number of results to return. (optional)
let startPosition = "startPosition_example" // String | The position within the total result set from which to start returning values. The value **thumbnail** may be used to return the page image. (optional)
let status = "status_example" // String | The status of the item. (optional)

BulkSendAPI.bulkSendV2BatchGetBulkSendBatches(accountId: accountId, batchIds: batchIds, count: count, startPosition: startPosition, status: status).whenComplete { result in
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
 **batchIds** | **String** |  | [optional] 
 **count** | **String** | The maximum number of results to return. | [optional] 
 **startPosition** | **String** | The position within the total result set from which to start returning values. The value **thumbnail** may be used to return the page image. | [optional] 
 **status** | **String** | The status of the item. | [optional] 

### Return type

#### BulkSendV2BatchGetBulkSendBatches

```swift
public enum BulkSendV2BatchGetBulkSendBatches {
    case http200(value: BulkSendBatchSummaries?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: BulkSendBatchSummaries?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulkSendV2CRUDDeleteBulkSendList**
```swift
    open class func bulkSendV2CRUDDeleteBulkSendList(accountId: String, bulkSendListId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BulkSendV2CRUDDeleteBulkSendList>
```

Deletes a bulk send list

This method deletes a bulk send list.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let bulkSendListId = "bulkSendListId_example" // String | The GUID of the bulk send list. This property is created after you post a new bulk send list.

// Deletes a bulk send list
BulkSendAPI.bulkSendV2CRUDDeleteBulkSendList(accountId: accountId, bulkSendListId: bulkSendListId).whenComplete { result in
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
 **bulkSendListId** | **String** | The GUID of the bulk send list. This property is created after you post a new bulk send list. | 

### Return type

#### BulkSendV2CRUDDeleteBulkSendList

```swift
public enum BulkSendV2CRUDDeleteBulkSendList {
    case http200(value: BulkSendingListSummaries?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: BulkSendingListSummaries?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulkSendV2CRUDGetBulkSendList**
```swift
    open class func bulkSendV2CRUDGetBulkSendList(accountId: String, bulkSendListId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BulkSendV2CRUDGetBulkSendList>
```

Gets a specific bulk send list

This method returns all of the details associated with a specific bulk send list that belongs to the current user.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let bulkSendListId = "bulkSendListId_example" // String | The GUID of the bulk send list. This property is created after you post a new bulk send list.

// Gets a specific bulk send list
BulkSendAPI.bulkSendV2CRUDGetBulkSendList(accountId: accountId, bulkSendListId: bulkSendListId).whenComplete { result in
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
 **bulkSendListId** | **String** | The GUID of the bulk send list. This property is created after you post a new bulk send list. | 

### Return type

#### BulkSendV2CRUDGetBulkSendList

```swift
public enum BulkSendV2CRUDGetBulkSendList {
    case http200(value: BulkSendingList?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: BulkSendingList?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulkSendV2CRUDGetBulkSendLists**
```swift
    open class func bulkSendV2CRUDGetBulkSendLists(accountId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BulkSendV2CRUDGetBulkSendLists>
```

Gets bulk send lists

This method returns a list of bulk send lists belonging to the current user, as well as basic information about each list.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.

// Gets bulk send lists
BulkSendAPI.bulkSendV2CRUDGetBulkSendLists(accountId: accountId).whenComplete { result in
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

#### BulkSendV2CRUDGetBulkSendLists

```swift
public enum BulkSendV2CRUDGetBulkSendLists {
    case http200(value: BulkSendingListSummaries?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: BulkSendingListSummaries?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulkSendV2CRUDPostBulkSendList**
```swift
    open class func bulkSendV2CRUDPostBulkSendList(accountId: String, bulkSendingList: BulkSendingList? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BulkSendV2CRUDPostBulkSendList>
```

Creates a bulk send list

This method creates a bulk send list that you can use to send an envelope to up to 1,000 recipients at once.  It returns the following errors:  | Error code                                              | Description                                                                                                                                                                                                                                                                              | | :------------------------------------------------------ | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | | BULK_SEND_MAX_COPIES_EXCEEDED                           | A bulk sending list cannot specify more than XXX copies in the mailing list. Call the settings API endpoint to find the maximum number of copies in a batch allowed for your account. In almost all cases, the default limit is 1000.                                                    | | BULK_SEND_RECIPIENT_IDS_MUST_BE_UNIQUE                  | No two recipientIds can be same within a bulkCopy. Same restriction as a regular envelope applies. Specify unique recipient IDs for each recipient within a bulkCopy (model for envelope in mailing list).                                                                               | | BULK_SEND_RECIPIENT_ID_REQUIRED                         | If no RoleName is present, recipientID is required in mailing list's bulkCopy. Add a roleName (that coalesces with template/envelope) or a recipientID.                                                                                                                                  | | BULK_SEND_RECIPIENT_NAME_REQUIRED                       | Recipient {0} has no name. Specify a name for the recipient.                                                                                                                                                                                                                             | | BULK_SEND_EMAIL_ADDRESS_REQUIRED_FOR_EMAIL_RECIPIENT    | Recipient {0} is an email recipient with no email address. Specify an email for the email recipient.                                                                                                                                                                                     | | BULK_SEND_FAX_NUMBER_REQUIRED_FOR_FAX_RECIPIENT         | Recipient {0} is a fax recipient with no fax number. Specify a fax number for the fax recipient.                                                                                                                                                                                         | | BULK_SEND_FAX_NUMBER_NOT_VALID                          | Recipient {0} specifies fax number {1}, which is not valid. Specify a valid fax number for the fax recipient.                                                                                                                                                                            | | BULK_SEND_EMAIL_ADDRESS_NOT_VALID                       | Recipient {0} specifies email address {1}, which is not a valid email address.  Specify a valid email address for the recipient.                                                                                                                                                         | | BULK_SEND_PHONE_NUMBER_REQURED_FOR_SMS_AUTH             | Recipient {0} specifies SMS auth, but no number was provided. Specify a phone number for the SMS auth recipient.                                                                                                                                                                         | | BULK_SEND_PHONE_NUMBER_INVALID_FOR_SMS_AUTH             | Recipient {0} specifies phone number {1} for SMS auth, which is not valid. Specify a valid phone number for the SMS auth recipient.                                                                                                                                                      | | BULK_SEND_ROLE_NAMES_MUST_BE_UNIQUE                     | Recipient role names cannot be duplicated; role {duplicateRecipientRole} appears multiple times. Use unique roleNames for recipients.                                                                                                                                                    | | BULK_SEND_CANNOT_USE_BOTH_ROLE_AND_ID_ON_SAME_RECIPIENT | Recipients cannot have both ID and Role; {0} has both. Specify a roleName or recipientId, but not both for the same recipient.                                                                                                                                                           | | BULK_SEND_CANNOT_USE_BOTH_ROLE_AND_ID_IN_SAME_LIST      | Cannot use both recipient role and ID in the same list. Specify a roleName or recipientId, but not both in the same list.                                                                                                                                                                | | BULK_SEND_INVALID_ID_CHECK_CONFIGURATION                | Recipient {0} specified SMS authentication, but no SMS auth settings were provided. Provide an SMS auth setting (proper ID configuration) if SMS auth is specified.                                                                                                                      | | BULK_SEND_INVALID_SBS_INPUT_CONFIGURATION               | Recipient {0} has more than one signature provider specified. Or signingProviderName is not specified. Or Signature provider : {0} is either unknown or not an available pen for this account. One or more SBS configuration is missing or invalid. The error details provide specifics. | | BULK_SEND_TAB_LABELS_MUST_BE_UNIQUE                     | Tab label {0} is duplicated. Needs to be unique. Use a unique tab label.                                                                                                                                                                                                                 | | BULK_SEND_TAB_LABEL_REQUIRED                            | Tab label is required. Specify a tab label.                                                                                                                                                                                                                                              | | BULK_SEND_TAB_VALUE_REQUIRED                            | Tab Label value is required. Specify a value for the tab label.                                                                                                                                                                                                                          | | BULK_SEND_ENVELOPE_CUSTOM_FIELD_NAME_MUST_BE_UNIQUE     | Custom fields must have distinct names. The field {0} appears more than once in a copy. Use unique names for custom fields.                                                                                                                                                              | | BULK_SEND_ENVELOPE_CUSTOM_FIELD_NAME_REQUIRED           | All custom fields must have names. Specify a name for the custom field.                                                                                                                                                                                                                  | | BULK_SEND_ENVELOPE_CUSTOM_FIELD_VALUE_REQUIRED          | Custom field {0} has no value. A custom field can have an empty value, but it cannot have a null value. Specify a value for the custom field.                                                                                                                                            |

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The id of the account.
let bulkSendingList = bulkSendingList(bulkCopies: [nil], listId: "listId_example", name: "name_example") // BulkSendingList |  (optional)

// Creates a bulk send list
BulkSendAPI.bulkSendV2CRUDPostBulkSendList(accountId: accountId, bulkSendingList: bulkSendingList).whenComplete { result in
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
 **accountId** | **String** | The id of the account. | 
 **bulkSendingList** | [**BulkSendingList**](BulkSendingList.md) |  | [optional] 

### Return type

#### BulkSendV2CRUDPostBulkSendList

```swift
public enum BulkSendV2CRUDPostBulkSendList {
    case http201(value: BulkSendingList?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: BulkSendingList?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulkSendV2CRUDPutBulkSendList**
```swift
    open class func bulkSendV2CRUDPutBulkSendList(accountId: String, bulkSendListId: String, bulkSendingList: BulkSendingList? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BulkSendV2CRUDPutBulkSendList>
```

Updates a bulk send list

This method replaces the definition of an existing bulk send list.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let bulkSendListId = "bulkSendListId_example" // String | The GUID of the bulk send list. This property is created after you post a new bulk send list.
let bulkSendingList = bulkSendingList(bulkCopies: [nil], listId: "listId_example", name: "name_example") // BulkSendingList |  (optional)

// Updates a bulk send list
BulkSendAPI.bulkSendV2CRUDPutBulkSendList(accountId: accountId, bulkSendListId: bulkSendListId, bulkSendingList: bulkSendingList).whenComplete { result in
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
 **bulkSendListId** | **String** | The GUID of the bulk send list. This property is created after you post a new bulk send list. | 
 **bulkSendingList** | [**BulkSendingList**](BulkSendingList.md) |  | [optional] 

### Return type

#### BulkSendV2CRUDPutBulkSendList

```swift
public enum BulkSendV2CRUDPutBulkSendList {
    case http200(value: BulkSendingList?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: BulkSendingList?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulkSendV2SendPostBulkSendRequest**
```swift
    open class func bulkSendV2SendPostBulkSendRequest(accountId: String, bulkSendListId: String, bulkSendRequest: BulkSendRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BulkSendV2SendPostBulkSendRequest>
```

Creates a bulk send request

This method initiates the bulk send process. It generates a bulk send request based on an [existing bulk send list][create_list] and an envelope or template.  Consider using the [BulkSend::createBulkSendTestRequest][create_test] method to test your bulk send list for compatibility with the envelope or template that you want to send first. To learn about the complete bulk send flow, see the [Bulk Send overview][BulkSendOverview].  If the envelopes were successfully queued for asynchronous processing, the response contains a `batchId` that you can use to get the status of the batch. If a failure occurs, the API returns an error message.  **Note**: Partial success or failure generally does not occur. Only the entire batch is queued for asynchronous processing.  This method returns the following errors:  | Error code                                                 | Description                                                                                                                                                                                                                                                                                            | | :--------------------------------------------------------- | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | | BULK_SEND_ENVELOPE_NOT_IN_SENDABLE_STATE                   | Envelope {0} is not in a sendable state. The envelope is not complete. Make sure it has a sendable status, such as `created`.                                                                                                                                                                          | | BULK_SEND_ENVELOPE_LIST_CONTAINS_NO_COPIES                 | Cannot send an envelope with a bulk sending list which contains no copies.  The list you're trying to bulk send is empty. Make sure the bulk sending list you're using contains recipients.                                                                                                            | | BULK_SEND_ENVELOPE_LIST_CONTAINS_TOO_MANY_COPIES           | Bulk sending list contains more than {0} copies. The list you're trying to bulk send will cause your account to exceed the 1,000-copy limit imposed for all accounts. Try sending two or more separate lists.                                                                                          | | BULK_SEND_ENVELOPE_CANNOT_BE_NULL                          | Cannot send a bulk list without an envelope. Specify the envelope ID or template ID for the envelope you want to bulk send.                                                                                                                                                                            | | BULK_SEND_BLOB_STORE_ERROR                                 | Could not save copy of bulk sending list. An error writing to the database occurred. Try again. If the error persists, contact DocuSign Support.                                                                                                                                                       | | BULK_SEND_ACCOUNT_HAS_TOO_MANY_QUEUED_ENVELOPES            | Cannot send this bulk sending list because doing so would exceed the maximum of {maxCopies} in-flight envelopes. This account currently has {unprocessedEnvelopes} envelopes waiting to be processed. Please try again later.\" .Try again later, or contact DocuSign Support to request a higher tier. | | BULK_SEND_ENVELOPE_NOT_FOUND                               | Envelope {envelopeOrTemplateId} does not exist or you do not have permission to access it. The envelopeId or templateId specified could not be found. Specify a valid value.                                                                                                                           | | BULK_SEND_LIST_NOT_FOUND                                   | Bulk Sending list {listId} does not exist or you do not have permission to access it. The mailingListId specified could not be found. Specify a valid value.                                                                                                                                           | | BULK_SEND_ENVELOPE_HAS_NO_RECIPIENTS                       | Bulk sending copy contains recipients, but the specified envelope does not. The recipients on the envelope and the bulk send list do not match. Make sure the envelope and list are compatible for sending.                                                                                            | | BULK_SEND_RECIPIENT_ID_DOES_NOT_EXIST_IN_ENVELOPE          | Recipient {0} does not exist in the envelope. Add the missing recipient to the envelope.                                                                                                                                                                                                               | | BULK_SEND_RECIPIENT_ID_DOES_NOT_MATCH                      | Recipient ID {envelopeMember.ID} does not match. Make sure the recipient information in the list and the envelope match up.                                                                                                                                                                            | | BULK_SEND_ENVELOPE_HAS_BULK_RECIPIENT                      | Recipient {0} is a bulk recipient.  This is not supported. No legacy 'bulk recipient' allowed. In v2.1 of the eSignature API, you must use a bulk send list instead of a bulk recipient. See the API documentation for details.                                                                        | | BULK_SEND_RECIPIENT_ROLE_DOES_NOT_MATCH                    | Recipient Role {envelopeMember.RoleName} does not match. Make sure the recipient information in the list and the envelope is compatible.                                                                                                                                                               | | BULK_SEND_DUPLICATE_RECIPIENT_DETECTED                     | Duplicate recipients ({0}) not allowed, unless recipients have unique routing order specified on envelope.                                                                                                                                                                                             | | BULK_SEND_ENVELOPE_HAS_NO_TABS                             | Bulk sending copy contains tabs, but the specified envelope does not. List and envelope tabs cannot be coalesced. Make sure they are compatible for sending.                                                                                                                                           | | BULK_SEND_TAB_LABEL_DOES_NOT_EXIST_IN_ENVELOPE             | Tab with label {0} does not exist in envelope. Add the tab label to the envelope, remove the label from the list, or make sure you're specifying the correct list and envelope.                                                                                                                        | | BULK_SEND_TAB_DOES_NOT_MATCH                               | Tab {0} does not match {0} in envelope. A tab exists on the list that does not match or is missing on the envelope. Make sure the tabs on the list and the envelope match.                                                                                                                             | | BULK_SEND_ENVELOPE_HAS_NO_ENVELOPE_CUSTOM_FIELDS           | Bulk sending copy contains custom fields, but the specified envelope does not. There are custom fields on the list that the envelope does not have. Make sure that any custom fields on the list and the envelope match.                                                                               | | BULK_SEND_ENVELOPE_CUSTOM_FIELD_DOES_NOT_EXIST_IN_ENVELOPE | Custom field {0} does not exist in the envelope. Either add the custom field on the list to the envelope, remove the custom field from the list, or make sure you're specifying the correct list and envelope.                                                                                         | | BULK_SEND_ENVELOPE_CUSTOM_FIELD_NAME_DOES_NOT_MATCH        | Custom field names must match. {0} and {1} do not match. The custom field names on the list and the envelope do not match. Use identical names for both.                                                                                                                                               |  [create_list]:      /esign-rest-api/reference/BulkEnvelopes/BulkSend/createBulkSendList [create_test]:      /esign-rest-api/reference/BulkEnvelopes/BulkSend/createBulkSendTestRequest [BulkSendOverview]: /esign-rest-api/reference/BulkEnvelopes/BulkSend  

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let bulkSendListId = "bulkSendListId_example" // String | The GUID of the bulk send list. This property is created after you post a new bulk send list.
let bulkSendRequest = bulkSendRequest(batchName: "batchName_example", envelopeOrTemplateId: "envelopeOrTemplateId_example") // BulkSendRequest |  (optional)

// Creates a bulk send request
BulkSendAPI.bulkSendV2SendPostBulkSendRequest(accountId: accountId, bulkSendListId: bulkSendListId, bulkSendRequest: bulkSendRequest).whenComplete { result in
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
 **bulkSendListId** | **String** | The GUID of the bulk send list. This property is created after you post a new bulk send list. | 
 **bulkSendRequest** | [**BulkSendRequest**](BulkSendRequest.md) |  | [optional] 

### Return type

#### BulkSendV2SendPostBulkSendRequest

```swift
public enum BulkSendV2SendPostBulkSendRequest {
    case http201(value: BulkSendResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: BulkSendResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bulkSendV2TestPostBulkSendTestRequest**
```swift
    open class func bulkSendV2TestPostBulkSendTestRequest(accountId: String, bulkSendListId: String, bulkSendRequest: BulkSendRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<BulkSendV2TestPostBulkSendTestRequest>
```

Creates a bulk send test

This method tests a bulk send list for compatibility with the envelope or template that you want to send. For example, a template that has three roles is not compatible with a bulk send list that has only two recipients. For this reason, you might want to test compatibility first.  A successful test result returns `true` for the `canBeSent` property. An unsuccessful test returns a JSON response that contains information about the errors that occurred.  If the test is successful, you can then send the envelope or template by using the [BulkSend::createBulkSendRequest][BulkSendRequest] method.  ## Envelope Compatibility Checks  This section describes the envelope compatibility checks that the system performs.  **Top-Level Issues**  - Envelopes must be in a sendable state. - The bulk send list must contain at least one copy (instance of an envelope), and no more than the maximum number of copies allowed for the account. - The envelope must not be null and must be visible to the current user. - The account cannot have more queued envelopes than the maximum number configured for the account. - The bulk send list must exist.  **Recipients**  - The envelope must have recipients. - If you are using an envelope, all of the recipients defined in the bulk send list must have corresponding recipient IDs in the envelope definition. If you are using a template, you must either match the recipient IDs or role IDs. - The envelope cannot contain a bulk recipient (an artifact of the legacy version of DocuSign's bulk send   functionality).  **Recipient Tabs**  - Every `recipient ID, tab label` pair in the bulk send list must correspond to a tab in the envelope.  **Custom Fields**  - Each envelope-level custom field in the bulk send list must correspond to the name of a `customField` in the   envelope definition. You do not have to match the recipient-level custom fields.  [BulkSendRequest]:  /esign-rest-api/reference/BulkEnvelopes/BulkSend/createBulkSendRequest   

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let bulkSendListId = "bulkSendListId_example" // String | The GUID of the bulk send list. This property is created after you post a new bulk send list.
let bulkSendRequest = bulkSendRequest(batchName: "batchName_example", envelopeOrTemplateId: "envelopeOrTemplateId_example") // BulkSendRequest |  (optional)

// Creates a bulk send test
BulkSendAPI.bulkSendV2TestPostBulkSendTestRequest(accountId: accountId, bulkSendListId: bulkSendListId, bulkSendRequest: bulkSendRequest).whenComplete { result in
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
 **bulkSendListId** | **String** | The GUID of the bulk send list. This property is created after you post a new bulk send list. | 
 **bulkSendRequest** | [**BulkSendRequest**](BulkSendRequest.md) |  | [optional] 

### Return type

#### BulkSendV2TestPostBulkSendTestRequest

```swift
public enum BulkSendV2TestPostBulkSendTestRequest {
    case http201(value: BulkSendTestResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: BulkSendTestResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

