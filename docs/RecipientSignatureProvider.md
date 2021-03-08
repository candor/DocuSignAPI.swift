# RecipientSignatureProvider

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sealDocumentsWithTabsOnly** | **String** | By default, electronic seals apply on all documents in an envelope. If any of the documents has a &#x60;signHere&#x60; tab, then a visual representation of the electronic seal will show up in the final document. If not, the electronic seal will be visible in the metadata but not in the content of the document.  To apply electronic seals on specific documents only, you must enable the  &#x60;sealDocumentsWithTabsOnly&#x60; parameter. In this case, Electronic Seal applies only on documents that have &#x60;signHere&#x60; tabs set for the Electronic Seal recipient. Other documents won&#39;t be sealed.  | [optional] 
**sealName** | **String** | Indicates the name of the electronic seal to apply on documents.  | [optional] 
**signatureProviderName** | **String** | The name of an Electronic or Standards Based Signature (digital signature) provider for the signer to use. For details, see [the current provider list](https://developers.docusign.com/esign-rest-api/guides/standards-based-signatures). You can also retrieve the list by using the [AccountSignatureProviders::List](https://developers.docusign.com/esign-rest-api/reference/Accounts/AccountSignatureProviders/list/) method.  Example: &#x60;universalsignaturepen_default&#x60;   | [optional] 
**signatureProviderNameMetadata** | [**PropertyMetadata**](PropertyMetadata.md) |  | [optional] 
**signatureProviderOptions** | [**RecipientSignatureProviderOptions**](RecipientSignatureProviderOptions.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


