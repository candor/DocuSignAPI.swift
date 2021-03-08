# EnvelopeViewsAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**viewsDeleteEnvelopeCorrectView**](EnvelopeViewsAPI.md#viewsdeleteenvelopecorrectview) | **DELETE** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/views/correct | 
[**viewsPostAccountConsoleView**](EnvelopeViewsAPI.md#viewspostaccountconsoleview) | **POST** /v2.1/accounts/{accountId}/views/console | Returns a URL to the authentication view UI.
[**viewsPostEnvelopeCorrectView**](EnvelopeViewsAPI.md#viewspostenvelopecorrectview) | **POST** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/views/correct | Returns a URL to the envelope correction UI.
[**viewsPostEnvelopeEditView**](EnvelopeViewsAPI.md#viewspostenvelopeeditview) | **POST** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/views/edit | Returns a URL to the edit view UI.
[**viewsPostEnvelopeRecipientSharedView**](EnvelopeViewsAPI.md#viewspostenveloperecipientsharedview) | **POST** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/views/shared | Returns a URL to the shared recipient view UI for an envelope.
[**viewsPostEnvelopeRecipientView**](EnvelopeViewsAPI.md#viewspostenveloperecipientview) | **POST** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/views/recipient | Returns a URL to the recipient view UI.
[**viewsPostEnvelopeSenderView**](EnvelopeViewsAPI.md#viewspostenvelopesenderview) | **POST** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/views/sender | Returns a URL to the sender view UI.


# **viewsDeleteEnvelopeCorrectView**
```swift
    open class func viewsDeleteEnvelopeCorrectView(accountId: String, envelopeId: String, correctViewRequest: CorrectViewRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ViewsDeleteEnvelopeCorrectView>
```



### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let correctViewRequest = correctViewRequest(returnUrl: "returnUrl_example", suppressNavigation: "suppressNavigation_example", viewUrl: "viewUrl_example") // CorrectViewRequest |  (optional)

EnvelopeViewsAPI.viewsDeleteEnvelopeCorrectView(accountId: accountId, envelopeId: envelopeId, correctViewRequest: correctViewRequest).whenComplete { result in
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
 **correctViewRequest** | [**CorrectViewRequest**](CorrectViewRequest.md) |  | [optional] 

### Return type

#### ViewsDeleteEnvelopeCorrectView

```swift
public enum ViewsDeleteEnvelopeCorrectView {
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

# **viewsPostAccountConsoleView**
```swift
    open class func viewsPostAccountConsoleView(accountId: String, consoleViewRequest: ConsoleViewRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ViewsPostAccountConsoleView>
```

Returns a URL to the authentication view UI.

Returns a URL that enables you to embed the authentication view of the DocuSign UI in your applications.  **Note**: You can revoke this URL by making the DELETE call to the same URL with no request body.   <blockquote> <p><b>Information Security notice</b>: This method provides full administrator access to the account.</p>

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let consoleViewRequest = consoleViewRequest(envelopeId: "envelopeId_example", returnUrl: "returnUrl_example") // ConsoleViewRequest |  (optional)

// Returns a URL to the authentication view UI.
EnvelopeViewsAPI.viewsPostAccountConsoleView(accountId: accountId, consoleViewRequest: consoleViewRequest).whenComplete { result in
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
 **consoleViewRequest** | [**ConsoleViewRequest**](ConsoleViewRequest.md) |  | [optional] 

### Return type

#### ViewsPostAccountConsoleView

```swift
public enum ViewsPostAccountConsoleView {
    case http201(value: EnvelopeViews?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeViews?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewsPostEnvelopeCorrectView**
```swift
    open class func viewsPostEnvelopeCorrectView(accountId: String, envelopeId: String, correctViewRequest: CorrectViewRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ViewsPostEnvelopeCorrectView>
```

Returns a URL to the envelope correction UI.

Returns a URL that allows you to embed the envelope correction view of the DocuSign UI in your applications.  **Important**: Due to screen space issues, iFrames should not be used for embedded operations on mobile devices. For iOS devices, DocuSign recommends using a WebView.   **Note**: You can revoke this URL by making the DELETE call to the same URL with no request body.   <blockquote> <p><b>Information Security notice</b>: This method provides full access to the sending account. When you use this view, the current user has full access to the account. If the account has administrative privileges, then this method also provides administrator access.</p>  <p>If your use case needs to enable a sender to update a draft envelope before it is sent or make other changes, take one of the following steps:</p>  <ul> <li>Configure each sender to have their own individual user account to use this API method.</li> <li>Enhance your API integration so that this method is not needed. Your integration can create the tabs, recipients, and other envelope settings as needed.</li> </ul> </blockquote>

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let correctViewRequest = correctViewRequest(returnUrl: "returnUrl_example", suppressNavigation: "suppressNavigation_example", viewUrl: "viewUrl_example") // CorrectViewRequest |  (optional)

// Returns a URL to the envelope correction UI.
EnvelopeViewsAPI.viewsPostEnvelopeCorrectView(accountId: accountId, envelopeId: envelopeId, correctViewRequest: correctViewRequest).whenComplete { result in
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
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **correctViewRequest** | [**CorrectViewRequest**](CorrectViewRequest.md) |  | [optional] 

### Return type

#### ViewsPostEnvelopeCorrectView

```swift
public enum ViewsPostEnvelopeCorrectView {
    case http201(value: EnvelopeViews?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeViews?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewsPostEnvelopeEditView**
```swift
    open class func viewsPostEnvelopeEditView(accountId: String, envelopeId: String, returnUrlRequest: ReturnUrlRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ViewsPostEnvelopeEditView>
```

Returns a URL to the edit view UI.

Returns a URL that enables you to embed the edit view of the DocuSign UI in your applications. This is a one-time use login token that allows the user to be placed into the DocuSign editing view.   Upon sending completion, the user is returned to the return URL provided by the API application.  **Important**: Due to screen space issues, iFrames should not be used for embedded operations on mobile devices. For iOS devices, DocuSign recommends using a WebView.   **Note**: You can revoke this URL by making the DELETE call to the same URL with no request body.   <blockquote> <p><b>Information Security notice</b>: This method provides full access to the sending account. When you use this view, the current user has full access to the account. If the account has administrative privileges, then this method also provides administrator access.</p>  <p>If your use case needs to enable a sender to update a draft envelope before it is sent or make other changes, take one of the following steps:</p>  <ul> <li>Configure each sender to have their own individual user account to use this API method.</li> <li>Enhance your API integration so that this method is not needed. Your integration can create the tabs, recipients, and other envelope settings as needed.</li> </ul> </blockquote>

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let returnUrlRequest = returnUrlRequest(returnUrl: "returnUrl_example") // ReturnUrlRequest |  (optional)

// Returns a URL to the edit view UI.
EnvelopeViewsAPI.viewsPostEnvelopeEditView(accountId: accountId, envelopeId: envelopeId, returnUrlRequest: returnUrlRequest).whenComplete { result in
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
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **returnUrlRequest** | [**ReturnUrlRequest**](ReturnUrlRequest.md) |  | [optional] 

### Return type

#### ViewsPostEnvelopeEditView

```swift
public enum ViewsPostEnvelopeEditView {
    case http201(value: EnvelopeViews?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeViews?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewsPostEnvelopeRecipientSharedView**
```swift
    open class func viewsPostEnvelopeRecipientSharedView(accountId: String, envelopeId: String, recipientViewRequest: RecipientViewRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ViewsPostEnvelopeRecipientSharedView>
```

Returns a URL to the shared recipient view UI for an envelope.

Returns a URL that enables you to embed the DocuSign UI recipient view of a [shared envelope](https://support.docusign.com/en/guides/ndse-admin-guide-share-envelopes) in your applications. This is the view that a user sees of an envelope that a recipient on the same account has shared with them.  **Important**: Due to screen space issues, iFrames should not be used for embedded operations on mobile devices. For iOS devices, DocuSign recommends using a WebView.  **Note**: You can revoke this URL by making the DELETE call to the same URL with no request body.  

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let recipientViewRequest = recipientViewRequest(assertionId: "assertionId_example", authenticationInstant: "authenticationInstant_example", authenticationMethod: "authenticationMethod_example", clientUserId: "clientUserId_example", email: "email_example", frameAncestors: ["frameAncestors_example"], messageOrigins: ["messageOrigins_example"], pingFrequency: "pingFrequency_example", pingUrl: "pingUrl_example", recipientId: "recipientId_example", returnUrl: "returnUrl_example", securityDomain: "securityDomain_example", userId: "userId_example", userName: "userName_example", xFrameOptions: "xFrameOptions_example", xFrameOptionsAllowFromUrl: "xFrameOptionsAllowFromUrl_example") // RecipientViewRequest |  (optional)

// Returns a URL to the shared recipient view UI for an envelope.
EnvelopeViewsAPI.viewsPostEnvelopeRecipientSharedView(accountId: accountId, envelopeId: envelopeId, recipientViewRequest: recipientViewRequest).whenComplete { result in
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
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **recipientViewRequest** | [**RecipientViewRequest**](RecipientViewRequest.md) |  | [optional] 

### Return type

#### ViewsPostEnvelopeRecipientSharedView

```swift
public enum ViewsPostEnvelopeRecipientSharedView {
    case http201(value: ViewUrl?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ViewUrl?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewsPostEnvelopeRecipientView**
```swift
    open class func viewsPostEnvelopeRecipientView(accountId: String, envelopeId: String, recipientViewRequest: RecipientViewRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ViewsPostEnvelopeRecipientView>
```

Returns a URL to the recipient view UI.

Returns a URL that enables you to embed the recipient view of the DocuSign UI in your applications. If the recipient is a signer, then the view will provide the signing ceremony.  **Note**: Please redirect the client to the URL. iFrames should not be used, especially if the recipient is using a mobile or tablet.   This method is only used with envelopes in the `sent` status.  Your application is responsible for authenticating the identity of the recipient or signer when you use this method. Use the parameters `assertionId`, `authenticationInstant`, `authenticationMethod`, `clientUserId`, and `securityDomain` to record information on how the recipient was authenticated. At a minimum, `authenticationMethod` and `clientUserId` are required. The information that you provide is included in the envelope's certificate of completion.  ## Redirects After the signer completes or ends the signing ceremony, DocuSign will redirect the user's browser back to your app via the `returnUrl` that you supply. (The user is redirected through a different subdomain, depending on the region of the account sending the envelope. Please [verify your domain whitelist](https://www.docusign.com/trust/security/whitelists).)   ### The event status parameter DocuSign appends an `event` query parameter to the URL with the outcome of the signing ceremony. Your app can use this event parameter to determine the next step for the envelope. Do not fetch the envelope status by using Envelopes::get or a similar method because doing so could break the DocuSign rule against polling.  **Note**: Because a user can cancel redirection, close their browser after signing, or spoof the landing URL. Hitting the `ReturnUrl` should not be the single source of truth for envelope status for your integration.  ## The URL is time-limited The URL returned by this method is valid for one use, and you must use or display it within a couple of minutes after it is generated. AFter the recipient is redirected to the recipient view, they must interact with the DocuSign system periodically or their session will time out.  Because the URL is time-limited, it should not be stored or sent through email. After you receive it, immediately redirect the user's browser to the URL.  If you want to invite someone to an embedded signing session via email, the email invitation's URL must be to your application. When invoked, your app should request a recipientView URL from DocuSign and then redirect the signer to that URL.  ## Maintaining State After the recipient completes the recipient view (or signing ceremony), they are redirected to your application. Your application can recover state information about the transaction by storing information in a cookie, or by including query parameters in the `returnUrl` field. Eg, `https://myapp.eg.com/docusign_return?myState=12345` When the user is redirected to your app, the `event` query parameter will be appended. In this example, prevent spoofing by not using a guessable value as the state value.  **Note**: You can revoke the URL by making the DELETE call to the same URL with no request body. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let recipientViewRequest = recipientViewRequest(assertionId: "assertionId_example", authenticationInstant: "authenticationInstant_example", authenticationMethod: "authenticationMethod_example", clientUserId: "clientUserId_example", email: "email_example", frameAncestors: ["frameAncestors_example"], messageOrigins: ["messageOrigins_example"], pingFrequency: "pingFrequency_example", pingUrl: "pingUrl_example", recipientId: "recipientId_example", returnUrl: "returnUrl_example", securityDomain: "securityDomain_example", userId: "userId_example", userName: "userName_example", xFrameOptions: "xFrameOptions_example", xFrameOptionsAllowFromUrl: "xFrameOptionsAllowFromUrl_example") // RecipientViewRequest |  (optional)

// Returns a URL to the recipient view UI.
EnvelopeViewsAPI.viewsPostEnvelopeRecipientView(accountId: accountId, envelopeId: envelopeId, recipientViewRequest: recipientViewRequest).whenComplete { result in
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
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **recipientViewRequest** | [**RecipientViewRequest**](RecipientViewRequest.md) |  | [optional] 

### Return type

#### ViewsPostEnvelopeRecipientView

```swift
public enum ViewsPostEnvelopeRecipientView {
    case http201(value: EnvelopeViews?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeViews?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **viewsPostEnvelopeSenderView**
```swift
    open class func viewsPostEnvelopeSenderView(accountId: String, envelopeId: String, returnUrlRequest: ReturnUrlRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ViewsPostEnvelopeSenderView>
```

Returns a URL to the sender view UI.

Returns a URL that enables you to embed the sender view of the DocuSign UI in your applications.  The returned URL can only be redirected to immediately after it is generated. It can only be used once. Therefore, request the URL immediately before you redirect your user to it.  For the best user experience, don't use an iFrame. For iOS devices DocuSign recommends using a WebView.  Multiple solutions are available for maintaining your client state. See the **Maintaining State** section of the [Embedded Signing introduction.](https://developers.docusign.com/esign-rest-api/guides/embedded-signing)  After the user has completed the sending view, the browser is redirected to the `returnUrl` supplied.  By default, if the envelope already contains one or more documents, DocuSign will initially show the document tagging view when you redirect to the URL.   To start with the envelope's recipients and documents view instead, examine the URL in the method's response.  Then change the query parameter from `send=1` to `send=0` to start with the recipients/documents view.  **Note**: You can revoke the URL by making the DELETE call to the same URL with no request body.   <blockquote> <p><b>Information Security notice</b>: This method provides full access to the sending account. When you use this view, the current user has full access to the account. If the account has administrative privileges, then this method also provides administrator access.</p>  <p>If your use case needs to enable a sender to update a draft envelope before it is sent or make other changes, take one of the following steps:</p>  <ul> <li>Configure each sender to have their own individual user account to use this API method.</li> <li>Enhance your API integration so that this method is not needed. Your integration can create the tabs, recipients, and other envelope settings as needed.</li> </ul> </blockquote>

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let returnUrlRequest = returnUrlRequest(returnUrl: "returnUrl_example") // ReturnUrlRequest |  (optional)

// Returns a URL to the sender view UI.
EnvelopeViewsAPI.viewsPostEnvelopeSenderView(accountId: accountId, envelopeId: envelopeId, returnUrlRequest: returnUrlRequest).whenComplete { result in
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
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **returnUrlRequest** | [**ReturnUrlRequest**](ReturnUrlRequest.md) |  | [optional] 

### Return type

#### ViewsPostEnvelopeSenderView

```swift
public enum ViewsPostEnvelopeSenderView {
    case http201(value: EnvelopeViews?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: EnvelopeViews?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

