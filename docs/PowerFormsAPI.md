# PowerFormsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**powerFormsDeletePowerForm**](PowerFormsAPI.md#powerformsdeletepowerform) | **DELETE** /v2.1/accounts/{accountId}/powerforms/{powerFormId} | Deletes a PowerForm.
[**powerFormsDeletePowerFormsList**](PowerFormsAPI.md#powerformsdeletepowerformslist) | **DELETE** /v2.1/accounts/{accountId}/powerforms | Deletes one or more PowerForms.
[**powerFormsGetPowerForm**](PowerFormsAPI.md#powerformsgetpowerform) | **GET** /v2.1/accounts/{accountId}/powerforms/{powerFormId} | Returns a single PowerForm.
[**powerFormsGetPowerFormsList**](PowerFormsAPI.md#powerformsgetpowerformslist) | **GET** /v2.1/accounts/{accountId}/powerforms | Returns a list of PowerForms.
[**powerFormsGetPowerFormsSenders**](PowerFormsAPI.md#powerformsgetpowerformssenders) | **GET** /v2.1/accounts/{accountId}/powerforms/senders | Gets PowerForm senders.
[**powerFormsPostPowerForm**](PowerFormsAPI.md#powerformspostpowerform) | **POST** /v2.1/accounts/{accountId}/powerforms | Creates a new PowerForm
[**powerFormsPutPowerForm**](PowerFormsAPI.md#powerformsputpowerform) | **PUT** /v2.1/accounts/{accountId}/powerforms/{powerFormId} | Updates an existing PowerForm.


# **powerFormsDeletePowerForm**
```swift
    open class func powerFormsDeletePowerForm(accountId: String, powerFormId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<PowerFormsDeletePowerForm>
```

Deletes a PowerForm.

This method deletes a PowerForm.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let powerFormId = "powerFormId_example" // String | The id of the PowerForm.

// Deletes a PowerForm.
PowerFormsAPI.powerFormsDeletePowerForm(accountId: accountId, powerFormId: powerFormId).whenComplete { result in
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

### Return type

#### PowerFormsDeletePowerForm

```swift
public enum PowerFormsDeletePowerForm {
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

# **powerFormsDeletePowerFormsList**
```swift
    open class func powerFormsDeletePowerFormsList(accountId: String, powerFormsRequest: PowerFormsRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<PowerFormsDeletePowerFormsList>
```

Deletes one or more PowerForms.

This method deletes one or more PowerForms. The request body takes an array of PowerForm objects that are deleted based on the `powerFormId`.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let powerFormsRequest = powerFormsRequest(powerForms: [nil]) // PowerFormsRequest |  (optional)

// Deletes one or more PowerForms.
PowerFormsAPI.powerFormsDeletePowerFormsList(accountId: accountId, powerFormsRequest: powerFormsRequest).whenComplete { result in
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
 **powerFormsRequest** | [**PowerFormsRequest**](PowerFormsRequest.md) |  | [optional] 

### Return type

#### PowerFormsDeletePowerFormsList

```swift
public enum PowerFormsDeletePowerFormsList {
    case http200(value: PowerFormsResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: PowerFormsResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **powerFormsGetPowerForm**
```swift
    open class func powerFormsGetPowerForm(accountId: String, powerFormId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<PowerFormsGetPowerForm>
```

Returns a single PowerForm.

This method returns detailed information about a specific PowerForm.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let powerFormId = "powerFormId_example" // String | The id of the PowerForm.

// Returns a single PowerForm.
PowerFormsAPI.powerFormsGetPowerForm(accountId: accountId, powerFormId: powerFormId).whenComplete { result in
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

### Return type

#### PowerFormsGetPowerForm

```swift
public enum PowerFormsGetPowerForm {
    case http200(value: PowerForm?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: PowerForm?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **powerFormsGetPowerFormsList**
```swift
    open class func powerFormsGetPowerFormsList(accountId: String, fromDate: String? = nil, order: String? = nil, orderBy: String? = nil, toDate: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<PowerFormsGetPowerFormsList>
```

Returns a list of PowerForms.

This method returns a list of PowerForms that are available to the user.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let fromDate = "fromDate_example" // String | (Optional) The start date for a date range.  **Note**: If no value is provided, no date filtering is applied. (optional)
let order = "order_example" // String | (Optional) The order in which to sort the results.  Valid values are:    * `asc`: Ascending order. * `desc`: Descending order.  (optional)
let orderBy = "orderBy_example" // String | (Optional) The file attribute to use to sort the results.  Valid values are:   * `modified` * `name` (optional)
let toDate = "toDate_example" // String | (Optional) The end date for a date range.  **Note**: If no value is provided, this property defaults to the current date. (optional)

// Returns a list of PowerForms.
PowerFormsAPI.powerFormsGetPowerFormsList(accountId: accountId, fromDate: fromDate, order: order, orderBy: orderBy, toDate: toDate).whenComplete { result in
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
 **fromDate** | **String** | (Optional) The start date for a date range.  **Note**: If no value is provided, no date filtering is applied. | [optional] 
 **order** | **String** | (Optional) The order in which to sort the results.  Valid values are:    * &#x60;asc&#x60;: Ascending order. * &#x60;desc&#x60;: Descending order.  | [optional] 
 **orderBy** | **String** | (Optional) The file attribute to use to sort the results.  Valid values are:   * &#x60;modified&#x60; * &#x60;name&#x60; | [optional] 
 **toDate** | **String** | (Optional) The end date for a date range.  **Note**: If no value is provided, this property defaults to the current date. | [optional] 

### Return type

#### PowerFormsGetPowerFormsList

```swift
public enum PowerFormsGetPowerFormsList {
    case http200(value: PowerFormsResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: PowerFormsResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **powerFormsGetPowerFormsSenders**
```swift
    open class func powerFormsGetPowerFormsSenders(accountId: String, startPosition: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<PowerFormsGetPowerFormsSenders>
```

Gets PowerForm senders.

This method returns a list of users who have sent PowerForms.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let startPosition = "startPosition_example" // String | The position within the total result set from which to start returning values. The value **thumbnail** may be used to return the page image. (optional)

// Gets PowerForm senders.
PowerFormsAPI.powerFormsGetPowerFormsSenders(accountId: accountId, startPosition: startPosition).whenComplete { result in
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
 **startPosition** | **String** | The position within the total result set from which to start returning values. The value **thumbnail** may be used to return the page image. | [optional] 

### Return type

#### PowerFormsGetPowerFormsSenders

```swift
public enum PowerFormsGetPowerFormsSenders {
    case http200(value: PowerFormSendersResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: PowerFormSendersResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **powerFormsPostPowerForm**
```swift
    open class func powerFormsPostPowerForm(accountId: String, powerForm: PowerForm? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<PowerFormsPostPowerForm>
```

Creates a new PowerForm

This method creates a new PowerForm.   You create a PowerForm from an existing DocuSign [template](https://developers.docusign.com/esign-rest-api/reference/Templates/Templates/create), based on the `templateId` in the request body.   PowerForms that you create from a template are referred to as *web PowerForms*.   **Note**: The RADmin console also supports creating a PowerForm by uploading a PDF file that has active form fields (referred to as a *PDF PowerForm*). However, PDF PowerForms are deprecated and are not supported in the API.  **Note**: A PowerForm can have only one sender. (Because PowerForms are not necessarily sent by email, this user is also referred to as the PowerForm *initiator*.) If you need to associate multiple senders with a PowerForm, create multiple copies of the PowerForm by using the same template (one copy for each sender). By default, the sender is the PowerForm Administrator who creates the PowerForm.   ### Signing modes  You can use one of the following signing modes for a PowerForm:   **`email`**  This mode verifies the recipient's identity by using email authentication before the recipient can sign a document. The recipient enters their email address on the landing page and then clicks **Begin Signing** to begin the signing process. The system then sends an email message with a validation code to the recipient. If the recipient does not provide a valid email address, they do not receive the email message containing the access code and are not able to open and sign the document.  Alternatively, you can make the process easier for signers by using email authentication only and omitting the access code. To do this, you append the `activateonly` flag to the PowerForm URL and set it to true by passing in the value `1`.  When the flag is active, the first recipient receives an email with a link that initiates the signing session without having to enter access code.  Example: `activateonly=1`  **`direct`**  This mode does not require any verification. After a recipient enters their email address on the landing page and clicks **Begin Signing**, a new browser tab opens and the recipient can immediately begin the signing process.  Because the `direct` signing mode does not verify the recipient's identity by using email authentication, we strongly recommend that you use this mode only when the PowerForm is accessible behind a secure portal where the recipient's identity is already authenticated, or where another form of authentication is specified for the recipient in the DocuSign template (for example, an access code, phone authentication, or ID check).    **Note**: In the account settings, `enablePowerFormDirect` must be **true** to use `direct` as the `signingMode`.  ### Redirect URLs  You can control the URL to which signers are redirected after signing your PowerForm. However, the URL is specified elsewhere, outside of the PowerForm creation process. For details, see [How do I specify a URL to redirect to when a PowerForm is completed?](https://support.docusign.com/en/articles/How-do-I-specify-a-URL-to-redirect-to-when-a-Powerform-is-completed).  ### More information  For more information about creating PowerForms, see [Create a PowerForm](https://support.docusign.com/en/guides/ndse-user-guide-create-a-powerform).  

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let powerForm = powerForm(createdBy: "createdBy_example", createdDateTime: "createdDateTime_example", emailBody: "emailBody_example", emailSubject: "emailSubject_example", envelopes: [nil], errorDetails: nil, instructions: "instructions_example", isActive: "isActive_example", lastUsed: "lastUsed_example", limitUseInterval: "limitUseInterval_example", limitUseIntervalEnabled: "limitUseIntervalEnabled_example", limitUseIntervalUnits: "limitUseIntervalUnits_example", maxUseEnabled: "maxUseEnabled_example", name: "name_example", powerFormId: "powerFormId_example", powerFormUrl: "powerFormUrl_example", recipients: [nil], senderName: "senderName_example", senderUserId: "senderUserId_example", signingMode: "signingMode_example", templateId: "templateId_example", templateName: "templateName_example", timesUsed: "timesUsed_example", uri: "uri_example", usesRemaining: "usesRemaining_example") // PowerForm | Information about any PowerForms that are included in the envelope. (optional)

// Creates a new PowerForm
PowerFormsAPI.powerFormsPostPowerForm(accountId: accountId, powerForm: powerForm).whenComplete { result in
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
 **powerForm** | [**PowerForm**](PowerForm.md) | Information about any PowerForms that are included in the envelope. | [optional] 

### Return type

#### PowerFormsPostPowerForm

```swift
public enum PowerFormsPostPowerForm {
    case http201(value: PowerForm?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: PowerForm?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **powerFormsPutPowerForm**
```swift
    open class func powerFormsPutPowerForm(accountId: String, powerFormId: String, powerForm: PowerForm? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<PowerFormsPutPowerForm>
```

Updates an existing PowerForm.

This method updates an existing PowerForm.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let powerFormId = "powerFormId_example" // String | The id of the PowerForm.
let powerForm = powerForm(createdBy: "createdBy_example", createdDateTime: "createdDateTime_example", emailBody: "emailBody_example", emailSubject: "emailSubject_example", envelopes: [nil], errorDetails: nil, instructions: "instructions_example", isActive: "isActive_example", lastUsed: "lastUsed_example", limitUseInterval: "limitUseInterval_example", limitUseIntervalEnabled: "limitUseIntervalEnabled_example", limitUseIntervalUnits: "limitUseIntervalUnits_example", maxUseEnabled: "maxUseEnabled_example", name: "name_example", powerFormId: "powerFormId_example", powerFormUrl: "powerFormUrl_example", recipients: [nil], senderName: "senderName_example", senderUserId: "senderUserId_example", signingMode: "signingMode_example", templateId: "templateId_example", templateName: "templateName_example", timesUsed: "timesUsed_example", uri: "uri_example", usesRemaining: "usesRemaining_example") // PowerForm | Information about any PowerForms that are included in the envelope. (optional)

// Updates an existing PowerForm.
PowerFormsAPI.powerFormsPutPowerForm(accountId: accountId, powerFormId: powerFormId, powerForm: powerForm).whenComplete { result in
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
 **powerForm** | [**PowerForm**](PowerForm.md) | Information about any PowerForms that are included in the envelope. | [optional] 

### Return type

#### PowerFormsPutPowerForm

```swift
public enum PowerFormsPutPowerForm {
    case http200(value: PowerForm?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: PowerForm?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

