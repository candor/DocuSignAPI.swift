# Contacts

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cloudProvider** | **String** | The cloud service that provided the contact. Valid values are:  - &#x60;rooms&#x60; - &#x60;docusignCore&#x60; (default)  &lt;!-- Future:  - &#x60;Box&#x60; - &#x60;GoogleDrive&#x60; - &#x60;Dropbox&#x60; - &#x60;SalesForce&#x60; - &#x60;SkyDrive&#x60;  --&gt; | [optional] 
**cloudProviderContainerId** | **String** | The id of the container at the cloud provider. For example, this might be the room id for a DocuSign Transaction Room. | [optional] 
**contactId** | **String** | The id of a contact person in the account&#39;s address book. | [optional] 
**contactPhoneNumbers** | [ContactPhoneNumber] | A list of the contact&#39;s phone numbers.  **Note**: The phone numbers associated with shared contacts do not display to users other than the user who added the contact. Additionally, in the following scenarios, the phone number of a shared contact does not populate automatically for anyone other than the user who added the contact:  - Sending an envelope by using SMS - Using phone authentication  You must ask the user who added the contact for the phone number and then manually enter it into the authentication box. | [optional] 
**contactUri** | **String** | The URI for retrieving information about the contact. | [optional] 
**emails** | **[String]** | The email address or addresses associated with the contact. | [optional] 
**errorDetails** | [**ErrorDetails**](ErrorDetails.md) |  | [optional] 
**isOwner** | **Bool** | When **true**, the current user is the owner of the contact. | [optional] 
**name** | **String** | The name of the contact. | [optional] 
**organization** | **String** | The name of the contact&#39;s organization. | [optional] 
**shared** | **String** | When set to **true**, the contact is shared. For more information, see [Shared Contacts](https://support.docusign.com/guides/ndse-user-guide-manage-contacts).  **Note**: The phone numbers associated with shared contacts do not display to users other than the user who added the contact. Additionally, in the following scenarios, the phone number of a shared contact does not populate automatically for anyone other than the user who added the contact:  - Sending an envelope by using SMS - Using phone authentication  You must ask the user who added the contact for the phone number and then manually enter it into the authentication box. | [optional] 
**signingGroup** | **String** | If the contact belongs to a signing group, this property contains the &#x60;signingGroupId&#x60;. | [optional] 
**signingGroupName** | **String** | The name of the signing group that the contact belongs to. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


