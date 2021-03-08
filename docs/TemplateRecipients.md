# TemplateRecipients

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agents** | [[**Agent**](Agent.md)] | A list of agent recipients assigned to the documents. | [optional] 
**carbonCopies** | [[**CarbonCopy**](CarbonCopy.md)] | A list of carbon copy recipients assigned to the documents. | [optional] 
**certifiedDeliveries** | [[**CertifiedDelivery**](CertifiedDelivery.md)] | A complex type containing information on a recipient the must receive the completed documents for the envelope to be completed, but the recipient does not need to sign, initial, date, or add information to any of the documents. | [optional] 
**currentRoutingOrder** | **String** | The routing order of the current recipient. If this value equals a particular signer&#39;s routing order, it indicates that the envelope has been sent to that recipient, but he or she has not completed the required actions. | [optional] 
**editors** | [[**Editor**](Editor.md)] | A complex type defining the management and access rights of a recipient assigned assigned as an editor on the document. | [optional] 
**errorDetails** | [**ErrorDetails**](ErrorDetails.md) |  | [optional] 
**inPersonSigners** | [[**InPersonSigner**](InPersonSigner.md)] | Specifies a signer that is in the same physical location as a DocuSign user who will act as a Signing Host for the transaction. The recipient added is the Signing Host and new separate Signer Name field appears after Sign in person is selected. | [optional] 
**intermediaries** | [[**Intermediary**](Intermediary.md)] | Identifies a recipient that can, but is not required to, add name and email information for recipients at the same or subsequent level in the routing order (until subsequent Agents, Editors or Intermediaries recipient types are added). | [optional] 
**notaries** | [[**NotaryRecipient**](NotaryRecipient.md)] |  | [optional] 
**recipientCount** | **String** | The number of recipients in the envelope. | [optional] 
**seals** | [[**SealSign**](SealSign.md)] | Specifies one or more electronic seals to apply on documents. For more information on Electronic Seals , see https://support.docusign.com/en/guides/ndse-user-guide-apply-electronic-seals | [optional] 
**signers** | [[**Signer**](Signer.md)] | A list of signers on the envelope. | [optional] 
**witnesses** | [[**Witness**](Witness.md)] | A list of signers who act as witnesses on the envelope. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


