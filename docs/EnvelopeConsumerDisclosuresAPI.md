# EnvelopeConsumerDisclosuresAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**consumerDisclosureGetConsumerDisclosureEnvelopeIdRecipientId**](EnvelopeConsumerDisclosuresAPI.md#consumerdisclosuregetconsumerdisclosureenvelopeidrecipientid) | **GET** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/consumer_disclosure | Gets the default Electronic Record and Signature Disclosure for an envelope.
[**consumerDisclosureGetConsumerDisclosureEnvelopeIdRecipientIdLangCode**](EnvelopeConsumerDisclosuresAPI.md#consumerdisclosuregetconsumerdisclosureenvelopeidrecipientidlangcode) | **GET** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/recipients/{recipientId}/consumer_disclosure/{langCode} | Gets the Electronic Record and Signature Disclosure for a specific envelope recipient.


# **consumerDisclosureGetConsumerDisclosureEnvelopeIdRecipientId**
```swift
    open class func consumerDisclosureGetConsumerDisclosureEnvelopeIdRecipientId(accountId: String, envelopeId: String, recipientId: String, langCode: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ConsumerDisclosureGetConsumerDisclosureEnvelopeIdRecipientId>
```

Gets the default Electronic Record and Signature Disclosure for an envelope.

Retrieves the default, HTML-formatted Electronic Record and Signature Disclosure (ERSD) for the envelope that you specify.   This is the default ERSD disclosure that DocuSign provides for the convenience of U.S.-based customers only. This default disclosure is only valid for transactions between U.S.-based parties.  To set the language of the disclosure that you want to retrieve, use the optional `langCode` query parameter.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let recipientId = "recipientId_example" // String | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
let langCode = "langCode_example" // String | (Optional) The code for the signer language version of the disclosure that you want to retrieve. The following languages are supported:  - Arabic (`ar`) - Bulgarian (`bg`) - Czech (`cs`) - Chinese Simplified (`zh_CN`) - Chinese Traditional (`zh_TW`) - Croatian (`hr`) - Danish (`da`) - Dutch (`nl`) - English US (`en`) - English UK (`en_GB`) - Estonian (`et`) - Farsi (`fa`) - Finnish (`fi`) - French (`fr`) - French Canadian (`fr_CA`) - German (`de`) - Greek (`el`) - Hebrew (`he`) - Hindi (`hi`) - Hungarian (`hu`) - Bahasa Indonesian (`id`) - Italian (`it`) - Japanese (`ja`) - Korean (`ko`) - Latvian (`lv`) - Lithuanian (`lt`) - Bahasa Melayu (`ms`) - Norwegian (`no`) - Polish (`pl`) - Portuguese (`pt`) - Portuguese Brazil (`pt_BR`) - Romanian (`ro`) - Russian (`ru`) - Serbian (`sr`) - Slovak (`sk`) - Slovenian (`sl`) - Spanish (`es`) - Spanish Latin America (`es_MX`) - Swedish (`sv`) - Thai (`th`) - Turkish (`tr`) - Ukrainian (`uk`)  - Vietnamese (`vi`)  Additionally, you can automatically detect the browser language being used by the viewer and display the disclosure in that language by setting the value to `browser`. (optional)

// Gets the default Electronic Record and Signature Disclosure for an envelope.
EnvelopeConsumerDisclosuresAPI.consumerDisclosureGetConsumerDisclosureEnvelopeIdRecipientId(accountId: accountId, envelopeId: envelopeId, recipientId: recipientId, langCode: langCode).whenComplete { result in
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
 **langCode** | **String** | (Optional) The code for the signer language version of the disclosure that you want to retrieve. The following languages are supported:  - Arabic (&#x60;ar&#x60;) - Bulgarian (&#x60;bg&#x60;) - Czech (&#x60;cs&#x60;) - Chinese Simplified (&#x60;zh_CN&#x60;) - Chinese Traditional (&#x60;zh_TW&#x60;) - Croatian (&#x60;hr&#x60;) - Danish (&#x60;da&#x60;) - Dutch (&#x60;nl&#x60;) - English US (&#x60;en&#x60;) - English UK (&#x60;en_GB&#x60;) - Estonian (&#x60;et&#x60;) - Farsi (&#x60;fa&#x60;) - Finnish (&#x60;fi&#x60;) - French (&#x60;fr&#x60;) - French Canadian (&#x60;fr_CA&#x60;) - German (&#x60;de&#x60;) - Greek (&#x60;el&#x60;) - Hebrew (&#x60;he&#x60;) - Hindi (&#x60;hi&#x60;) - Hungarian (&#x60;hu&#x60;) - Bahasa Indonesian (&#x60;id&#x60;) - Italian (&#x60;it&#x60;) - Japanese (&#x60;ja&#x60;) - Korean (&#x60;ko&#x60;) - Latvian (&#x60;lv&#x60;) - Lithuanian (&#x60;lt&#x60;) - Bahasa Melayu (&#x60;ms&#x60;) - Norwegian (&#x60;no&#x60;) - Polish (&#x60;pl&#x60;) - Portuguese (&#x60;pt&#x60;) - Portuguese Brazil (&#x60;pt_BR&#x60;) - Romanian (&#x60;ro&#x60;) - Russian (&#x60;ru&#x60;) - Serbian (&#x60;sr&#x60;) - Slovak (&#x60;sk&#x60;) - Slovenian (&#x60;sl&#x60;) - Spanish (&#x60;es&#x60;) - Spanish Latin America (&#x60;es_MX&#x60;) - Swedish (&#x60;sv&#x60;) - Thai (&#x60;th&#x60;) - Turkish (&#x60;tr&#x60;) - Ukrainian (&#x60;uk&#x60;)  - Vietnamese (&#x60;vi&#x60;)  Additionally, you can automatically detect the browser language being used by the viewer and display the disclosure in that language by setting the value to &#x60;browser&#x60;. | [optional] 

### Return type

#### ConsumerDisclosureGetConsumerDisclosureEnvelopeIdRecipientId

```swift
public enum ConsumerDisclosureGetConsumerDisclosureEnvelopeIdRecipientId {
    case http200(value: ConsumerDisclosure?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ConsumerDisclosure?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **consumerDisclosureGetConsumerDisclosureEnvelopeIdRecipientIdLangCode**
```swift
    open class func consumerDisclosureGetConsumerDisclosureEnvelopeIdRecipientIdLangCode(accountId: String, envelopeId: String, langCode: String, recipientId: String, langCode2: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<ConsumerDisclosureGetConsumerDisclosureEnvelopeIdRecipientIdLangCode>
```

Gets the Electronic Record and Signature Disclosure for a specific envelope recipient.

Retrieves the HTML-formatted Electronic Record and Signature Disclosure (ERSD) for the envelope recipient that you specify. This disclosure might differ from the account-level disclosure, based on the signing brand applied to the envelope and the recipient's language settings.  To set the language of the disclosure that you want to retrieve, specify the `langCode` as either a path or query parameter.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let langCode = "langCode_example" // String | (Optional) The code for the signer language version of the disclosure that you want to retrieve, as a path parameter. The following languages are supported:  - Arabic (`ar`) - Bulgarian (`bg`) - Czech (`cs`) - Chinese Simplified (`zh_CN`) - Chinese Traditional (`zh_TW`) - Croatian (`hr`) - Danish (`da`) - Dutch (`nl`) - English US (`en`) - English UK (`en_GB`) - Estonian (`et`) - Farsi (`fa`) - Finnish (`fi`) - French (`fr`) - French Canadian (`fr_CA`) - German (`de`) - Greek (`el`) - Hebrew (`he`) - Hindi (`hi`) - Hungarian (`hu`) - Bahasa Indonesian (`id`) - Italian (`it`) - Japanese (`ja`) - Korean (`ko`) - Latvian (`lv`) - Lithuanian (`lt`) - Bahasa Melayu (`ms`) - Norwegian (`no`) - Polish (`pl`) - Portuguese (`pt`) - Portuguese Brazil (`pt_BR`) - Romanian (`ro`) - Russian (`ru`) - Serbian (`sr`) - Slovak (`sk`) - Slovenian (`sl`) - Spanish (`es`) - Spanish Latin America (`es_MX`) - Swedish (`sv`) - Thai (`th`) - Turkish (`tr`) - Ukrainian (`uk`)  - Vietnamese (`vi`)  Additionally, you can automatically detect the browser language being used by the viewer and display the disclosure in that language by setting the value to `browser`.
let recipientId = "recipientId_example" // String | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`.
let langCode2 = "langCode2_example" // String | (Optional) The code for the signer language version of the disclosure that you want to retrieve, as a query parameter. The following languages are supported:  - Arabic (`ar`) - Bulgarian (`bg`) - Czech (`cs`) - Chinese Simplified (`zh_CN`) - Chinese Traditional (`zh_TW`) - Croatian (`hr`) - Danish (`da`) - Dutch (`nl`) - English US (`en`) - English UK (`en_GB`) - Estonian (`et`) - Farsi (`fa`) - Finnish (`fi`) - French (`fr`) - French Canadian (`fr_CA`) - German (`de`) - Greek (`el`) - Hebrew (`he`) - Hindi (`hi`) - Hungarian (`hu`) - Bahasa Indonesian (`id`) - Italian (`it`) - Japanese (`ja`) - Korean (`ko`) - Latvian (`lv`) - Lithuanian (`lt`) - Bahasa Melayu (`ms`) - Norwegian (`no`) - Polish (`pl`) - Portuguese (`pt`) - Portuguese Brazil (`pt_BR`) - Romanian (`ro`) - Russian (`ru`) - Serbian (`sr`) - Slovak (`sk`) - Slovenian (`sl`) - Spanish (`es`) - Spanish Latin America (`es_MX`) - Swedish (`sv`) - Thai (`th`) - Turkish (`tr`) - Ukrainian (`uk`)  - Vietnamese (`vi`)  Additionally, you can automatically detect the browser language being used by the viewer and display the disclosure in that language by setting the value to `browser`. (optional)

// Gets the Electronic Record and Signature Disclosure for a specific envelope recipient.
EnvelopeConsumerDisclosuresAPI.consumerDisclosureGetConsumerDisclosureEnvelopeIdRecipientIdLangCode(accountId: accountId, envelopeId: envelopeId, langCode: langCode, recipientId: recipientId, langCode2: langCode2).whenComplete { result in
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
 **langCode** | **String** | (Optional) The code for the signer language version of the disclosure that you want to retrieve, as a path parameter. The following languages are supported:  - Arabic (&#x60;ar&#x60;) - Bulgarian (&#x60;bg&#x60;) - Czech (&#x60;cs&#x60;) - Chinese Simplified (&#x60;zh_CN&#x60;) - Chinese Traditional (&#x60;zh_TW&#x60;) - Croatian (&#x60;hr&#x60;) - Danish (&#x60;da&#x60;) - Dutch (&#x60;nl&#x60;) - English US (&#x60;en&#x60;) - English UK (&#x60;en_GB&#x60;) - Estonian (&#x60;et&#x60;) - Farsi (&#x60;fa&#x60;) - Finnish (&#x60;fi&#x60;) - French (&#x60;fr&#x60;) - French Canadian (&#x60;fr_CA&#x60;) - German (&#x60;de&#x60;) - Greek (&#x60;el&#x60;) - Hebrew (&#x60;he&#x60;) - Hindi (&#x60;hi&#x60;) - Hungarian (&#x60;hu&#x60;) - Bahasa Indonesian (&#x60;id&#x60;) - Italian (&#x60;it&#x60;) - Japanese (&#x60;ja&#x60;) - Korean (&#x60;ko&#x60;) - Latvian (&#x60;lv&#x60;) - Lithuanian (&#x60;lt&#x60;) - Bahasa Melayu (&#x60;ms&#x60;) - Norwegian (&#x60;no&#x60;) - Polish (&#x60;pl&#x60;) - Portuguese (&#x60;pt&#x60;) - Portuguese Brazil (&#x60;pt_BR&#x60;) - Romanian (&#x60;ro&#x60;) - Russian (&#x60;ru&#x60;) - Serbian (&#x60;sr&#x60;) - Slovak (&#x60;sk&#x60;) - Slovenian (&#x60;sl&#x60;) - Spanish (&#x60;es&#x60;) - Spanish Latin America (&#x60;es_MX&#x60;) - Swedish (&#x60;sv&#x60;) - Thai (&#x60;th&#x60;) - Turkish (&#x60;tr&#x60;) - Ukrainian (&#x60;uk&#x60;)  - Vietnamese (&#x60;vi&#x60;)  Additionally, you can automatically detect the browser language being used by the viewer and display the disclosure in that language by setting the value to &#x60;browser&#x60;. | 
 **recipientId** | **String** | A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each &#x60;recipientId&#x60; must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a &#x60;recipientId&#x60; of &#x60;1&#x60;. | 
 **langCode2** | **String** | (Optional) The code for the signer language version of the disclosure that you want to retrieve, as a query parameter. The following languages are supported:  - Arabic (&#x60;ar&#x60;) - Bulgarian (&#x60;bg&#x60;) - Czech (&#x60;cs&#x60;) - Chinese Simplified (&#x60;zh_CN&#x60;) - Chinese Traditional (&#x60;zh_TW&#x60;) - Croatian (&#x60;hr&#x60;) - Danish (&#x60;da&#x60;) - Dutch (&#x60;nl&#x60;) - English US (&#x60;en&#x60;) - English UK (&#x60;en_GB&#x60;) - Estonian (&#x60;et&#x60;) - Farsi (&#x60;fa&#x60;) - Finnish (&#x60;fi&#x60;) - French (&#x60;fr&#x60;) - French Canadian (&#x60;fr_CA&#x60;) - German (&#x60;de&#x60;) - Greek (&#x60;el&#x60;) - Hebrew (&#x60;he&#x60;) - Hindi (&#x60;hi&#x60;) - Hungarian (&#x60;hu&#x60;) - Bahasa Indonesian (&#x60;id&#x60;) - Italian (&#x60;it&#x60;) - Japanese (&#x60;ja&#x60;) - Korean (&#x60;ko&#x60;) - Latvian (&#x60;lv&#x60;) - Lithuanian (&#x60;lt&#x60;) - Bahasa Melayu (&#x60;ms&#x60;) - Norwegian (&#x60;no&#x60;) - Polish (&#x60;pl&#x60;) - Portuguese (&#x60;pt&#x60;) - Portuguese Brazil (&#x60;pt_BR&#x60;) - Romanian (&#x60;ro&#x60;) - Russian (&#x60;ru&#x60;) - Serbian (&#x60;sr&#x60;) - Slovak (&#x60;sk&#x60;) - Slovenian (&#x60;sl&#x60;) - Spanish (&#x60;es&#x60;) - Spanish Latin America (&#x60;es_MX&#x60;) - Swedish (&#x60;sv&#x60;) - Thai (&#x60;th&#x60;) - Turkish (&#x60;tr&#x60;) - Ukrainian (&#x60;uk&#x60;)  - Vietnamese (&#x60;vi&#x60;)  Additionally, you can automatically detect the browser language being used by the viewer and display the disclosure in that language by setting the value to &#x60;browser&#x60;. | [optional] 

### Return type

#### ConsumerDisclosureGetConsumerDisclosureEnvelopeIdRecipientIdLangCode

```swift
public enum ConsumerDisclosureGetConsumerDisclosureEnvelopeIdRecipientIdLangCode {
    case http200(value: ConsumerDisclosure?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: ConsumerDisclosure?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

