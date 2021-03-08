# EnvelopesAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**auditEventsGetAuditEvents**](EnvelopesAPI.md#auditeventsgetauditevents) | **GET** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/audit_events | Gets the envelope audit events for an envelope.
[**envelopesGetEnvelope**](EnvelopesAPI.md#envelopesgetenvelope) | **GET** /v2.1/accounts/{accountId}/envelopes/{envelopeId} | Gets the status of a single envelope.
[**envelopesGetEnvelopes**](EnvelopesAPI.md#envelopesgetenvelopes) | **GET** /v2.1/accounts/{accountId}/envelopes | Gets status changes for one or more envelopes.
[**envelopesPostEnvelopes**](EnvelopesAPI.md#envelopespostenvelopes) | **POST** /v2.1/accounts/{accountId}/envelopes | Creates an envelope.
[**envelopesPutEnvelope**](EnvelopesAPI.md#envelopesputenvelope) | **PUT** /v2.1/accounts/{accountId}/envelopes/{envelopeId} | Send, void, or modify a draft envelope. Purge documents from a completed envelope.
[**envelopesPutStatus**](EnvelopesAPI.md#envelopesputstatus) | **PUT** /v2.1/accounts/{accountId}/envelopes/status | Gets envelope statuses for a set of envelopes.
[**notificationGetEnvelopesEnvelopeIdNotification**](EnvelopesAPI.md#notificationgetenvelopesenvelopeidnotification) | **GET** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/notification | Gets envelope notification information.
[**notificationPutEnvelopesEnvelopeIdNotification**](EnvelopesAPI.md#notificationputenvelopesenvelopeidnotification) | **PUT** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/notification | Sets envelope notifications for an existing envelope.
[**pagesDeletePage**](EnvelopesAPI.md#pagesdeletepage) | **DELETE** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/pages/{pageNumber} | Deletes a page from a document in an envelope.
[**pagesGetPageImage**](EnvelopesAPI.md#pagesgetpageimage) | **GET** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/pages/{pageNumber}/page_image | Gets a page image from an envelope for display.
[**pagesGetPageImages**](EnvelopesAPI.md#pagesgetpageimages) | **GET** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/pages | Returns document page image(s) based on input.
[**pagesPutPageImage**](EnvelopesAPI.md#pagesputpageimage) | **PUT** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/documents/{documentId}/pages/{pageNumber}/page_image | Rotates page image from an envelope for display.
[**recipientsGetRecipientInitialsImage**](EnvelopesAPI.md#recipientsgetrecipientinitialsimage) | **GET** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/initials_image | Gets the initials image for a user.
[**recipientsGetRecipientSignature**](EnvelopesAPI.md#recipientsgetrecipientsignature) | **GET** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/signature | Gets signature information for a signer or sign-in-person recipient.
[**recipientsGetRecipientSignatureImage**](EnvelopesAPI.md#recipientsgetrecipientsignatureimage) | **GET** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/signature_image | Retrieve signature image information for a signer/sign-in-person recipient.
[**recipientsPutRecipientInitialsImage**](EnvelopesAPI.md#recipientsputrecipientinitialsimage) | **PUT** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/initials_image | Sets the initials image for an accountless signer.
[**recipientsPutRecipientSignatureImage**](EnvelopesAPI.md#recipientsputrecipientsignatureimage) | **PUT** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/signature_image | Sets the signature image for an accountless signer.


# **auditEventsGetAuditEvents**
```swift
    open class func auditEventsGetAuditEvents(accountId: String, envelopeId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<AuditEventsGetAuditEvents>
```

Gets the envelope audit events for an envelope.

Gets the envelope audit events for the specified envelope.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 

// Gets the envelope audit events for an envelope.
EnvelopesAPI.auditEventsGetAuditEvents(accountId: accountId, envelopeId: envelopeId).whenComplete { result in
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
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 

### Return type

#### AuditEventsGetAuditEvents

```swift
public enum AuditEventsGetAuditEvents {
    case http200(value: EnvelopeAuditEventResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeAuditEventResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **envelopesGetEnvelope**
```swift
    open class func envelopesGetEnvelope(accountId: String, envelopeId: String, advancedUpdate: String? = nil, include: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<EnvelopesGetEnvelope>
```

Gets the status of a single envelope.

Retrieves the overall status for the specified envelope. To get the status of a list of envelopes, use [Envelope: listStatusChanges ](https://developers.docusign.com/esign-rest-api/reference/Envelopes/Envelopes/listStatusChanges/).

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let advancedUpdate = "advancedUpdate_example" // String | When **true**, envelope information can be added or modified. (optional)
let include = "include_example" // String | Specifies additional information about the envelope to return. Enter a comma-separated list, such as `tabs,recipients`. Valid values are:  - `custom_fields`: The custom fields associated with the envelope. - `documents`: The documents associated with the envelope. - `attachments`: The attachments associated with the envelope. - `extensions`: Information about the email settings associated with the envelope. - `folders`: The folder where the envelope exists. - `recipients`: The recipients associated with the envelope. - `powerform`: The PowerForms associated with the envelope. - `tabs`: The tabs associated with the envelope. - `payment_tabs`: The payment tabs associated with the envelope.  (optional)

// Gets the status of a single envelope.
EnvelopesAPI.envelopesGetEnvelope(accountId: accountId, envelopeId: envelopeId, advancedUpdate: advancedUpdate, include: include).whenComplete { result in
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
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **advancedUpdate** | **String** | When **true**, envelope information can be added or modified. | [optional] 
 **include** | **String** | Specifies additional information about the envelope to return. Enter a comma-separated list, such as &#x60;tabs,recipients&#x60;. Valid values are:  - &#x60;custom_fields&#x60;: The custom fields associated with the envelope. - &#x60;documents&#x60;: The documents associated with the envelope. - &#x60;attachments&#x60;: The attachments associated with the envelope. - &#x60;extensions&#x60;: Information about the email settings associated with the envelope. - &#x60;folders&#x60;: The folder where the envelope exists. - &#x60;recipients&#x60;: The recipients associated with the envelope. - &#x60;powerform&#x60;: The PowerForms associated with the envelope. - &#x60;tabs&#x60;: The tabs associated with the envelope. - &#x60;payment_tabs&#x60;: The payment tabs associated with the envelope.  | [optional] 

### Return type

#### EnvelopesGetEnvelope

```swift
public enum EnvelopesGetEnvelope {
    case http200(value: Envelope?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Envelope?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **envelopesGetEnvelopes**
```swift
    open class func envelopesGetEnvelopes(accountId: String, acStatus: String? = nil, block: String? = nil, cdseMode: String? = nil, continuationToken: String? = nil, count: String? = nil, customField: String? = nil, email: String? = nil, envelopeIds: String? = nil, exclude: String? = nil, folderIds: String? = nil, folderTypes: String? = nil, fromDate: String? = nil, fromToStatus: String? = nil, include: String? = nil, includePurgeInformation: String? = nil, intersectingFolderIds: String? = nil, lastQueriedDate: String? = nil, order: String? = nil, orderBy: String? = nil, powerformids: String? = nil, queryBudget: String? = nil, requesterDateFormat: String? = nil, searchText: String? = nil, startPosition: String? = nil, status: String? = nil, toDate: String? = nil, transactionIds: String? = nil, userFilter: String? = nil, userId: String? = nil, userName: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<EnvelopesGetEnvelopes>
```

Gets status changes for one or more envelopes.

Retrieves a list of envelopes that match your request.  A large set of optional filters let you filter by date, by envelope ID, or by status codes.  Your request must include one or more of the following parameters:  * `from_date` * `envelope_ids` * `transaction_ids`   Getting envelope status using `transaction_ids` is useful for offline signing situations where it can be used determine if an envelope was created or not. It can be used for the cases where a network connection was lost, before the envelope status could be returned.  To avoid unnecessary database queries, the DocuSign signature platform first checks requests to ensure that the filter set supplied does not result in a zero-size response before querying the database.   For example, for a request with a `from_to_status` of `delivered` and a current `status` of `created,sent`, DocuSign will always return an empty list.  This is because the request translates to: find the envelopes that were delivered between the `from_date` and `to_date` dates that have a current status of `created` or `sent`. Since an envelope that has been delivered can never have a status of `created` or `sent`, a zero-size response would be generated.  In this case, DocuSign does not query the database and returns an empty list immediately.   The following table shows the valid current envelope statuses (`status` parameter) for the different status qualifiers (`from_to_status` parameter) in the request. If the status and status qualifiers in the API request do not contain any of the values shown in the Valid Current Statuses column, then an empty list is returned.  Client applications should check that the statuses (`status` parameter) they are requesting make sense for a given `from_to_status` parameter value.  | Status Qualifier<br>(`from_to_status`) | Effective Status Qualifier | Valid Current Statuses                                                      |   | :------------------------------------- | :------------------------- | :-------------------------------------------------------------------------- |   | any (changed)                          | StatusChanged              | any, created, sent, delivered, signed, completed, declined, voided, deleted |   | created                                | Created                    | any, created, sent, delivered, signed, completed, declined, voided, deleted |   | sent                                   | Sent                       | any, sent, delivered, signed, completed, declined, voided, deleted          |   | delivered                              | StatusChanged              | any, delivered, signed, completed, declined, voided, deleted                |   | signed                                 | StatusChanged              | any, signed, completed, declined, voided, deleted                           |   | completed                              | Completed                  | any, completed, declined, voided, deleted                                   |   | declined                               | StatusChanged              | any, declined, voided, deleted                                              |   | timedout<br>always return zero results | StatusChanged              | any, voided, deleted                                                        |   | voided                                 | Voided                     | any, voided, deleted                                                        |   | deleted                                | StatusChanged              | any, deleted                                                                |    ## Extraneous results  In some cases, a request for a specific envelope status will include envelopes with additional statuses. For example, in a request with a `from_date` of 2017-01-01, a `to_date` of 2017-01-07 and the status qualifier (`from_to_status`) set to `delivered`, the response set might contain envelopes that were created during that time period, but not delivered during the time period. As a workaround, check the envelope status values in the result set as needed.  

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let acStatus = "acStatus_example" // String | Specifies the Authoritative Copy Status for the envelopes. The possible values are:   - `Unknown` - `Original` - `Transferred` - `AuthoritativeCopy` - `AuthoritativeCopyExportPending` - `AuthoritativeCopyExported` - `DepositPending` - `Deposited` - `DepositedEO` - `DepositFailed` (optional)
let block = "block_example" // String | Reserved for DocuSign.  (optional)
let cdseMode = "cdseMode_example" // String | Reserved for DocuSign.  (optional)
let continuationToken = "continuationToken_example" // String | A token returned in the response to a previous API call that is used to resume a search query from a specific point. (optional)
let count = "count_example" // String | Optional. Number of items to return. Currently there is no implicit maximum limit of the number of items that can be returned.  (optional)
let customField = "customField_example" // String | Optional. Specifies a envelope custom field name and value searched for in the envelopes. Format: `custom_envelope_field_name=desired_value`  Example: If you have an envelope custom field named \"Region\" and you want to search for all envelopes where the value is \"West\" you would use set this parameter to `Region=West`.     (optional)
let email = "email_example" // String | Limit results to envelopes sent by the account user with this email address.  `user_name` must be given as well, and both `email` and `user_name` must refer to an existing account user.  (optional)
let envelopeIds = "envelopeIds_example" // String | Comma separated list of `envelopeId` values. (optional)
let exclude = "exclude_example" // String | Excludes information from the response. Enter  as a comma-separated list (e.g., `folders,powerforms`). Valid values are:  - `recipients` - `powerforms` - `folders` (optional)
let folderIds = "folderIds_example" // String | Returns the envelopes from specific folders. Enter as a comma-separated list of either valid folder Guids or the following values:   - `awaiting_my_signature` - `completed` - `draft` - `drafts` - `expiring_soon` - `inbox` - `out_for_signature` - `recyclebin` - `sentitems` - `waiting_for_others` (optional)
let folderTypes = "folderTypes_example" // String | A comma-separated list of folder types you want to retrieve envelopes from. Valid values are:   - `normal` - `inbox` - `sentitems` - `draft` - `templates` (optional)
let fromDate = "fromDate_example" // String | Specifies the date and time to start looking for status changes. This parameter is required unless `envelopeIds` or `transactionIds` are set.   Although you can use any date format supported by the .NET system library's [`DateTime.Parse()`][msoft] function, DocuSign recommends using [ISO 8601][] format dates with an explicit time zone offset If you do not provide a time zone offset, the method uses the server's time zone.  For example, the following dates and times refer to the same instant:  * `2017-05-02T01:44Z` * `2017-05-01T21:44-04:00` * `2017-05-01T18:44-07:00`   [msoft]: https://msdn.microsoft.com/en-us/library/system.datetime.parse(v=vs.110).aspx#StringToParse [ISO 8601]: https://en.wikipedia.org/wiki/ISO_8601 (optional)
let fromToStatus = "fromToStatus_example" // String | The envelope status that you are checking for. Possible values are:   - `Changed` (default) - `Completed` - `Created` - `Declined` - `Deleted` - `Delivered` - `Processing` - `Sent` - `Signed` - `TimedOut` - `Voided`  For example, if you specify `Changed`, this method returns a list of envelopes that changed status during the `from_date` to `to_date` time period.   (optional)
let include = "include_example" // String | Specifies additional information to return  about the envelopes. Enter a comma-separated list, such as `tabs,recipients`. Valid values are:  - `custom_fields`: The custom fields associated with the envelope. - `documents`: The documents associated with the envelope. - `attachments`: The attachments associated with the envelope. - `extensions`: Information about the email settings associated with the envelope. - `folders`: The folders where the envelope exists. - `recipients`: The recipients associated with the envelope. - `powerform`: The PowerForms associated with the envelope. - `payment_tabs`: The payment tabs associated with the envelope.  (optional)
let includePurgeInformation = "includePurgeInformation_example" // String | When set to **true**, information about envelopes that have been deleted is included in the response. (optional)
let intersectingFolderIds = "intersectingFolderIds_example" // String | A comma-separated list of folders that you want want to get envelopes from. Valid values are:   - `normal` - `inbox` - `sentitems` - `draft` - `templates` (optional)
let lastQueriedDate = "lastQueriedDate_example" // String | Returns envelopes that were modified prior to the specified date and time.   Example: `2020-05-09T21:56:12.2500000Z` (optional)
let order = "order_example" // String | Returns envelopes in either ascending (`asc`) or descending (`desc`) order. (optional)
let orderBy = "orderBy_example" // String | Sorts results according to a specific property. Valid values are:  - `last_modified` - `action_required` - `created` - `completed` - `envelope_name` - `expire` - `sent` - `signer_list` - `status` - `subject` - `user_name` - `status_changed` - `last_modified` (optional)
let powerformids = "powerformids_example" // String | A comma-separated list of `PowerFormId` values. (optional)
let queryBudget = "queryBudget_example" // String | The time in seconds that the query should run before returning data. (optional)
let requesterDateFormat = "requesterDateFormat_example" // String |  (optional)
let searchText = "searchText_example" // String | Free text search criteria that you can use to filter the list of envelopes that is returned. (optional)
let startPosition = "startPosition_example" // String | This value is supported and currently has no implicit maximum items.  (optional)
let status = "status_example" // String | A comma-separated list of current envelope statuses to included in the response. Possible values are:  * `completed` * `created` * `declined` * `deleted` * `delivered` * `processing` * `sent` * `signed` * `timedout` * `voided`  The `any` value is equivalent to any status.  (optional)
let toDate = "toDate_example" // String | Specifies the date and time to stop looking for status changes. The default is the current date and time.  Although you can use any date format supported by the .NET system library's [`DateTime.Parse()`][msoft] function, DocuSign recommends using [ISO 8601][] format dates with an explicit time zone offset If you do not provide a time zone offset, the method uses the server's time zone.  For example, the following dates and times refer to the same instant:  * `2017-05-02T01:44Z` * `2017-05-01T21:44-04:00` * `2017-05-01T18:44-07:00`   [msoft]: https://msdn.microsoft.com/en-us/library/system.datetime.parse(v=vs.110).aspx#StringToParse [ISO 8601]: https://en.wikipedia.org/wiki/ISO_8601  (optional)
let transactionIds = "transactionIds_example" // String | A comma-separated list of envelope transaction IDs. Transaction IDs are only valid for seven days.  (optional)
let userFilter = "userFilter_example" // String | Returns envelopes where the current user is the recipient, the sender, or the recipient only. (For example, `user_filter=sender`.) Valid values are:  - `sender` - `recipient` - `recipient_only` (optional)
let userId = "userId_example" // String | The ID of the user who created the envelopes to be retrieved. Note that an account can have multiple users, and any user with account access can retrieve envelopes by user_id from the account. (optional)
let userName = "userName_example" // String | Limit results to envelopes sent by the account user with this user name.  `email` must be given as well, and both `email` and `user_name` must refer to an existing account user.  (optional)

// Gets status changes for one or more envelopes.
EnvelopesAPI.envelopesGetEnvelopes(accountId: accountId, acStatus: acStatus, block: block, cdseMode: cdseMode, continuationToken: continuationToken, count: count, customField: customField, email: email, envelopeIds: envelopeIds, exclude: exclude, folderIds: folderIds, folderTypes: folderTypes, fromDate: fromDate, fromToStatus: fromToStatus, include: include, includePurgeInformation: includePurgeInformation, intersectingFolderIds: intersectingFolderIds, lastQueriedDate: lastQueriedDate, order: order, orderBy: orderBy, powerformids: powerformids, queryBudget: queryBudget, requesterDateFormat: requesterDateFormat, searchText: searchText, startPosition: startPosition, status: status, toDate: toDate, transactionIds: transactionIds, userFilter: userFilter, userId: userId, userName: userName).whenComplete { result in
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
 **acStatus** | **String** | Specifies the Authoritative Copy Status for the envelopes. The possible values are:   - &#x60;Unknown&#x60; - &#x60;Original&#x60; - &#x60;Transferred&#x60; - &#x60;AuthoritativeCopy&#x60; - &#x60;AuthoritativeCopyExportPending&#x60; - &#x60;AuthoritativeCopyExported&#x60; - &#x60;DepositPending&#x60; - &#x60;Deposited&#x60; - &#x60;DepositedEO&#x60; - &#x60;DepositFailed&#x60; | [optional] 
 **block** | **String** | Reserved for DocuSign.  | [optional] 
 **cdseMode** | **String** | Reserved for DocuSign.  | [optional] 
 **continuationToken** | **String** | A token returned in the response to a previous API call that is used to resume a search query from a specific point. | [optional] 
 **count** | **String** | Optional. Number of items to return. Currently there is no implicit maximum limit of the number of items that can be returned.  | [optional] 
 **customField** | **String** | Optional. Specifies a envelope custom field name and value searched for in the envelopes. Format: &#x60;custom_envelope_field_name&#x3D;desired_value&#x60;  Example: If you have an envelope custom field named \&quot;Region\&quot; and you want to search for all envelopes where the value is \&quot;West\&quot; you would use set this parameter to &#x60;Region&#x3D;West&#x60;.     | [optional] 
 **email** | **String** | Limit results to envelopes sent by the account user with this email address.  &#x60;user_name&#x60; must be given as well, and both &#x60;email&#x60; and &#x60;user_name&#x60; must refer to an existing account user.  | [optional] 
 **envelopeIds** | **String** | Comma separated list of &#x60;envelopeId&#x60; values. | [optional] 
 **exclude** | **String** | Excludes information from the response. Enter  as a comma-separated list (e.g., &#x60;folders,powerforms&#x60;). Valid values are:  - &#x60;recipients&#x60; - &#x60;powerforms&#x60; - &#x60;folders&#x60; | [optional] 
 **folderIds** | **String** | Returns the envelopes from specific folders. Enter as a comma-separated list of either valid folder Guids or the following values:   - &#x60;awaiting_my_signature&#x60; - &#x60;completed&#x60; - &#x60;draft&#x60; - &#x60;drafts&#x60; - &#x60;expiring_soon&#x60; - &#x60;inbox&#x60; - &#x60;out_for_signature&#x60; - &#x60;recyclebin&#x60; - &#x60;sentitems&#x60; - &#x60;waiting_for_others&#x60; | [optional] 
 **folderTypes** | **String** | A comma-separated list of folder types you want to retrieve envelopes from. Valid values are:   - &#x60;normal&#x60; - &#x60;inbox&#x60; - &#x60;sentitems&#x60; - &#x60;draft&#x60; - &#x60;templates&#x60; | [optional] 
 **fromDate** | **String** | Specifies the date and time to start looking for status changes. This parameter is required unless &#x60;envelopeIds&#x60; or &#x60;transactionIds&#x60; are set.   Although you can use any date format supported by the .NET system library&#39;s [&#x60;DateTime.Parse()&#x60;][msoft] function, DocuSign recommends using [ISO 8601][] format dates with an explicit time zone offset If you do not provide a time zone offset, the method uses the server&#39;s time zone.  For example, the following dates and times refer to the same instant:  * &#x60;2017-05-02T01:44Z&#x60; * &#x60;2017-05-01T21:44-04:00&#x60; * &#x60;2017-05-01T18:44-07:00&#x60;   [msoft]: https://msdn.microsoft.com/en-us/library/system.datetime.parse(v&#x3D;vs.110).aspx#StringToParse [ISO 8601]: https://en.wikipedia.org/wiki/ISO_8601 | [optional] 
 **fromToStatus** | **String** | The envelope status that you are checking for. Possible values are:   - &#x60;Changed&#x60; (default) - &#x60;Completed&#x60; - &#x60;Created&#x60; - &#x60;Declined&#x60; - &#x60;Deleted&#x60; - &#x60;Delivered&#x60; - &#x60;Processing&#x60; - &#x60;Sent&#x60; - &#x60;Signed&#x60; - &#x60;TimedOut&#x60; - &#x60;Voided&#x60;  For example, if you specify &#x60;Changed&#x60;, this method returns a list of envelopes that changed status during the &#x60;from_date&#x60; to &#x60;to_date&#x60; time period.   | [optional] 
 **include** | **String** | Specifies additional information to return  about the envelopes. Enter a comma-separated list, such as &#x60;tabs,recipients&#x60;. Valid values are:  - &#x60;custom_fields&#x60;: The custom fields associated with the envelope. - &#x60;documents&#x60;: The documents associated with the envelope. - &#x60;attachments&#x60;: The attachments associated with the envelope. - &#x60;extensions&#x60;: Information about the email settings associated with the envelope. - &#x60;folders&#x60;: The folders where the envelope exists. - &#x60;recipients&#x60;: The recipients associated with the envelope. - &#x60;powerform&#x60;: The PowerForms associated with the envelope. - &#x60;payment_tabs&#x60;: The payment tabs associated with the envelope.  | [optional] 
 **includePurgeInformation** | **String** | When set to **true**, information about envelopes that have been deleted is included in the response. | [optional] 
 **intersectingFolderIds** | **String** | A comma-separated list of folders that you want want to get envelopes from. Valid values are:   - &#x60;normal&#x60; - &#x60;inbox&#x60; - &#x60;sentitems&#x60; - &#x60;draft&#x60; - &#x60;templates&#x60; | [optional] 
 **lastQueriedDate** | **String** | Returns envelopes that were modified prior to the specified date and time.   Example: &#x60;2020-05-09T21:56:12.2500000Z&#x60; | [optional] 
 **order** | **String** | Returns envelopes in either ascending (&#x60;asc&#x60;) or descending (&#x60;desc&#x60;) order. | [optional] 
 **orderBy** | **String** | Sorts results according to a specific property. Valid values are:  - &#x60;last_modified&#x60; - &#x60;action_required&#x60; - &#x60;created&#x60; - &#x60;completed&#x60; - &#x60;envelope_name&#x60; - &#x60;expire&#x60; - &#x60;sent&#x60; - &#x60;signer_list&#x60; - &#x60;status&#x60; - &#x60;subject&#x60; - &#x60;user_name&#x60; - &#x60;status_changed&#x60; - &#x60;last_modified&#x60; | [optional] 
 **powerformids** | **String** | A comma-separated list of &#x60;PowerFormId&#x60; values. | [optional] 
 **queryBudget** | **String** | The time in seconds that the query should run before returning data. | [optional] 
 **requesterDateFormat** | **String** |  | [optional] 
 **searchText** | **String** | Free text search criteria that you can use to filter the list of envelopes that is returned. | [optional] 
 **startPosition** | **String** | This value is supported and currently has no implicit maximum items.  | [optional] 
 **status** | **String** | A comma-separated list of current envelope statuses to included in the response. Possible values are:  * &#x60;completed&#x60; * &#x60;created&#x60; * &#x60;declined&#x60; * &#x60;deleted&#x60; * &#x60;delivered&#x60; * &#x60;processing&#x60; * &#x60;sent&#x60; * &#x60;signed&#x60; * &#x60;timedout&#x60; * &#x60;voided&#x60;  The &#x60;any&#x60; value is equivalent to any status.  | [optional] 
 **toDate** | **String** | Specifies the date and time to stop looking for status changes. The default is the current date and time.  Although you can use any date format supported by the .NET system library&#39;s [&#x60;DateTime.Parse()&#x60;][msoft] function, DocuSign recommends using [ISO 8601][] format dates with an explicit time zone offset If you do not provide a time zone offset, the method uses the server&#39;s time zone.  For example, the following dates and times refer to the same instant:  * &#x60;2017-05-02T01:44Z&#x60; * &#x60;2017-05-01T21:44-04:00&#x60; * &#x60;2017-05-01T18:44-07:00&#x60;   [msoft]: https://msdn.microsoft.com/en-us/library/system.datetime.parse(v&#x3D;vs.110).aspx#StringToParse [ISO 8601]: https://en.wikipedia.org/wiki/ISO_8601  | [optional] 
 **transactionIds** | **String** | A comma-separated list of envelope transaction IDs. Transaction IDs are only valid for seven days.  | [optional] 
 **userFilter** | **String** | Returns envelopes where the current user is the recipient, the sender, or the recipient only. (For example, &#x60;user_filter&#x3D;sender&#x60;.) Valid values are:  - &#x60;sender&#x60; - &#x60;recipient&#x60; - &#x60;recipient_only&#x60; | [optional] 
 **userId** | **String** | The ID of the user who created the envelopes to be retrieved. Note that an account can have multiple users, and any user with account access can retrieve envelopes by user_id from the account. | [optional] 
 **userName** | **String** | Limit results to envelopes sent by the account user with this user name.  &#x60;email&#x60; must be given as well, and both &#x60;email&#x60; and &#x60;user_name&#x60; must refer to an existing account user.  | [optional] 

### Return type

#### EnvelopesGetEnvelopes

```swift
public enum EnvelopesGetEnvelopes {
    case http200(value: EnvelopesInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopesInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **envelopesPostEnvelopes**
```swift
    open class func envelopesPostEnvelopes(accountId: String, cdseMode: String? = nil, changeRoutingOrder: String? = nil, completedDocumentsOnly: String? = nil, mergeRolesOnDraft: String? = nil, envelopeDefinition: EnvelopeDefinition? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<EnvelopesPostEnvelopes>
```

Creates an envelope.

Creates and sends an envelope or creates a draft envelope. Envelopes are fundamental resources in the DocuSign platform.  With this method you can:  * Create and send an envelope   with [documents][], [recipients][], and [tabs][]. * [Create and send an envelope from a template](https://developers.docusign.com/esign-rest-api/guides/features/templates#sending-from-a-template). * [Create and send an envelope from   a combination of documents and templates](https://developers.docusign.com/esign-rest-api/guides/features/templates#composite-templates). * Create a draft envelope.   When you use this method to create and send an envelope in a single request, the following parameters in the request body (an [`envelopeDefinition`][envelopeDefinition]) are required:  | Parameter      | Description | | :--------      | :---------- | | `status`       | Set to `sent` to send the envelope to recipients.<br>Set to `created` (or don't set at all) to save the envelope as a draft. | | `emailSubject` | The subject of the email used to send the envelope. | | `documents`    | The [documents][] to be signed. | | `recipients`   | The email addresses of the envelope [recipients][]. |   **Note**: If the envelope has a workflow definition and the `workflowStatus` is `paused`, the envelope will not be sent immediately, even if the envelope's `status` is `sent`.  There are many ways to use envelopes. You can create and send an envelope with a single API request, or you can use several API requests to create, populate, and send envelopes.   | See:                  | To learn about:                                                                                                                    | | :----------------------- | :--------------------------------------------------------------------------------------------------------------------------------- | | [Envelopes][envelopes]   | Envelopes, [adding documents][addingdocs], [tracking][], [locking][], [deleting][], [templates][]                                  | | [Documents][documents]   | Documents, [attachments][], [supplemental documents][supdocs], [authoritative copies][authcopies], [purging][]                     | | [Recipients][recipients] | Recipients, [recipient types][reciptypes], [recipient status][recipstatus]                                                         | | [Tabs][tabs]             | Tabs, [tab types][tabtypes], [anchoring tabs][tabanchor], [auto-populating tabs][tabauto],  [custom tabs][tabcustom], [payments][] |   [addingdocs]:           https://developers.docusign.com/esign-rest-api/guides/concepts/envelopes#adding-documents-to-an-envelope [attachments]:          https://developers.docusign.com/esign-rest-api/guides/concepts/documents#attachments [authcopies]:           https://developers.docusign.com/esign-rest-api/guides/concepts/documents#authoritative-copies [conoverview]:          https://developers.docusign.com/esign-rest-api/guides/concepts/overview [deleting]:             https://developers.docusign.com/esign-rest-api/guides/concepts/envelopes#deleting-envelopes [documents]:            https://developers.docusign.com/esign-rest-api/guides/concepts/documents [envelopeDefinition]:   https://developers.docusign.com/esign-rest-api/reference/Envelopes/Envelopes/create#envelopeDefinition [envelopes]:            https://developers.docusign.com/esign-rest-api/guides/concepts/envelopes [locking]:              https://developers.docusign.com/esign-rest-api/guides/concepts/envelopes#locking-envelopes [payments]:             https://developers.docusign.com/esign-rest-api/guides/concepts/tabs#requesting-payments [purging]:              https://developers.docusign.com/esign-rest-api/guides/concepts/documents#purging-documents [recipients]:           https://developers.docusign.com/esign-rest-api/guides/concepts/recipients [recipstatus]:          https://developers.docusign.com/esign-rest-api/guides/concepts/recipients#recipient-status [reciptypes]:           https://developers.docusign.com/esign-rest-api/guides/concepts/recipients#recipient-types [supdocs]:              https://developers.docusign.com/esign-rest-api/guides/concepts/documents#supplemental-documents [tabanchor]:            https://developers.docusign.com/esign-rest-api/guides/concepts/tabs#anchoring-tabs [tabauto]:              https://developers.docusign.com/esign-rest-api/guides/concepts/tabs#automatically-populating-tabs [tabcustom]:            https://developers.docusign.com/esign-rest-api/guides/concepts/tabs#using-custom-tabs-in-envelopes-and-templates [tabs]:                 https://developers.docusign.com/esign-rest-api/guides/concepts/tabs [tabtypes]:             https://developers.docusign.com/esign-rest-api/guides/concepts/tabs#tab-types [templates]:            https://developers.docusign.com/esign-rest-api/guides/concepts/envelopes#working-with-templates [tracking]:             https://developers.docusign.com/esign-rest-api/guides/concepts/envelopes#tracking-envelope-status  **Note**: When you create an envelope by using a [composite template](https://developers.docusign.com/esign-rest-api/guides/concepts/templates#composite-templates), you should specify the envelope custom fields in the inline template. Any custom fields that you specify at the root level are ignored. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let cdseMode = "cdseMode_example" // String | Reserved for DocuSign.  (optional)
let changeRoutingOrder = "changeRoutingOrder_example" // String | When true, users can define the routing order of recipients while sending documents for signature. (optional)
let completedDocumentsOnly = "completedDocumentsOnly_example" // String | Reserved for DocuSign.  (optional)
let mergeRolesOnDraft = "mergeRolesOnDraft_example" // String | When set to **true**, template roles will be merged, and empty recipients will be removed. This parameter applies when you create a draft envelope with multiple templates. (To create a draft envelope, the `status` field is set to `created`.)  **Note**: DocuSign recommends that this parameter should be set to **true** whenever you create a draft envelope with multiple templates. (optional)
let envelopeDefinition = envelopeDefinition(accessControlListBase64: "accessControlListBase64_example", accessibility: "accessibility_example", allowComments: "allowComments_example", allowMarkup: "allowMarkup_example", allowReassign: "allowReassign_example", allowRecipientRecursion: "allowRecipientRecursion_example", allowViewHistory: "allowViewHistory_example", anySigner: "anySigner_example", asynchronous: "asynchronous_example", attachments: [nil], attachmentsUri: "attachmentsUri_example", authoritativeCopy: "authoritativeCopy_example", authoritativeCopyDefault: "authoritativeCopyDefault_example", autoNavigation: "autoNavigation_example", brandId: "brandId_example", brandLock: "brandLock_example", certificateUri: "certificateUri_example", completedDateTime: "completedDateTime_example", compositeTemplates: [nil], copyRecipientData: "copyRecipientData_example", createdDateTime: "createdDateTime_example", customFields: nil, customFieldsUri: "customFieldsUri_example", declinedDateTime: "declinedDateTime_example", deletedDateTime: "deletedDateTime_example", deliveredDateTime: "deliveredDateTime_example", disableResponsiveDocument: "disableResponsiveDocument_example", documents: [nil], documentsCombinedUri: "documentsCombinedUri_example", documentsUri: "documentsUri_example", emailBlurb: "emailBlurb_example", emailSettings: nil, emailSubject: "emailSubject_example", enableWetSign: "enableWetSign_example", enforceSignerVisibility: "enforceSignerVisibility_example", envelopeAttachments: [nil], envelopeDocuments: [nil], envelopeId: "envelopeId_example", envelopeIdStamping: "envelopeIdStamping_example", envelopeLocation: "envelopeLocation_example", envelopeMetadata: nil, envelopeUri: "envelopeUri_example", eventNotification: nil, eventNotifications: [nil], expireAfter: "expireAfter_example", expireDateTime: "expireDateTime_example", expireEnabled: "expireEnabled_example", externalEnvelopeId: "externalEnvelopeId_example", folders: [nil], hasComments: "hasComments_example", hasFormDataChanged: "hasFormDataChanged_example", hasWavFile: "hasWavFile_example", holder: "holder_example", initialSentDateTime: "initialSentDateTime_example", is21CFRPart11: "is21CFRPart11_example", isDynamicEnvelope: "isDynamicEnvelope_example", isSignatureProviderEnvelope: "isSignatureProviderEnvelope_example", lastModifiedDateTime: "lastModifiedDateTime_example", location: "location_example", lockInformation: nil, messageLock: "messageLock_example", notification: nil, notificationUri: "notificationUri_example", password: "password_example", powerForm: nil, purgeCompletedDate: "purgeCompletedDate_example", purgeRequestDate: "purgeRequestDate_example", purgeState: "purgeState_example", recipients: nil, recipientsLock: "recipientsLock_example", recipientsUri: "recipientsUri_example", sender: nil, sentDateTime: "sentDateTime_example", signerCanSignOnMobile: "signerCanSignOnMobile_example", signingLocation: "signingLocation_example", status: "status_example", statusChangedDateTime: "statusChangedDateTime_example", statusDateTime: "statusDateTime_example", templateId: "templateId_example", templateRoles: [nil], templatesUri: "templatesUri_example", transactionId: "transactionId_example", useDisclosure: "useDisclosure_example", voidedDateTime: "voidedDateTime_example", voidedReason: "voidedReason_example", workflow: nil) // EnvelopeDefinition |  (optional)

// Creates an envelope.
EnvelopesAPI.envelopesPostEnvelopes(accountId: accountId, cdseMode: cdseMode, changeRoutingOrder: changeRoutingOrder, completedDocumentsOnly: completedDocumentsOnly, mergeRolesOnDraft: mergeRolesOnDraft, envelopeDefinition: envelopeDefinition).whenComplete { result in
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
 **cdseMode** | **String** | Reserved for DocuSign.  | [optional] 
 **changeRoutingOrder** | **String** | When true, users can define the routing order of recipients while sending documents for signature. | [optional] 
 **completedDocumentsOnly** | **String** | Reserved for DocuSign.  | [optional] 
 **mergeRolesOnDraft** | **String** | When set to **true**, template roles will be merged, and empty recipients will be removed. This parameter applies when you create a draft envelope with multiple templates. (To create a draft envelope, the &#x60;status&#x60; field is set to &#x60;created&#x60;.)  **Note**: DocuSign recommends that this parameter should be set to **true** whenever you create a draft envelope with multiple templates. | [optional] 
 **envelopeDefinition** | [**EnvelopeDefinition**](EnvelopeDefinition.md) |  | [optional] 

### Return type

#### EnvelopesPostEnvelopes

```swift
public enum EnvelopesPostEnvelopes {
    case http201(value: EnvelopeSummary?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeSummary?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **envelopesPutEnvelope**
```swift
    open class func envelopesPutEnvelope(accountId: String, envelopeId: String, advancedUpdate: String? = nil, resendEnvelope: String? = nil, envelope: Envelope? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<EnvelopesPutEnvelope>
```

Send, void, or modify a draft envelope. Purge documents from a completed envelope.

This method enables you to make changes to an envelope. You can use it to:  * Send a draft envelope * Void an in-process envelope * Modify a draft envelope * Purge documents and envelope metadata from the DocuSign platform   <div class=\"highlight highlight-info\"> <p markdown=\"1\">  Although the request body for this method is a complete envelope definition, you only need to provide the properties that you're updating.  </p> </div>   ## Sending a Draft Envelope  To send a draft envelope, include the following code in the request body:  ```json {   \"status\": \"sent\" } ```  You can attach a workflow before sending the envelope:  ```json {   \"status\": \"sent\",   \"workflow\": {     \"workflowSteps\": [       {         \"action\": \"pause_before\",         \"description\": \"pause_before routing order 2\",         \"itemId\": 2,         \"triggerOnItem\": \"routing_order\"       }     ]   } } ```  ## Working with Workflows  To unpause a workflow, the request body should include this:  ```json {   \"workflow\": {     \"workflowStatus\": \"in_progress\"   } } ```  ## Voiding an In-Process Envelope  To void an in-process envelope, include the following code in the request body:  ```json {   \"status\": \"voided\",   \"voidedReason\": \"The reason for voiding the envelope\" } ```  ## Modifying Envelope Email Information  To change the email subject and message of a draft envelope, include the following code in the request body:  ```json {   \"emailSubject\": \"new email subject\",   \"emailBlurb\": \"new email message\" } ```  ## Purging Documents from DocuSign   To place only the documents in the purge queue, leaving any corresponding attachments and tabs in the DocuSign platform, set the `purgeState` property to `documents_queued`.   ```json {   \"purgeState\": \"documents_queued\" } ```  To place documents, attachments, and tabs in the purge queue, set the `purgeState` property to `documents_and_metadata_queued`.  ```json {   \"purgeState\": \"documents_and_metadata_queued\" } ```   You can purge documents only from completed envelopes that are not marked as the authoritative copy. The user requesting the purge must have permission to purge documents and must be the sender or be acting on behalf of the sender.    When the purge request is initiated the items to be purged are placed in the purge queue for deletion in 14 days. The sender and all recipients with DocuSign accounts associated with the envelope get an email notification the the documents will be deleted in 14 days. The notification contains a link to the documents. A second email notification is sent 7 days later. At the end of the 14-day period the documents are deleted from the system. Recipients without DocuSign accounts do not receive email notifications.   If your account has a Document Retention policy, envelope documents are automatically placed in the purge queue, and notification emails are sent at the end of the retention period. Setting a Document Retention policy is the same as setting a schedule for purging documents.  ## Removing Documents from the Purge Queue  To remove documents from the purge queue, include the following code in the request body:  ``` {   \"purgeState\": \"documents_dequeued\" } ```

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let advancedUpdate = "advancedUpdate_example" // String | When set to **true**, allows the caller to update recipients, tabs, custom fields, notification, email settings and other envelope attributes. (optional)
let resendEnvelope = "resendEnvelope_example" // String | When set to **true**, sends the specified envelope again. (optional)
let envelope = envelope(accessControlListBase64: "accessControlListBase64_example", allowComments: "allowComments_example", allowMarkup: "allowMarkup_example", allowReassign: "allowReassign_example", allowViewHistory: "allowViewHistory_example", anySigner: "anySigner_example", asynchronous: "asynchronous_example", attachmentsUri: "attachmentsUri_example", authoritativeCopy: "authoritativeCopy_example", authoritativeCopyDefault: "authoritativeCopyDefault_example", autoNavigation: "autoNavigation_example", brandId: "brandId_example", brandLock: "brandLock_example", certificateUri: "certificateUri_example", completedDateTime: "completedDateTime_example", copyRecipientData: "copyRecipientData_example", createdDateTime: "createdDateTime_example", customFields: nil, customFieldsUri: "customFieldsUri_example", declinedDateTime: "declinedDateTime_example", deletedDateTime: "deletedDateTime_example", deliveredDateTime: "deliveredDateTime_example", disableResponsiveDocument: "disableResponsiveDocument_example", documentsCombinedUri: "documentsCombinedUri_example", documentsUri: "documentsUri_example", emailBlurb: "emailBlurb_example", emailSettings: nil, emailSubject: "emailSubject_example", enableWetSign: "enableWetSign_example", enforceSignerVisibility: "enforceSignerVisibility_example", envelopeAttachments: [nil], envelopeDocuments: [nil], envelopeId: "envelopeId_example", envelopeIdStamping: "envelopeIdStamping_example", envelopeLocation: "envelopeLocation_example", envelopeMetadata: nil, envelopeUri: "envelopeUri_example", expireAfter: "expireAfter_example", expireDateTime: "expireDateTime_example", expireEnabled: "expireEnabled_example", externalEnvelopeId: "externalEnvelopeId_example", folders: [nil], hasComments: "hasComments_example", hasFormDataChanged: "hasFormDataChanged_example", hasWavFile: "hasWavFile_example", holder: "holder_example", initialSentDateTime: "initialSentDateTime_example", is21CFRPart11: "is21CFRPart11_example", isDynamicEnvelope: "isDynamicEnvelope_example", isSignatureProviderEnvelope: "isSignatureProviderEnvelope_example", lastModifiedDateTime: "lastModifiedDateTime_example", location: "location_example", lockInformation: nil, messageLock: "messageLock_example", notification: nil, notificationUri: "notificationUri_example", powerForm: nil, purgeCompletedDate: "purgeCompletedDate_example", purgeRequestDate: "purgeRequestDate_example", purgeState: "purgeState_example", recipients: nil, recipientsLock: "recipientsLock_example", recipientsUri: "recipientsUri_example", sender: nil, sentDateTime: "sentDateTime_example", signerCanSignOnMobile: "signerCanSignOnMobile_example", signingLocation: "signingLocation_example", status: "status_example", statusChangedDateTime: "statusChangedDateTime_example", statusDateTime: "statusDateTime_example", templatesUri: "templatesUri_example", transactionId: "transactionId_example", useDisclosure: "useDisclosure_example", voidedDateTime: "voidedDateTime_example", voidedReason: "voidedReason_example", workflow: nil) // Envelope | A container used to send documents to recipients. The envelope carries information about the sender and timestamps to indicate the progress of the delivery procedure. It can contain collections of Documents, Tabs and Recipients. (optional)

// Send, void, or modify a draft envelope. Purge documents from a completed envelope.
EnvelopesAPI.envelopesPutEnvelope(accountId: accountId, envelopeId: envelopeId, advancedUpdate: advancedUpdate, resendEnvelope: resendEnvelope, envelope: envelope).whenComplete { result in
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
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **advancedUpdate** | **String** | When set to **true**, allows the caller to update recipients, tabs, custom fields, notification, email settings and other envelope attributes. | [optional] 
 **resendEnvelope** | **String** | When set to **true**, sends the specified envelope again. | [optional] 
 **envelope** | [**Envelope**](Envelope.md) | A container used to send documents to recipients. The envelope carries information about the sender and timestamps to indicate the progress of the delivery procedure. It can contain collections of Documents, Tabs and Recipients. | [optional] 

### Return type

#### EnvelopesPutEnvelope

```swift
public enum EnvelopesPutEnvelope {
    case http200(value: EnvelopeUpdateSummary?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeUpdateSummary?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **envelopesPutStatus**
```swift
    open class func envelopesPutStatus(accountId: String, acStatus: String? = nil, block: String? = nil, count: String? = nil, email: String? = nil, envelopeIds: String? = nil, fromDate: String? = nil, fromToStatus: String? = nil, startPosition: String? = nil, status: String? = nil, toDate: String? = nil, transactionIds: String? = nil, userName: String? = nil, envelopeIdsRequest: EnvelopeIdsRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<EnvelopesPutStatus>
```

Gets envelope statuses for a set of envelopes.

Retrieves envelope statuses for a set of envelopes.  You must specify _one_ of the following query parameters:  | Parameter         | Description                                                                      | | :---------------- | :------------------------------------------------------------------------------- | | `from_date`       | a valid UTC DateTime:  `2016-01-01`                                              | | `envelope_ids`    | A comma-separated list of envelope IDs<br>or the special value `request_body`    | | `transaction_ids` | A comma-separated list of transaction IDs<br>or the special value `request_body` |  When you use the special value `request_body`, the request body looks like this:  ``` {   \"envelopeIds\": [     \"44c5ad6c-xxxx-xxxx-xxxx-ebda5e2dfe15\",     \"8e26040d-xxxx-xxxx-xxxx-1e29b924d237\",     \"c8b40a2d-xxxx-xxxx-xxxx-4fe56fe10f95\"   ] } ```  **Note**: It is an error omit the request body altogether. The request body must be at least `{}`.  

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let acStatus = "acStatus_example" // String | Specifies the Authoritative Copy Status for the envelopes. The possible values are:   - `Unknown` - `Original` - `Transferred` - `AuthoritativeCopy` - `AuthoritativeCopyExportPending` - `AuthoritativeCopyExported` - `DepositPending` - `Deposited` - `DepositedEO` - `DepositFailed` (optional)
let block = "block_example" // String | If set to **true**, removes any results that match one of the provided `transaction_ids`. (optional)
let count = "count_example" // String | The maximum number of results to return. (optional)
let email = "email_example" // String | The email address of the sender. (optional)
let envelopeIds = "envelopeIds_example" // String | The envelope IDs to include in the results.  The value of this property can be: - A comma-separated list of envelope IDs - The special value `request_body`. In this case, the method uses the envelope IDs in the request body. (optional)
let fromDate = "fromDate_example" // String | The date/time setting that specifies when the request begins checking for status changes for envelopes in the account. This is required unless parameters `envelope_ids` and/or `transaction_Ids` are provided.   ****Note****: This parameter must be set to a valid  `DateTime`, or  `envelope_ids` and/or `transaction_ids` must be specified. (optional)
let fromToStatus = "fromToStatus_example" // String | The envelope status that you are checking for. Possible values are:   - `Changed` (default) - `Completed` - `Created` - `Declined` - `Deleted` - `Delivered` - `Processing` - `Sent` - `Signed` - `TimedOut` - `Voided`  For example, if you specify `Changed`, this method returns a list of envelopes that changed status during the `from_date` to `to_date` time period.   (optional)
let startPosition = "startPosition_example" // String | The starting index position for search. (optional)
let status = "status_example" // String | A comma-separated list of envelope status to search for. Possible values are:  - `completed` - `created` - `declined` - `deleted` - `delivered` - `processing` - `sent` - `signed` - `template` - `voided`  (optional)
let toDate = "toDate_example" // String | Optional date/time setting that specifies the last date/time  or envelope status changes in the result set.   The default value is the time that you call the method.   (optional)
let transactionIds = "transactionIds_example" // String | The transaction IDs to include in the results. Note that transaction IDs are valid for seven days.  The value of this property can be: - A list of comma-separated transaction IDs - The special value `request_body`. In this case, this method uses the transaction IDs in the request body. (optional)
let userName = "userName_example" // String | Limits results to envelopes sent by the account user with this user name.  `email` must be given as well, and both `email` and `user_name` must refer to an existing account user.  (optional)
let envelopeIdsRequest = envelopeIdsRequest(envelopeIds: ["envelopeIds_example"], transactionIds: ["transactionIds_example"]) // EnvelopeIdsRequest |  (optional)

// Gets envelope statuses for a set of envelopes.
EnvelopesAPI.envelopesPutStatus(accountId: accountId, acStatus: acStatus, block: block, count: count, email: email, envelopeIds: envelopeIds, fromDate: fromDate, fromToStatus: fromToStatus, startPosition: startPosition, status: status, toDate: toDate, transactionIds: transactionIds, userName: userName, envelopeIdsRequest: envelopeIdsRequest).whenComplete { result in
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
 **acStatus** | **String** | Specifies the Authoritative Copy Status for the envelopes. The possible values are:   - &#x60;Unknown&#x60; - &#x60;Original&#x60; - &#x60;Transferred&#x60; - &#x60;AuthoritativeCopy&#x60; - &#x60;AuthoritativeCopyExportPending&#x60; - &#x60;AuthoritativeCopyExported&#x60; - &#x60;DepositPending&#x60; - &#x60;Deposited&#x60; - &#x60;DepositedEO&#x60; - &#x60;DepositFailed&#x60; | [optional] 
 **block** | **String** | If set to **true**, removes any results that match one of the provided &#x60;transaction_ids&#x60;. | [optional] 
 **count** | **String** | The maximum number of results to return. | [optional] 
 **email** | **String** | The email address of the sender. | [optional] 
 **envelopeIds** | **String** | The envelope IDs to include in the results.  The value of this property can be: - A comma-separated list of envelope IDs - The special value &#x60;request_body&#x60;. In this case, the method uses the envelope IDs in the request body. | [optional] 
 **fromDate** | **String** | The date/time setting that specifies when the request begins checking for status changes for envelopes in the account. This is required unless parameters &#x60;envelope_ids&#x60; and/or &#x60;transaction_Ids&#x60; are provided.   ****Note****: This parameter must be set to a valid  &#x60;DateTime&#x60;, or  &#x60;envelope_ids&#x60; and/or &#x60;transaction_ids&#x60; must be specified. | [optional] 
 **fromToStatus** | **String** | The envelope status that you are checking for. Possible values are:   - &#x60;Changed&#x60; (default) - &#x60;Completed&#x60; - &#x60;Created&#x60; - &#x60;Declined&#x60; - &#x60;Deleted&#x60; - &#x60;Delivered&#x60; - &#x60;Processing&#x60; - &#x60;Sent&#x60; - &#x60;Signed&#x60; - &#x60;TimedOut&#x60; - &#x60;Voided&#x60;  For example, if you specify &#x60;Changed&#x60;, this method returns a list of envelopes that changed status during the &#x60;from_date&#x60; to &#x60;to_date&#x60; time period.   | [optional] 
 **startPosition** | **String** | The starting index position for search. | [optional] 
 **status** | **String** | A comma-separated list of envelope status to search for. Possible values are:  - &#x60;completed&#x60; - &#x60;created&#x60; - &#x60;declined&#x60; - &#x60;deleted&#x60; - &#x60;delivered&#x60; - &#x60;processing&#x60; - &#x60;sent&#x60; - &#x60;signed&#x60; - &#x60;template&#x60; - &#x60;voided&#x60;  | [optional] 
 **toDate** | **String** | Optional date/time setting that specifies the last date/time  or envelope status changes in the result set.   The default value is the time that you call the method.   | [optional] 
 **transactionIds** | **String** | The transaction IDs to include in the results. Note that transaction IDs are valid for seven days.  The value of this property can be: - A list of comma-separated transaction IDs - The special value &#x60;request_body&#x60;. In this case, this method uses the transaction IDs in the request body. | [optional] 
 **userName** | **String** | Limits results to envelopes sent by the account user with this user name.  &#x60;email&#x60; must be given as well, and both &#x60;email&#x60; and &#x60;user_name&#x60; must refer to an existing account user.  | [optional] 
 **envelopeIdsRequest** | [**EnvelopeIdsRequest**](EnvelopeIdsRequest.md) |  | [optional] 

### Return type

#### EnvelopesPutStatus

```swift
public enum EnvelopesPutStatus {
    case http200(value: EnvelopesInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopesInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notificationGetEnvelopesEnvelopeIdNotification**
```swift
    open class func notificationGetEnvelopesEnvelopeIdNotification(accountId: String, envelopeId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<NotificationGetEnvelopesEnvelopeIdNotification>
```

Gets envelope notification information.

Retrieves the envelope notification, reminders and expirations, information for an existing envelope.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 

// Gets envelope notification information.
EnvelopesAPI.notificationGetEnvelopesEnvelopeIdNotification(accountId: accountId, envelopeId: envelopeId).whenComplete { result in
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
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 

### Return type

#### NotificationGetEnvelopesEnvelopeIdNotification

```swift
public enum NotificationGetEnvelopesEnvelopeIdNotification {
    case http200(value: Notification?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Notification?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notificationPutEnvelopesEnvelopeIdNotification**
```swift
    open class func notificationPutEnvelopesEnvelopeIdNotification(accountId: String, envelopeId: String, envelopeNotificationRequest: EnvelopeNotificationRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<NotificationPutEnvelopesEnvelopeIdNotification>
```

Sets envelope notifications for an existing envelope.

This method sets the notifications (reminders and expirations) for an existing envelope. The request body sends a structure containing reminders and expirations settings. It also specifies whether to use the settings specified in the request, or the account default notification settings for the envelope.  Note that this request only specifies when notifications are sent; it does not initiate sending of email messages.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let envelopeNotificationRequest = envelopeNotificationRequest(expirations: nil, reminders: nil, useAccountDefaults: "useAccountDefaults_example") // EnvelopeNotificationRequest |  (optional)

// Sets envelope notifications for an existing envelope.
EnvelopesAPI.notificationPutEnvelopesEnvelopeIdNotification(accountId: accountId, envelopeId: envelopeId, envelopeNotificationRequest: envelopeNotificationRequest).whenComplete { result in
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
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **envelopeNotificationRequest** | [**EnvelopeNotificationRequest**](EnvelopeNotificationRequest.md) |  | [optional] 

### Return type

#### NotificationPutEnvelopesEnvelopeIdNotification

```swift
public enum NotificationPutEnvelopesEnvelopeIdNotification {
    case http200(value: Notification?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Notification?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pagesDeletePage**
```swift
    open class func pagesDeletePage(accountId: String, documentId: String, envelopeId: String, pageNumber: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<PagesDeletePage>
```

Deletes a page from a document in an envelope.

Deletes a page from a document in an envelope based on the page number.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let pageNumber = "pageNumber_example" // String | The page number being accessed.

// Deletes a page from a document in an envelope.
EnvelopesAPI.pagesDeletePage(accountId: accountId, documentId: documentId, envelopeId: envelopeId, pageNumber: pageNumber).whenComplete { result in
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
 **documentId** | **String** | The &#x60;documentId&#x60; is set by the API client. It is an integer that falls between &#x60;1&#x60; and 2,147,483,647. The value is encoded as a string without commas. The values &#x60;1&#x60;, &#x60;2&#x60;, &#x60;3&#x60;, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a &#x60;documentId&#x60; property that specifies the document on which to place the tab. | 
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **pageNumber** | **String** | The page number being accessed. | 

### Return type

#### PagesDeletePage

```swift
public enum PagesDeletePage {
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

# **pagesGetPageImage**
```swift
    open class func pagesGetPageImage(accountId: String, documentId: String, envelopeId: String, pageNumber: String, dpi: String? = nil, maxHeight: String? = nil, maxWidth: String? = nil, showChanges: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<PagesGetPageImage>
```

Gets a page image from an envelope for display.

Returns an image of a page in a document for display.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let pageNumber = "pageNumber_example" // String | The page number being accessed.
let dpi = "dpi_example" // String | Sets the dots per inch (DPI) for the returned image. (optional)
let maxHeight = "maxHeight_example" // String | Sets the maximum height for the page image in pixels. The DPI is recalculated based on this setting. (optional)
let maxWidth = "maxWidth_example" // String | Sets the maximum width for the page image in pixels. The DPI is recalculated based on this setting. (optional)
let showChanges = "showChanges_example" // String | When **true**, changes display in the user interface. (optional)

// Gets a page image from an envelope for display.
EnvelopesAPI.pagesGetPageImage(accountId: accountId, documentId: documentId, envelopeId: envelopeId, pageNumber: pageNumber, dpi: dpi, maxHeight: maxHeight, maxWidth: maxWidth, showChanges: showChanges).whenComplete { result in
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
 **documentId** | **String** | The &#x60;documentId&#x60; is set by the API client. It is an integer that falls between &#x60;1&#x60; and 2,147,483,647. The value is encoded as a string without commas. The values &#x60;1&#x60;, &#x60;2&#x60;, &#x60;3&#x60;, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a &#x60;documentId&#x60; property that specifies the document on which to place the tab. | 
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **pageNumber** | **String** | The page number being accessed. | 
 **dpi** | **String** | Sets the dots per inch (DPI) for the returned image. | [optional] 
 **maxHeight** | **String** | Sets the maximum height for the page image in pixels. The DPI is recalculated based on this setting. | [optional] 
 **maxWidth** | **String** | Sets the maximum width for the page image in pixels. The DPI is recalculated based on this setting. | [optional] 
 **showChanges** | **String** | When **true**, changes display in the user interface. | [optional] 

### Return type

#### PagesGetPageImage

```swift
public enum PagesGetPageImage {
    case http200(value: Data?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Data?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pagesGetPageImages**
```swift
    open class func pagesGetPageImages(accountId: String, documentId: String, envelopeId: String, count: String? = nil, dpi: String? = nil, maxHeight: String? = nil, maxWidth: String? = nil, nocache: String? = nil, showChanges: String? = nil, startPosition: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<PagesGetPageImages>
```

Returns document page image(s) based on input.

Returns images of the pages in a document for display based on the parameters that you specify.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let count = "count_example" // String | The maximum number of results to return. (optional)
let dpi = "dpi_example" // String | The number of dots per inch (DPI) for the resulting images. Valid values are 1-310 DPI. The default value is 94. (optional)
let maxHeight = "maxHeight_example" // String | Sets the maximum height of the returned images in pixels. (optional)
let maxWidth = "maxWidth_example" // String | Sets the maximum width of the returned images in pixels. (optional)
let nocache = "nocache_example" // String | If **true**, using cache is disabled and image information is retrieved from a database. **True** is the default value.  (optional)
let showChanges = "showChanges_example" // String | If **true**, changes display in the user interface. (optional)
let startPosition = "startPosition_example" // String | The position within the total result set from which to start returning values. The value **thumbnail** may be used to return the page image. (optional)

// Returns document page image(s) based on input.
EnvelopesAPI.pagesGetPageImages(accountId: accountId, documentId: documentId, envelopeId: envelopeId, count: count, dpi: dpi, maxHeight: maxHeight, maxWidth: maxWidth, nocache: nocache, showChanges: showChanges, startPosition: startPosition).whenComplete { result in
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
 **documentId** | **String** | The &#x60;documentId&#x60; is set by the API client. It is an integer that falls between &#x60;1&#x60; and 2,147,483,647. The value is encoded as a string without commas. The values &#x60;1&#x60;, &#x60;2&#x60;, &#x60;3&#x60;, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a &#x60;documentId&#x60; property that specifies the document on which to place the tab. | 
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **count** | **String** | The maximum number of results to return. | [optional] 
 **dpi** | **String** | The number of dots per inch (DPI) for the resulting images. Valid values are 1-310 DPI. The default value is 94. | [optional] 
 **maxHeight** | **String** | Sets the maximum height of the returned images in pixels. | [optional] 
 **maxWidth** | **String** | Sets the maximum width of the returned images in pixels. | [optional] 
 **nocache** | **String** | If **true**, using cache is disabled and image information is retrieved from a database. **True** is the default value.  | [optional] 
 **showChanges** | **String** | If **true**, changes display in the user interface. | [optional] 
 **startPosition** | **String** | The position within the total result set from which to start returning values. The value **thumbnail** may be used to return the page image. | [optional] 

### Return type

#### PagesGetPageImages

```swift
public enum PagesGetPageImages {
    case http200(value: PageImages?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: PageImages?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pagesPutPageImage**
```swift
    open class func pagesPutPageImage(accountId: String, documentId: String, envelopeId: String, pageNumber: String, pageRequest: PageRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<PagesPutPageImage>
```

Rotates page image from an envelope for display.

Rotates page image from an envelope for display. The page image can be rotated to the left or right.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let documentId = "documentId_example" // String | The `documentId` is set by the API client. It is an integer that falls between `1` and 2,147,483,647. The value is encoded as a string without commas. The values `1`, `2`, `3`, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a `documentId` property that specifies the document on which to place the tab.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let pageNumber = "pageNumber_example" // String | The page number being accessed.
let pageRequest = pageRequest(password: "password_example", rotate: "rotate_example") // PageRequest |  (optional)

// Rotates page image from an envelope for display.
EnvelopesAPI.pagesPutPageImage(accountId: accountId, documentId: documentId, envelopeId: envelopeId, pageNumber: pageNumber, pageRequest: pageRequest).whenComplete { result in
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
 **documentId** | **String** | The &#x60;documentId&#x60; is set by the API client. It is an integer that falls between &#x60;1&#x60; and 2,147,483,647. The value is encoded as a string without commas. The values &#x60;1&#x60;, &#x60;2&#x60;, &#x60;3&#x60;, and so on are typically used to identify the first few documents in an envelope. Tab definitions include a &#x60;documentId&#x60; property that specifies the document on which to place the tab. | 
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **pageNumber** | **String** | The page number being accessed. | 
 **pageRequest** | [**PageRequest**](PageRequest.md) |  | [optional] 

### Return type

#### PagesPutPageImage

```swift
public enum PagesPutPageImage {
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

# **recipientsGetRecipientInitialsImage**
```swift
    open class func recipientsGetRecipientInitialsImage(accountId: String, envelopeId: String, recipientId: String, includeChrome: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientsGetRecipientInitialsImage>
```

Gets the initials image for a user.

Retrieves the initials image for the specified user. The image is returned in the same format as it was uploaded. In the request you can specify if the chrome (the added line and identifier around the initial image) is returned with the image.  The userId specified in the endpoint must match the authenticated user's user id and the user must be a member of the account.  The `signatureIdOrName` paramter accepts signature ID or signature name. DocuSign recommends you use signature ID (`signatureId`), since some names contain characters that do not properly URL encode. If you use the user name, it is likely that the name includes spaces and you might need to URL encode the name before using it in the endpoint.   For example: \"Bob Smith\" to \"Bob%20Smith\"  Older envelopes might only contain chromed images. If getting the non-chromed image fails, try getting the chromed image.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let recipientId = "recipientId_example" // String | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
let includeChrome = "includeChrome_example" // String | The added line and identifier around the initial image. Note: Older envelopes might only have chromed images. If getting the non-chromed image fails, try getting the chromed image. (optional)

// Gets the initials image for a user.
EnvelopesAPI.recipientsGetRecipientInitialsImage(accountId: accountId, envelopeId: envelopeId, recipientId: recipientId, includeChrome: includeChrome).whenComplete { result in
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
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **recipientId** | **String** | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each &#x60;recipientId&#x60; must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a &#x60;recipientId&#x60; of &#x60;1&#x60;. | 
 **includeChrome** | **String** | The added line and identifier around the initial image. Note: Older envelopes might only have chromed images. If getting the non-chromed image fails, try getting the chromed image. | [optional] 

### Return type

#### RecipientsGetRecipientInitialsImage

```swift
public enum RecipientsGetRecipientInitialsImage {
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

# **recipientsGetRecipientSignature**
```swift
    open class func recipientsGetRecipientSignature(accountId: String, envelopeId: String, recipientId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientsGetRecipientSignature>
```

Gets signature information for a signer or sign-in-person recipient.

Retrieves signature information for a signer or sign-in-person recipient.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let recipientId = "recipientId_example" // String | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.

// Gets signature information for a signer or sign-in-person recipient.
EnvelopesAPI.recipientsGetRecipientSignature(accountId: accountId, envelopeId: envelopeId, recipientId: recipientId).whenComplete { result in
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
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **recipientId** | **String** | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each &#x60;recipientId&#x60; must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a &#x60;recipientId&#x60; of &#x60;1&#x60;. | 

### Return type

#### RecipientsGetRecipientSignature

```swift
public enum RecipientsGetRecipientSignature {
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

# **recipientsGetRecipientSignatureImage**
```swift
    open class func recipientsGetRecipientSignatureImage(accountId: String, envelopeId: String, recipientId: String, includeChrome: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientsGetRecipientSignatureImage>
```

Retrieve signature image information for a signer/sign-in-person recipient.

Retrieves the specified user signature image. The image is returned in the same format as uploaded. In the request you can specify if the chrome (the added line and identifier around the initial image) is returned with the image.  The userId specified in the endpoint must match the authenticated user's user ID and the user must be a member of the account.  The `signatureIdOrName` parameter accepts signature ID or signature name. DocuSign recommends you use signature ID (`signatureId`), since some names contain characters that don't properly URL encode. If you use the user name, it is likely that the name includes spaces and you might need to URL encode the name before using it in the endpoint.   For example: \"Bob Smith\" to \"Bob%20Smith\"  Older envelopes might only have chromed images. If getting the non-chromed image fails, try getting the chromed image.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let recipientId = "recipientId_example" // String | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
let includeChrome = "includeChrome_example" // String | When set to **true**, the response includes the chromed version of the signature image. (optional)

// Retrieve signature image information for a signer/sign-in-person recipient.
EnvelopesAPI.recipientsGetRecipientSignatureImage(accountId: accountId, envelopeId: envelopeId, recipientId: recipientId, includeChrome: includeChrome).whenComplete { result in
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
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **recipientId** | **String** | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each &#x60;recipientId&#x60; must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a &#x60;recipientId&#x60; of &#x60;1&#x60;. | 
 **includeChrome** | **String** | When set to **true**, the response includes the chromed version of the signature image. | [optional] 

### Return type

#### RecipientsGetRecipientSignatureImage

```swift
public enum RecipientsGetRecipientSignatureImage {
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

# **recipientsPutRecipientInitialsImage**
```swift
    open class func recipientsPutRecipientInitialsImage(accountId: String, envelopeId: String, recipientId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientsPutRecipientInitialsImage>
```

Sets the initials image for an accountless signer.

Updates the initials image for a signer that does not have a DocuSign account. The supported image formats for this file are: gif, png, jpeg, and bmp. The file size must be less than 200K.  For the Authentication/Authorization for this call, the credentials must match the sender of the envelope, the recipient must be an accountless signer or in person signer. The account must have the `CanSendEnvelope` property set to **true** and the `ExpressSendOnly` property in `SendingUser` structure must be set to **false**.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let recipientId = "recipientId_example" // String | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.

// Sets the initials image for an accountless signer.
EnvelopesAPI.recipientsPutRecipientInitialsImage(accountId: accountId, envelopeId: envelopeId, recipientId: recipientId).whenComplete { result in
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
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **recipientId** | **String** | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each &#x60;recipientId&#x60; must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a &#x60;recipientId&#x60; of &#x60;1&#x60;. | 

### Return type

#### RecipientsPutRecipientInitialsImage

```swift
public enum RecipientsPutRecipientInitialsImage {
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

# **recipientsPutRecipientSignatureImage**
```swift
    open class func recipientsPutRecipientSignatureImage(accountId: String, envelopeId: String, recipientId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<RecipientsPutRecipientSignatureImage>
```

Sets the signature image for an accountless signer.

Updates the signature image for an accountless signer. The supported image formats for this file are: gif, png, jpeg, and bmp. The file size must be less than 200K.  For the Authentication/Authorization for this call, the credentials must match the sender of the envelope, the recipient must be an accountless signer or in person signer. The account must have the `CanSendEnvelope` property set to **true** and the `ExpressSendOnly` property in `SendingUser` structure must be set to **false**.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let recipientId = "recipientId_example" // String | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.

// Sets the signature image for an accountless signer.
EnvelopesAPI.recipientsPutRecipientSignatureImage(accountId: accountId, envelopeId: envelopeId, recipientId: recipientId).whenComplete { result in
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
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **recipientId** | **String** | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each &#x60;recipientId&#x60; must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a &#x60;recipientId&#x60; of &#x60;1&#x60;. | 

### Return type

#### RecipientsPutRecipientSignatureImage

```swift
public enum RecipientsPutRecipientSignatureImage {
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
