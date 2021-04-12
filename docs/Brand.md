# Brand

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**brandCompany** | **String** | The name of the company associated with the brand. | [optional] 
**brandId** | **String** | The id of the brand. | [optional] 
**brandLanguages** | **[String]** | An array of two-letter codes for the languages that you want to use with the brand. The supported languages are:  - Arabic (&#x60;ar&#x60;) - Armenian (&#x60;hy&#x60;) - Bahasa Indonesia (&#x60;id&#x60;) - Bahasa Malay (&#x60;ms&#x60;) - Bulgarian (&#x60;bg&#x60;) - Chinese Simplified (&#x60;zh_CN&#x60;) - Chinese Traditional (&#x60;zh_TW&#x60;) - Croatian (&#x60;hr&#x60;) - Czech (&#x60;cs&#x60;) - Danish (&#x60;da&#x60;) - Dutch (&#x60;nl&#x60;) - English UK (&#x60;en_GB&#x60;) - English US (&#x60;en&#x60;) - Estonian (&#x60;et&#x60;) - Farsi (&#x60;fa&#x60;) - Finnish (&#x60;fi&#x60;) - French (&#x60;fr&#x60;) - French Canada (&#x60;fr_CA&#x60;) - German (&#x60;de&#x60;) - Greek (&#x60;el&#x60;) - Hebrew (&#x60;he&#x60;) - Hindi (&#x60;hi&#x60;) - Hungarian (&#x60;hu&#x60;) - Italian (&#x60;it&#x60;) - Japanese (&#x60;ja&#x60;) - Korean (&#x60;ko&#x60;) - Latvian (&#x60;lv&#x60;) - Lithuanian (&#x60;lt&#x60;) - Norwegian (&#x60;no&#x60;) - Polish (&#x60;pl&#x60;) - Portuguese (&#x60;pt&#x60;) - Portuguese Brasil (&#x60;pt_BR&#x60;) - Romanian (&#x60;ro&#x60;) - Russian (&#x60;ru&#x60;) - Serbian (&#x60;sr&#x60;) - Slovak (&#x60;sk&#x60;) - Slovenian (&#x60;sl&#x60;) - Spanish (&#x60;es&#x60;) - Spanish Latin America (&#x60;es_MX&#x60;) - Swedish (&#x60;sv&#x60;) - Thai (&#x60;th&#x60;) - Turkish (&#x60;tr&#x60;) - Ukranian (&#x60;uk&#x60;) - Vietnamese (&#x60;vi&#x60;) | [optional] 
**brandName** | **String** | The name of the brand. | [optional] 
**colors** | [NameValue] | An array of name-value pairs specifying the colors that the brand uses for the following elements:  - Button background - Button text - Header background - Header text | [optional] 
**defaultBrandLanguage** | **String** | The two-letter code for the language that you want to use as the brand default. The supported languages are:  - Arabic (&#x60;ar&#x60;) - Armenian (&#x60;hy&#x60;) - Bahasa Indonesia (&#x60;id&#x60;) - Bahasa Malay (&#x60;ms&#x60;) - Bulgarian (&#x60;bg&#x60;) - Chinese Simplified (&#x60;zh_CN&#x60;) - Chinese Traditional (&#x60;zh_TW&#x60;) - Croatian (&#x60;hr&#x60;) - Czech (&#x60;cs&#x60;) - Danish (&#x60;da&#x60;) - Dutch (&#x60;nl&#x60;) - English UK (&#x60;en_GB&#x60;) - English US (&#x60;en&#x60;) - Estonian (&#x60;et&#x60;) - Farsi (&#x60;fa&#x60;) - Finnish (&#x60;fi&#x60;) - French (&#x60;fr&#x60;) - French Canada (&#x60;fr_CA&#x60;) - German (&#x60;de&#x60;) - Greek (&#x60;el&#x60;) - Hebrew (&#x60;he&#x60;) - Hindi (&#x60;hi&#x60;) - Hungarian (&#x60;hu&#x60;) - Italian (&#x60;it&#x60;) - Japanese (&#x60;ja&#x60;) - Korean (&#x60;ko&#x60;) - Latvian (&#x60;lv&#x60;) - Lithuanian (&#x60;lt&#x60;) - Norwegian (&#x60;no&#x60;) - Polish (&#x60;pl&#x60;) - Portuguese (&#x60;pt&#x60;) - Portuguese Brasil (&#x60;pt_BR&#x60;) - Romanian (&#x60;ro&#x60;) - Russian (&#x60;ru&#x60;) - Serbian (&#x60;sr&#x60;) - Slovak (&#x60;sk&#x60;) - Slovenian (&#x60;sl&#x60;) - Spanish (&#x60;es&#x60;) - Spanish Latin America (&#x60;es_MX&#x60;) - Swedish (&#x60;sv&#x60;) - Thai (&#x60;th&#x60;) - Turkish (&#x60;tr&#x60;) - Ukranian (&#x60;uk&#x60;) - Vietnamese (&#x60;vi&#x60;) | [optional] 
**emailContent** | [BrandEmailContent] | Deprecated. | [optional] 
**errorDetails** | [**ErrorDetails**](ErrorDetails.md) |  | [optional] 
**isOverridingCompanyName** | **Bool** | When **true**, the &#x60;brandCompany&#x60; property is overriding the name of the company in the account settings. | [optional] 
**isSendingDefault** | **Bool** | When **true**, the sending brand is the default brand for sending new envelopes. | [optional] 
**isSigningDefault** | **Bool** | When **true**, the siging brand is the default brand for the signing experience. | [optional] 
**landingPages** | [NameValue] | An array of name/value pairs specifying the pages to which the user is redirected after the following events occur:  - Signing Completed - Viewed Exit - Finish Later - Decline - Session Timeout - Authentication Failure  If you do not specify landing pages, the DocuSign default pages are used. | [optional] 
**links** | [BrandLink] | An array of &#x60;brandLink&#x60; objects that contain information about the links that the brand uses. | [optional] 
**logos** | [**BrandLogos**](BrandLogos.md) |  | [optional] 
**resources** | [**BrandResourceUrls**](BrandResourceUrls.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


