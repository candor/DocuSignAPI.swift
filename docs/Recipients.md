# Recipients

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**agents** | [Agent] | A list of agent recipients assigned to the documents. | [optional] 
**carbonCopies** | [CarbonCopy] | A list of carbon copy recipients assigned to the documents. | [optional] 
**certifiedDeliveries** | [CertifiedDelivery] | A complex type containing information on a recipient the must receive the completed documents for the envelope to be completed, but the recipient does not need to sign, initial, date, or add information to any of the documents. | [optional] 
**currentRoutingOrder** | **String** | The routing order of the current recipient. If this value equals a particular signer&#39;s routing order, it indicates that the envelope has been sent to that recipient, but he or she has not completed the required actions. | [optional] 
**editors** | [Editor] | A list of users who can edit the envelope. | [optional] 
**errorDetails** | [**ErrorDetails**](ErrorDetails.md) |  | [optional] 
**inPersonSigners** | [InPersonSigner] | Specifies a signer that is in the same physical location as a DocuSign user who will act as a Signing Host for the transaction. The recipient added is the Signing Host and new separate Signer Name field appears after Sign in person is selected. | [optional] 
**intermediaries** | [Intermediary] | Identifies a recipient that can, but is not required to, add name and email information for recipients at the same or subsequent level in the routing order (until subsequent Agents, Editors or Intermediaries recipient types are added). | [optional] 
**notaries** | [NotaryRecipient] |  | [optional] 
**recipientCount** | **String** | The number of recipients in the envelope. | [optional] 
**seals** | [SealSign] | A list of electronic seals to apply to documents. | [optional] 
**signers** | [Signer] | A list of signers on the envelope. | [optional] 
**witnesses** | [Witness] | A list of signers who act as witnesses on the envelope. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


