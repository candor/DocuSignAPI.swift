# DirectDebitProcessorInformation

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bankBranchCode** | **String** | The branch code of the bank used for direct debit.  Maximum Length: 10 characters. | [optional] 
**bankCheckDigit** | **String** | The check digit or digits in the international bank account number. These digits are used to confirm the validity of the account.  Maximum Length: 4 characters. | [optional] 
**bankCode** | **String** | The code or number that identifies the bank. This is also known as the sort code.  Example: &#x60;200000&#x60;  Maximum Length: 18 characters. | [optional] 
**bankName** | **String** | The name of the direct debit bank.  Maximum Length: 80 characters. | [optional] 
**bankTransferAccountName** | **String** | The name on the direct debit bank account. This field is required for POST and PUT requests.  Maximum Length: 60 characters. | [optional] 
**bankTransferAccountNumber** | **String** | The customer&#39;s bank account number. This value will be obfuscated. This field is required for POST and PUT requests.  Maximum Length: 30 characters. | [optional] 
**bankTransferType** | **String** | Specifies the type of direct debit transfer. The value of this field is dependent on the user&#39;s country. This field is required for POST and PUT requests. Possible values are:  - &#x60;DirectDebitUK&#x60; - &#x60;DirectEntryAU&#x60; - &#x60;SEPA&#x60; | [optional] 
**country** | **String** | The user&#39;s country. The system populates this value automatically.   | [optional] 
**email** | **String** | The email address of the user who is associated with the payment method. This field is required for POST and PUT requests.  Maximum Length: 80 characters. | [optional] 
**firstName** | **String** | The user&#39;s first name. This field is required for POST and PUT requests.  Maximum Length: 30 characters. | [optional] 
**iBAN** | **String** | The International Bank Account Number (IBAN).   Example: &#x60;DE89370400440532013000&#x60;  For more information, see [PeopleSoft&#39;s guide to Setting Up Banks](https://docs.oracle.com/cd/E16365_01/fscm91pbr0/eng/psbooks/fsbk/chapter.htm?File&#x3D;fsbk/htm/fsbk03.htm).  **Note**: This number will be obfuscated. | [optional] 
**lastName** | **String** | The user&#39;s last name. This field is required for POST and PUT requests.  Maximum Length: 70 characters. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


