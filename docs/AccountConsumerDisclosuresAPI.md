# AccountConsumerDisclosuresAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**consumerDisclosureGetConsumerDisclosure**](AccountConsumerDisclosuresAPI.md#consumerdisclosuregetconsumerdisclosure) | **GET** /v2.1/accounts/{accountId}/consumer_disclosure | Gets the default Electronic Record and Signature Disclosure for an account.
[**consumerDisclosureGetConsumerDisclosureLangCode**](AccountConsumerDisclosuresAPI.md#consumerdisclosuregetconsumerdisclosurelangcode) | **GET** /v2.1/accounts/{accountId}/consumer_disclosure/{langCode} | Gets the Electronic Record and Signature Disclosure for an account.
[**consumerDisclosurePutConsumerDisclosure**](AccountConsumerDisclosuresAPI.md#consumerdisclosureputconsumerdisclosure) | **PUT** /v2.1/accounts/{accountId}/consumer_disclosure/{langCode} | Updates the Electronic Record and Signature Disclosure for an account.


# **consumerDisclosureGetConsumerDisclosure**
```swift
    open class func consumerDisclosureGetConsumerDisclosure(accountId: String, langCode: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ConsumerDisclosureGetConsumerDisclosure>
```

Gets the default Electronic Record and Signature Disclosure for an account.

Retrieves the default, HTML-formatted Electronic Record and Signature Disclosure (ERSD) associated with the account.   This is the default ERSD disclosure that DocuSign provides for the convenience of U.S.-based customers only. This default disclosure is only valid for transactions between U.S.-based parties.  To set the language of the disclosure that you want to retrieve, use the optional `langCode` query parameter.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let langCode = "langCode_example" // String | (Optional) The code for the signer language version of the disclosure that you want to retrieve. The following languages are supported:  - Arabic (`ar`) - Bulgarian (`bg`) - Czech (`cs`) - Chinese Simplified (`zh_CN`) - Chinese Traditional (`zh_TW`) - Croatian (`hr`) - Danish (`da`) - Dutch (`nl`) - English US (`en`) - English UK (`en_GB`) - Estonian (`et`) - Farsi (`fa`) - Finnish (`fi`) - French (`fr`) - French Canadian (`fr_CA`) - German (`de`) - Greek (`el`) - Hebrew (`he`) - Hindi (`hi`) - Hungarian (`hu`) - Bahasa Indonesian (`id`) - Italian (`it`) - Japanese (`ja`) - Korean (`ko`) - Latvian (`lv`) - Lithuanian (`lt`) - Bahasa Melayu (`ms`) - Norwegian (`no`) - Polish (`pl`) - Portuguese (`pt`) - Portuguese Brazil (`pt_BR`) - Romanian (`ro`) - Russian (`ru`) - Serbian (`sr`) - Slovak (`sk`) - Slovenian (`sl`) - Spanish (`es`) - Spanish Latin America (`es_MX`) - Swedish (`sv`) - Thai (`th`) - Turkish (`tr`) - Ukrainian (`uk`)  - Vietnamese (`vi`)  Additionally, you can automatically detect the browser language being used by the viewer and display the disclosure in that language by setting the value to `browser`. (optional)

// Gets the default Electronic Record and Signature Disclosure for an account.
AccountConsumerDisclosuresAPI.consumerDisclosureGetConsumerDisclosure(accountId: accountId, langCode: langCode).whenComplete { result in
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
 **langCode** | **String** | (Optional) The code for the signer language version of the disclosure that you want to retrieve. The following languages are supported:  - Arabic (&#x60;ar&#x60;) - Bulgarian (&#x60;bg&#x60;) - Czech (&#x60;cs&#x60;) - Chinese Simplified (&#x60;zh_CN&#x60;) - Chinese Traditional (&#x60;zh_TW&#x60;) - Croatian (&#x60;hr&#x60;) - Danish (&#x60;da&#x60;) - Dutch (&#x60;nl&#x60;) - English US (&#x60;en&#x60;) - English UK (&#x60;en_GB&#x60;) - Estonian (&#x60;et&#x60;) - Farsi (&#x60;fa&#x60;) - Finnish (&#x60;fi&#x60;) - French (&#x60;fr&#x60;) - French Canadian (&#x60;fr_CA&#x60;) - German (&#x60;de&#x60;) - Greek (&#x60;el&#x60;) - Hebrew (&#x60;he&#x60;) - Hindi (&#x60;hi&#x60;) - Hungarian (&#x60;hu&#x60;) - Bahasa Indonesian (&#x60;id&#x60;) - Italian (&#x60;it&#x60;) - Japanese (&#x60;ja&#x60;) - Korean (&#x60;ko&#x60;) - Latvian (&#x60;lv&#x60;) - Lithuanian (&#x60;lt&#x60;) - Bahasa Melayu (&#x60;ms&#x60;) - Norwegian (&#x60;no&#x60;) - Polish (&#x60;pl&#x60;) - Portuguese (&#x60;pt&#x60;) - Portuguese Brazil (&#x60;pt_BR&#x60;) - Romanian (&#x60;ro&#x60;) - Russian (&#x60;ru&#x60;) - Serbian (&#x60;sr&#x60;) - Slovak (&#x60;sk&#x60;) - Slovenian (&#x60;sl&#x60;) - Spanish (&#x60;es&#x60;) - Spanish Latin America (&#x60;es_MX&#x60;) - Swedish (&#x60;sv&#x60;) - Thai (&#x60;th&#x60;) - Turkish (&#x60;tr&#x60;) - Ukrainian (&#x60;uk&#x60;)  - Vietnamese (&#x60;vi&#x60;)  Additionally, you can automatically detect the browser language being used by the viewer and display the disclosure in that language by setting the value to &#x60;browser&#x60;. | [optional] 

### Return type

#### ConsumerDisclosureGetConsumerDisclosure

```swift
public enum ConsumerDisclosureGetConsumerDisclosure {
    case http200(value: AccountConsumerDisclosures?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: AccountConsumerDisclosures?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerDisclosureGetConsumerDisclosureLangCode**
```swift
    open class func consumerDisclosureGetConsumerDisclosureLangCode(accountId: String, langCode: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ConsumerDisclosureGetConsumerDisclosureLangCode>
```

Gets the Electronic Record and Signature Disclosure for an account.

Retrieves the HTML-formatted Electronic Record and Signature Disclosure (ERSD) associated with the account.   To set the language of the disclosure that you want to retrieve, use the optional `langCode` query parameter.  **Note**: The text of the default disclosure is always in English, but if you are using a custom disclosure and have created versions of it in different signer languages, you can use the `langCode` parameter to specify the signer language version that you want to retrieve.  

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let langCode = "langCode_example" // String | (Optional) The code for the signer language version of the disclosure that you want to retrieve. The following languages are supported:  - Arabic (`ar`) - Bulgarian (`bg`) - Czech (`cs`) - Chinese Simplified (`zh_CN`) - Chinese Traditional (`zh_TW`) - Croatian (`hr`) - Danish (`da`) - Dutch (`nl`) - English US (`en`) - English UK (`en_GB`) - Estonian (`et`) - Farsi (`fa`) - Finnish (`fi`) - French (`fr`) - French Canadian (`fr_CA`) - German (`de`) - Greek (`el`) - Hebrew (`he`) - Hindi (`hi`) - Hungarian (`hu`) - Bahasa Indonesian (`id`) - Italian (`it`) - Japanese (`ja`) - Korean (`ko`) - Latvian (`lv`) - Lithuanian (`lt`) - Bahasa Melayu (`ms`) - Norwegian (`no`) - Polish (`pl`) - Portuguese (`pt`) - Portuguese Brazil (`pt_BR`) - Romanian (`ro`) - Russian (`ru`) - Serbian (`sr`) - Slovak (`sk`) - Slovenian (`sl`) - Spanish (`es`) - Spanish Latin America (`es_MX`) - Swedish (`sv`) - Thai (`th`) - Turkish (`tr`) - Ukrainian (`uk`)  - Vietnamese (`vi`)  Additionally, you can automatically detect the browser language being used by the viewer and display the disclosure in that language by setting the value to `browser`.

// Gets the Electronic Record and Signature Disclosure for an account.
AccountConsumerDisclosuresAPI.consumerDisclosureGetConsumerDisclosureLangCode(accountId: accountId, langCode: langCode).whenComplete { result in
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
 **langCode** | **String** | (Optional) The code for the signer language version of the disclosure that you want to retrieve. The following languages are supported:  - Arabic (&#x60;ar&#x60;) - Bulgarian (&#x60;bg&#x60;) - Czech (&#x60;cs&#x60;) - Chinese Simplified (&#x60;zh_CN&#x60;) - Chinese Traditional (&#x60;zh_TW&#x60;) - Croatian (&#x60;hr&#x60;) - Danish (&#x60;da&#x60;) - Dutch (&#x60;nl&#x60;) - English US (&#x60;en&#x60;) - English UK (&#x60;en_GB&#x60;) - Estonian (&#x60;et&#x60;) - Farsi (&#x60;fa&#x60;) - Finnish (&#x60;fi&#x60;) - French (&#x60;fr&#x60;) - French Canadian (&#x60;fr_CA&#x60;) - German (&#x60;de&#x60;) - Greek (&#x60;el&#x60;) - Hebrew (&#x60;he&#x60;) - Hindi (&#x60;hi&#x60;) - Hungarian (&#x60;hu&#x60;) - Bahasa Indonesian (&#x60;id&#x60;) - Italian (&#x60;it&#x60;) - Japanese (&#x60;ja&#x60;) - Korean (&#x60;ko&#x60;) - Latvian (&#x60;lv&#x60;) - Lithuanian (&#x60;lt&#x60;) - Bahasa Melayu (&#x60;ms&#x60;) - Norwegian (&#x60;no&#x60;) - Polish (&#x60;pl&#x60;) - Portuguese (&#x60;pt&#x60;) - Portuguese Brazil (&#x60;pt_BR&#x60;) - Romanian (&#x60;ro&#x60;) - Russian (&#x60;ru&#x60;) - Serbian (&#x60;sr&#x60;) - Slovak (&#x60;sk&#x60;) - Slovenian (&#x60;sl&#x60;) - Spanish (&#x60;es&#x60;) - Spanish Latin America (&#x60;es_MX&#x60;) - Swedish (&#x60;sv&#x60;) - Thai (&#x60;th&#x60;) - Turkish (&#x60;tr&#x60;) - Ukrainian (&#x60;uk&#x60;)  - Vietnamese (&#x60;vi&#x60;)  Additionally, you can automatically detect the browser language being used by the viewer and display the disclosure in that language by setting the value to &#x60;browser&#x60;. | 

### Return type

#### ConsumerDisclosureGetConsumerDisclosureLangCode

```swift
public enum ConsumerDisclosureGetConsumerDisclosureLangCode {
    case http200(value: AccountConsumerDisclosures?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: AccountConsumerDisclosures?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerDisclosurePutConsumerDisclosure**
```swift
    open class func consumerDisclosurePutConsumerDisclosure(accountId: String, langCode: String, includeMetadata: String? = nil, consumerDisclosure: ConsumerDisclosure? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ConsumerDisclosurePutConsumerDisclosure>
```

Updates the Electronic Record and Signature Disclosure for an account.

Account administrators can use this method to perform the following tasks:  - Customize values in the default disclosure. - Switch to a custom disclosure that uses your own text and HTML formatting. - Change values in your existing consumer disclosure.   To specify the signer language version of the disclosure that you are updating, use the optional `langCode` query parameter.  **Note**: Only account administrators can use this method. Each time you change the disclosure content, all unsigned recipients of outstanding documents will be required to accept a new version.   ## Updating the default disclosure  When you update the default disclosure, you can edit all properties except for the following ones:  - `accountEsignId`: This property is read only. - `custom`: The default value is **false**. Editing this property causes the default disclosure to switch to a custom disclosure. - `esignAgreement`: This property is read only. - `esignText`: You cannot edit this property when `custom` is set to **false**. The API returns a 200 OK HTTP response, but does not update the `esignText`. - Metadata properties: These properties are read only.  **Note**: The text of the default disclosure is always in English.  ## Switching to a custom disclosure  To switch to a custom disclosure, set the `custom` property to **true** and customize the value for the `eSignText` property.   You can also edit all of the other properties except for the following ones:  - `accountEsignId`: This property is read only. - `esignAgreement`: This property is read only. - Metadata properties: These properties are read only.  **Note**: When you use a custom disclosure, you can create versions of it in different signer languages and se the `langCode` parameter to specify the signer language version that you are updating.  **Important**:  When you switch from a default to a custom disclosure, note the following information:  - You will not be able to return to using the default disclosure. - Only the disclosure for the currently selected signer language is saved. DocuSign will not automatically translate your custom disclosure. You must create a disclosure for each language that your signers use.  ## Updating a custom disclosure  When you update a custom disclosure, you can update all of the properties except for the following ones:  - `accountEsignId`: This property is read only.  - `esignAgreement`: This property is read only. - Metadata properties: These properties are read only.  **Important**: Only the disclosure for the currently selected signer language is saved. DocuSign will not automatically translate your custom disclosure. You must create a disclosure for each language that your signers use.  

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let langCode = "langCode_example" // String | (Optional) The code for the signer language version of the disclosure that you want to update. The following languages are supported:  - Arabic (`ar`) - Bulgarian (`bg`) - Czech (`cs`) - Chinese Simplified (`zh_CN`) - Chinese Traditional (`zh_TW`) - Croatian (`hr`) - Danish (`da`) - Dutch (`nl`) - English US (`en`) - English UK (`en_GB`) - Estonian (`et`) - Farsi (`fa`) - Finnish (`fi`) - French (`fr`) - French Canadian (`fr_CA`) - German (`de`) - Greek (`el`) - Hebrew (`he`) - Hindi (`hi`) - Hungarian (`hu`) - Bahasa Indonesian (`id`) - Italian (`it`) - Japanese (`ja`) - Korean (`ko`) - Latvian (`lv`) - Lithuanian (`lt`) - Bahasa Melayu (`ms`) - Norwegian (`no`) - Polish (`pl`) - Portuguese (`pt`) - Portuguese Brazil (`pt_BR`) - Romanian (`ro`) - Russian (`ru`) - Serbian (`sr`) - Slovak (`sk`) - Slovenian (`sl`) - Spanish (`es`) - Spanish Latin America (`es_MX`) - Swedish (`sv`) - Thai (`th`) - Turkish (`tr`) - Ukrainian (`uk`)  - Vietnamese (`vi`)  Additionally, you can automatically detect the browser language being used by the viewer and display the disclosure in that language by setting the value to `browser`.
let includeMetadata = "includeMetadata_example" // String | (Optional) When set to true, the response includes metadata indicating which properties are editable. (optional)
let consumerDisclosure = consumerDisclosure(accountEsignId: "accountEsignId_example", allowCDWithdraw: "allowCDWithdraw_example", allowCDWithdrawMetadata: nil, changeEmail: "changeEmail_example", changeEmailOther: "changeEmailOther_example", companyName: "companyName_example", companyPhone: "companyPhone_example", copyCostPerPage: "copyCostPerPage_example", copyFeeCollectionMethod: "copyFeeCollectionMethod_example", copyRequestEmail: "copyRequestEmail_example", custom: "custom_example", enableEsign: "enableEsign_example", esignAgreement: "esignAgreement_example", esignText: "esignText_example", languageCode: "languageCode_example", mustAgreeToEsign: "mustAgreeToEsign_example", pdfId: "pdfId_example", useBrand: "useBrand_example", useConsumerDisclosureWithinAccount: "useConsumerDisclosureWithinAccount_example", useConsumerDisclosureWithinAccountMetadata: nil, withdrawAddressLine1: "withdrawAddressLine1_example", withdrawAddressLine2: "withdrawAddressLine2_example", withdrawByEmail: "withdrawByEmail_example", withdrawByMail: "withdrawByMail_example", withdrawByPhone: "withdrawByPhone_example", withdrawCity: "withdrawCity_example", withdrawConsequences: "withdrawConsequences_example", withdrawEmail: "withdrawEmail_example", withdrawOther: "withdrawOther_example", withdrawPhone: "withdrawPhone_example", withdrawPostalCode: "withdrawPostalCode_example", withdrawState: "withdrawState_example") // ConsumerDisclosure |  (optional)

// Updates the Electronic Record and Signature Disclosure for an account.
AccountConsumerDisclosuresAPI.consumerDisclosurePutConsumerDisclosure(accountId: accountId, langCode: langCode, includeMetadata: includeMetadata, consumerDisclosure: consumerDisclosure).whenComplete { result in
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
 **langCode** | **String** | (Optional) The code for the signer language version of the disclosure that you want to update. The following languages are supported:  - Arabic (&#x60;ar&#x60;) - Bulgarian (&#x60;bg&#x60;) - Czech (&#x60;cs&#x60;) - Chinese Simplified (&#x60;zh_CN&#x60;) - Chinese Traditional (&#x60;zh_TW&#x60;) - Croatian (&#x60;hr&#x60;) - Danish (&#x60;da&#x60;) - Dutch (&#x60;nl&#x60;) - English US (&#x60;en&#x60;) - English UK (&#x60;en_GB&#x60;) - Estonian (&#x60;et&#x60;) - Farsi (&#x60;fa&#x60;) - Finnish (&#x60;fi&#x60;) - French (&#x60;fr&#x60;) - French Canadian (&#x60;fr_CA&#x60;) - German (&#x60;de&#x60;) - Greek (&#x60;el&#x60;) - Hebrew (&#x60;he&#x60;) - Hindi (&#x60;hi&#x60;) - Hungarian (&#x60;hu&#x60;) - Bahasa Indonesian (&#x60;id&#x60;) - Italian (&#x60;it&#x60;) - Japanese (&#x60;ja&#x60;) - Korean (&#x60;ko&#x60;) - Latvian (&#x60;lv&#x60;) - Lithuanian (&#x60;lt&#x60;) - Bahasa Melayu (&#x60;ms&#x60;) - Norwegian (&#x60;no&#x60;) - Polish (&#x60;pl&#x60;) - Portuguese (&#x60;pt&#x60;) - Portuguese Brazil (&#x60;pt_BR&#x60;) - Romanian (&#x60;ro&#x60;) - Russian (&#x60;ru&#x60;) - Serbian (&#x60;sr&#x60;) - Slovak (&#x60;sk&#x60;) - Slovenian (&#x60;sl&#x60;) - Spanish (&#x60;es&#x60;) - Spanish Latin America (&#x60;es_MX&#x60;) - Swedish (&#x60;sv&#x60;) - Thai (&#x60;th&#x60;) - Turkish (&#x60;tr&#x60;) - Ukrainian (&#x60;uk&#x60;)  - Vietnamese (&#x60;vi&#x60;)  Additionally, you can automatically detect the browser language being used by the viewer and display the disclosure in that language by setting the value to &#x60;browser&#x60;. | 
 **includeMetadata** | **String** | (Optional) When set to true, the response includes metadata indicating which properties are editable. | [optional] 
 **consumerDisclosure** | [**ConsumerDisclosure**](ConsumerDisclosure.md) |  | [optional] 

### Return type

#### ConsumerDisclosurePutConsumerDisclosure

```swift
public enum ConsumerDisclosurePutConsumerDisclosure {
    case http200(value: ConsumerDisclosure?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ConsumerDisclosure?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

