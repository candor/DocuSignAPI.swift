# ContactsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**contactsDeleteContactWithId**](ContactsAPI.md#contactsdeletecontactwithid) | **DELETE** /v2.1/accounts/{accountId}/contacts/{contactId} | Deletes a contact.
[**contactsDeleteContacts**](ContactsAPI.md#contactsdeletecontacts) | **DELETE** /v2.1/accounts/{accountId}/contacts | Deletes multiple contacts from an account.
[**contactsGetContactById**](ContactsAPI.md#contactsgetcontactbyid) | **GET** /v2.1/accounts/{accountId}/contacts/{contactId} | Gets one or more contacts.
[**contactsPostContacts**](ContactsAPI.md#contactspostcontacts) | **POST** /v2.1/accounts/{accountId}/contacts | Imports new contacts into a contacts list.
[**contactsPutContacts**](ContactsAPI.md#contactsputcontacts) | **PUT** /v2.1/accounts/{accountId}/contacts | Updates one or more contacts.


# **contactsDeleteContactWithId**
```swift
    open class func contactsDeleteContactWithId(accountId: String, contactId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ContactsDeleteContactWithId>
```

Deletes a contact.

This method deletes a contact associated with an account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let contactId = "contactId_example" // String | The id of a contact person in the account's address book.

// Deletes a contact.
ContactsAPI.contactsDeleteContactWithId(accountId: accountId, contactId: contactId).whenComplete { result in
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
 **contactId** | **String** | The id of a contact person in the account&#39;s address book. | 

### Return type

#### ContactsDeleteContactWithId

```swift
public enum ContactsDeleteContactWithId {
    case http200(value: ContactUpdateResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ContactUpdateResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contactsDeleteContacts**
```swift
    open class func contactsDeleteContacts(accountId: String, contactModRequest: ContactModRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ContactsDeleteContacts>
```

Deletes multiple contacts from an account.

This method deletes multiple contacts associated with an account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let contactModRequest = contactModRequest(contactList: [nil]) // ContactModRequest |  (optional)

// Deletes multiple contacts from an account.
ContactsAPI.contactsDeleteContacts(accountId: accountId, contactModRequest: contactModRequest).whenComplete { result in
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
 **contactModRequest** | [**ContactModRequest**](ContactModRequest.md) |  | [optional] 

### Return type

#### ContactsDeleteContacts

```swift
public enum ContactsDeleteContacts {
    case http200(value: ContactUpdateResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ContactUpdateResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contactsGetContactById**
```swift
    open class func contactsGetContactById(accountId: String, contactId: String, cloudProvider: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ContactsGetContactById>
```

Gets one or more contacts.

This method returns one or more contacts associated with a DocuSign account. You can also retrieve contacts from connected [cloud storage][CloudStorage] providers by using the `cloud_provider` query parameter. By default, contacts are retrieved from the DocuSign account's default address book.  To return a specific contact, use the `contactId` query parameter. To return all contacts associated with an account, omit this parameter.  [CloudStorage]: /esign-rest-api/reference/CloudStorage/

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let contactId = "contactId_example" // String | The id of a contact person in the account's address book.
let cloudProvider = "cloudProvider_example" // String | (Optional) The cloud provider from which to retrieve the contacts. Valid values are:  - `rooms` - `docusignCore` (default) (optional)

// Gets one or more contacts.
ContactsAPI.contactsGetContactById(accountId: accountId, contactId: contactId, cloudProvider: cloudProvider).whenComplete { result in
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
 **contactId** | **String** | The id of a contact person in the account&#39;s address book. | 
 **cloudProvider** | **String** | (Optional) The cloud provider from which to retrieve the contacts. Valid values are:  - &#x60;rooms&#x60; - &#x60;docusignCore&#x60; (default) | [optional] 

### Return type

#### ContactsGetContactById

```swift
public enum ContactsGetContactById {
    case http200(value: ContactGetResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ContactGetResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contactsPostContacts**
```swift
    open class func contactsPostContacts(accountId: String, contactModRequest: ContactModRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ContactsPostContacts>
```

Imports new contacts into a contacts list.

This method imports multiple new contacts into a contact list from a CSV, JSON, or XML file.  To use this method, you must provide a request body in one of the supported formats and include a `content-type` header with the appropriate value.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let contactModRequest = contactModRequest(contactList: [nil]) // ContactModRequest |  (optional)

// Imports new contacts into a contacts list.
ContactsAPI.contactsPostContacts(accountId: accountId, contactModRequest: contactModRequest).whenComplete { result in
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
 **contactModRequest** | [**ContactModRequest**](ContactModRequest.md) |  | [optional] 

### Return type

#### ContactsPostContacts

```swift
public enum ContactsPostContacts {
    case http201(value: ContactUpdateResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ContactUpdateResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **contactsPutContacts**
```swift
    open class func contactsPutContacts(accountId: String, contactModRequest: ContactModRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ContactsPutContacts>
```

Updates one or more contacts.

This method updates one or more contacts associated with an account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let contactModRequest = contactModRequest(contactList: [nil]) // ContactModRequest |  (optional)

// Updates one or more contacts.
ContactsAPI.contactsPutContacts(accountId: accountId, contactModRequest: contactModRequest).whenComplete { result in
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
 **contactModRequest** | [**ContactModRequest**](ContactModRequest.md) |  | [optional] 

### Return type

#### ContactsPutContacts

```swift
public enum ContactsPutContacts {
    case http200(value: ContactUpdateResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ContactUpdateResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

