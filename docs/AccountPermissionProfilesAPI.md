# AccountPermissionProfilesAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**permissionProfilesDeletePermissionProfiles**](AccountPermissionProfilesAPI.md#permissionprofilesdeletepermissionprofiles) | **DELETE** /v2.1/accounts/{accountId}/permission_profiles/{permissionProfileId} | Deletes a permission profile from an account.
[**permissionProfilesGetPermissionProfile**](AccountPermissionProfilesAPI.md#permissionprofilesgetpermissionprofile) | **GET** /v2.1/accounts/{accountId}/permission_profiles/{permissionProfileId} | Returns a permission profile for an account.
[**permissionProfilesGetPermissionProfiles**](AccountPermissionProfilesAPI.md#permissionprofilesgetpermissionprofiles) | **GET** /v2.1/accounts/{accountId}/permission_profiles | Gets a list of permission profiles.
[**permissionProfilesPostPermissionProfiles**](AccountPermissionProfilesAPI.md#permissionprofilespostpermissionprofiles) | **POST** /v2.1/accounts/{accountId}/permission_profiles | Creates a new permission profile for an account.
[**permissionProfilesPutPermissionProfiles**](AccountPermissionProfilesAPI.md#permissionprofilesputpermissionprofiles) | **PUT** /v2.1/accounts/{accountId}/permission_profiles/{permissionProfileId} | Updates a permission profile.


# **permissionProfilesDeletePermissionProfiles**
```swift
    open class func permissionProfilesDeletePermissionProfiles(accountId: String, permissionProfileId: String, moveUsersTo: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<PermissionProfilesDeletePermissionProfiles>
```

Deletes a permission profile from an account.

This method deletes a permission profile from an account.  To delete a permission profile, it must not have any users associated with it. When you use this method to delete a permission profile, you can reassign the users associated with it to a new permission profile at the same time by using the `move_users_to` query parameter.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let permissionProfileId = "permissionProfileId_example" // String | The ID of the permission profile. Possible values include:  - `2301416` (for the `DocuSign Viewer` profile) - `2301415` (for the `DocuSign Sender` profile) - `2301414` (for the `Account Administrator` profile)  In addition, any custom permission profiles associated with your account will have an automatically generated `permissionProfileId`.
let moveUsersTo = "moveUsersTo_example" // String |  (optional)

// Deletes a permission profile from an account.
AccountPermissionProfilesAPI.permissionProfilesDeletePermissionProfiles(accountId: accountId, permissionProfileId: permissionProfileId, moveUsersTo: moveUsersTo).whenComplete { result in
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
 **permissionProfileId** | **String** | The ID of the permission profile. Possible values include:  - &#x60;2301416&#x60; (for the &#x60;DocuSign Viewer&#x60; profile) - &#x60;2301415&#x60; (for the &#x60;DocuSign Sender&#x60; profile) - &#x60;2301414&#x60; (for the &#x60;Account Administrator&#x60; profile)  In addition, any custom permission profiles associated with your account will have an automatically generated &#x60;permissionProfileId&#x60;. | 
 **moveUsersTo** | **String** |  | [optional] 

### Return type

#### PermissionProfilesDeletePermissionProfiles

```swift
public enum PermissionProfilesDeletePermissionProfiles {
    case http200(value: Void?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Void?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **permissionProfilesGetPermissionProfile**
```swift
    open class func permissionProfilesGetPermissionProfile(accountId: String, permissionProfileId: String, include: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<PermissionProfilesGetPermissionProfile>
```

Returns a permission profile for an account.

This method returns information about a specific permission profile that is associated with an account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let permissionProfileId = "permissionProfileId_example" // String | The ID of the permission profile. Possible values include:  - `2301416` (for the `DocuSign Viewer` profile) - `2301415` (for the `DocuSign Sender` profile) - `2301414` (for the `Account Administrator` profile)  In addition, any custom permission profiles associated with your account will have an automatically generated `permissionProfileId`.
let include = "include_example" // String | A comma-separated list of additional properties to return in the response. The only valid value for this request is `metadata`, which returns metadata indicating whether the properties associated with the account permission profile are editable. (optional)

// Returns a permission profile for an account.
AccountPermissionProfilesAPI.permissionProfilesGetPermissionProfile(accountId: accountId, permissionProfileId: permissionProfileId, include: include).whenComplete { result in
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
 **permissionProfileId** | **String** | The ID of the permission profile. Possible values include:  - &#x60;2301416&#x60; (for the &#x60;DocuSign Viewer&#x60; profile) - &#x60;2301415&#x60; (for the &#x60;DocuSign Sender&#x60; profile) - &#x60;2301414&#x60; (for the &#x60;Account Administrator&#x60; profile)  In addition, any custom permission profiles associated with your account will have an automatically generated &#x60;permissionProfileId&#x60;. | 
 **include** | **String** | A comma-separated list of additional properties to return in the response. The only valid value for this request is &#x60;metadata&#x60;, which returns metadata indicating whether the properties associated with the account permission profile are editable. | [optional] 

### Return type

#### PermissionProfilesGetPermissionProfile

```swift
public enum PermissionProfilesGetPermissionProfile {
    case http200(value: PermissionProfile?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: PermissionProfile?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **permissionProfilesGetPermissionProfiles**
```swift
    open class func permissionProfilesGetPermissionProfiles(accountId: String, include: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<PermissionProfilesGetPermissionProfiles>
```

Gets a list of permission profiles.

This method returns a list of permission profiles that are associated with an account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let include = "include_example" // String | A comma-separated list of additional properties to return in the response. Valid values are:  - `user_count`: The total number of users associated with the permission profile. - `closed_users`: Includes closed users in the `user_count`. - `account_management`: The account management settings. - `metadata`: Metadata indicating whether the properties associated with the account permission profile are editable.  Example: `user_count,closed_users`  (optional)

// Gets a list of permission profiles.
AccountPermissionProfilesAPI.permissionProfilesGetPermissionProfiles(accountId: accountId, include: include).whenComplete { result in
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
 **include** | **String** | A comma-separated list of additional properties to return in the response. Valid values are:  - &#x60;user_count&#x60;: The total number of users associated with the permission profile. - &#x60;closed_users&#x60;: Includes closed users in the &#x60;user_count&#x60;. - &#x60;account_management&#x60;: The account management settings. - &#x60;metadata&#x60;: Metadata indicating whether the properties associated with the account permission profile are editable.  Example: &#x60;user_count,closed_users&#x60;  | [optional] 

### Return type

#### PermissionProfilesGetPermissionProfiles

```swift
public enum PermissionProfilesGetPermissionProfiles {
    case http200(value: PermissionProfileInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: PermissionProfileInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **permissionProfilesPostPermissionProfiles**
```swift
    open class func permissionProfilesPostPermissionProfiles(accountId: String, include: String? = nil, permissionProfile: PermissionProfile? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<PermissionProfilesPostPermissionProfiles>
```

Creates a new permission profile for an account.

This method creates a new permission profile for an account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let include = "include_example" // String | A comma-separated list of additional properties to return in the response. The only valid value for this request is `metadata`, which returns metadata indicating whether the properties associated with the account permission profile are editable. (optional)
let permissionProfile = permissionProfile(modifiedByUsername: "modifiedByUsername_example", modifiedDateTime: "modifiedDateTime_example", permissionProfileId: "permissionProfileId_example", permissionProfileName: "permissionProfileName_example", settings: accountRoleSettings(allowAccountManagement: "allowAccountManagement_example", allowAccountManagementMetadata: settingsMetadata(is21CFRPart11: "is21CFRPart11_example", options: ["options_example"], rights: "rights_example", uiHint: "uiHint_example", uiOrder: "uiOrder_example", uiType: "uiType_example"), allowApiAccess: "allowApiAccess_example", allowApiAccessMetadata: nil, allowApiAccessToAccount: "allowApiAccessToAccount_example", allowApiAccessToAccountMetadata: nil, allowApiSendingOnBehalfOfOthers: "allowApiSendingOnBehalfOfOthers_example", allowApiSendingOnBehalfOfOthersMetadata: nil, allowApiSequentialSigning: "allowApiSequentialSigning_example", allowApiSequentialSigningMetadata: nil, allowAutoTagging: "allowAutoTagging_example", allowAutoTaggingMetadata: nil, allowBulkSending: "allowBulkSending_example", allowBulkSendingMetadata: nil, allowDocuSignDesktopClient: "allowDocuSignDesktopClient_example", allowDocuSignDesktopClientMetadata: nil, allowedAddressBookAccess: "allowedAddressBookAccess_example", allowedAddressBookAccessMetadata: nil, allowedClickwrapsAccess: "allowedClickwrapsAccess_example", allowedClickwrapsAccessMetadata: nil, allowedTemplateAccess: "allowedTemplateAccess_example", allowedTemplateAccessMetadata: nil, allowedToBeEnvelopeTransferRecipient: "allowedToBeEnvelopeTransferRecipient_example", allowedToBeEnvelopeTransferRecipientMetadata: nil, allowEnvelopeSending: "allowEnvelopeSending_example", allowEnvelopeSendingMetadata: nil, allowESealRecipients: "allowESealRecipients_example", allowESealRecipientsMetadata: nil, allowPowerFormsAdminToAccessAllPowerFormEnvelopes: "allowPowerFormsAdminToAccessAllPowerFormEnvelopes_example", allowPowerFormsAdminToAccessAllPowerFormEnvelopesMetadata: nil, allowSendersToSetRecipientEmailLanguage: "allowSendersToSetRecipientEmailLanguage_example", allowSendersToSetRecipientEmailLanguageMetadata: nil, allowSignerAttachments: "allowSignerAttachments_example", allowSignerAttachmentsMetadata: nil, allowSupplementalDocuments: "allowSupplementalDocuments_example", allowSupplementalDocumentsMetadata: nil, allowTaggingInSendAndCorrect: "allowTaggingInSendAndCorrect_example", allowTaggingInSendAndCorrectMetadata: nil, allowVaulting: "allowVaulting_example", allowVaultingMetadata: nil, allowWetSigningOverride: "allowWetSigningOverride_example", allowWetSigningOverrideMetadata: nil, canCreateWorkspaces: "canCreateWorkspaces_example", canCreateWorkspacesMetadata: nil, disableDocumentUpload: "disableDocumentUpload_example", disableDocumentUploadMetadata: nil, disableOtherActions: "disableOtherActions_example", disableOtherActionsMetadata: nil, enableApiRequestLogging: "enableApiRequestLogging_example", enableApiRequestLoggingMetadata: nil, enableRecipientViewingNotifications: "enableRecipientViewingNotifications_example", enableRecipientViewingNotificationsMetadata: nil, enableSequentialSigningInterface: "enableSequentialSigningInterface_example", enableSequentialSigningInterfaceMetadata: nil, enableTransactionPointIntegration: "enableTransactionPointIntegration_example", enableTransactionPointIntegrationMetadata: nil, powerFormRole: "powerFormRole_example", powerFormRoleMetadata: nil, receiveCompletedSelfSignedDocumentsAsEmailLinks: "receiveCompletedSelfSignedDocumentsAsEmailLinks_example", receiveCompletedSelfSignedDocumentsAsEmailLinksMetadata: nil, signingUiVersionMetadata: nil, supplementalDocumentsMustAccept: "supplementalDocumentsMustAccept_example", supplementalDocumentsMustAcceptMetadata: nil, supplementalDocumentsMustRead: "supplementalDocumentsMustRead_example", supplementalDocumentsMustReadMetadata: nil, supplementalDocumentsMustView: "supplementalDocumentsMustView_example", supplementalDocumentsMustViewMetadata: nil, useNewDocuSignExperienceInterface: "useNewDocuSignExperienceInterface_example", useNewDocuSignExperienceInterfaceMetadata: nil, useNewSendingInterface: "useNewSendingInterface_example", useNewSendingInterfaceMetadata: nil, vaultingMode: "vaultingMode_example", vaultingModeMetadata: nil), userCount: "userCount_example", users: [userInformation(activationAccessCode: "activationAccessCode_example", company: "company_example", connectConfigurations: [connectUserObject(configurationtype: "configurationtype_example", connectId: "connectId_example", enabled: "enabled_example", hasAccess: "hasAccess_example", senderSearchableItems: ["senderSearchableItems_example"])], countryCode: "countryCode_example", createdDateTime: "createdDateTime_example", customSettings: [nameValue(errorDetails: errorDetails(errorCode: "errorCode_example", message: "message_example"), name: "name_example", originalValue: "originalValue_example", value: "value_example")], defaultAccountId: "defaultAccountId_example", email: "email_example", enableConnectForUser: "enableConnectForUser_example", errorDetails: nil, firstName: "firstName_example", forgottenPasswordInfo: forgottenPasswordInformation(forgottenPasswordAnswer1: "forgottenPasswordAnswer1_example", forgottenPasswordAnswer2: "forgottenPasswordAnswer2_example", forgottenPasswordAnswer3: "forgottenPasswordAnswer3_example", forgottenPasswordAnswer4: "forgottenPasswordAnswer4_example", forgottenPasswordQuestion1: "forgottenPasswordQuestion1_example", forgottenPasswordQuestion2: "forgottenPasswordQuestion2_example", forgottenPasswordQuestion3: "forgottenPasswordQuestion3_example", forgottenPasswordQuestion4: "forgottenPasswordQuestion4_example"), groupList: [group(errorDetails: nil, groupId: "groupId_example", groupName: "groupName_example", groupType: "groupType_example", permissionProfileId: "permissionProfileId_example", users: [userInfo(accountId: "accountId_example", accountName: "accountName_example", activationAccessCode: "activationAccessCode_example", email: "email_example", errorDetails: nil, loginStatus: "loginStatus_example", membershipId: "membershipId_example", sendActivationEmail: "sendActivationEmail_example", uri: "uri_example", userId: "userId_example", userName: "userName_example", userStatus: "userStatus_example", userType: "userType_example")], usersCount: "usersCount_example")], homeAddress: addressInformation(address1: "address1_example", address2: "address2_example", city: "city_example", country: "country_example", fax: "fax_example", phone: "phone_example", postalCode: "postalCode_example", stateOrProvince: "stateOrProvince_example", zipPlus4: "zipPlus4_example"), initialsImageUri: "initialsImageUri_example", isAdmin: "isAdmin_example", isNAREnabled: "isNAREnabled_example", jobTitle: "jobTitle_example", lastLogin: "lastLogin_example", lastName: "lastName_example", loginStatus: "loginStatus_example", middleName: "middleName_example", password: "password_example", passwordExpiration: "passwordExpiration_example", permissionProfileId: "permissionProfileId_example", permissionProfileName: "permissionProfileName_example", profileImageUri: "profileImageUri_example", sendActivationEmail: "sendActivationEmail_example", sendActivationOnInvalidLogin: "sendActivationOnInvalidLogin_example", signatureImageUri: "signatureImageUri_example", subscribe: "subscribe_example", suffixName: "suffixName_example", title: "title_example", uri: "uri_example", userAddedToAccountDateTime: "userAddedToAccountDateTime_example", userId: "userId_example", userName: "userName_example", userProfileLastModifiedDate: "userProfileLastModifiedDate_example", userSettings: userSettingsInformation(accountManagementGranular: userAccountManagementGranularInformation(canManageAccountSecuritySettings: "canManageAccountSecuritySettings_example", canManageAccountSecuritySettingsMetadata: nil, canManageAccountSettings: "canManageAccountSettings_example", canManageAccountSettingsMetadata: nil, canManageAdmins: "canManageAdmins_example", canManageAdminsMetadata: nil, canManageEnvelopeTransfer: "canManageEnvelopeTransfer_example", canManageEnvelopeTransferMetadata: nil, canManageReporting: "canManageReporting_example", canManageReportingMetadata: nil, canManageSharing: "canManageSharing_example", canManageSharingMetadata: nil, canManageSigningGroups: "canManageSigningGroups_example", canManageSigningGroupsMetadata: nil, canManageUsers: "canManageUsers_example", canManageUsersMetadata: nil, canViewUsers: "canViewUsers_example"), adminOnly: "adminOnly_example", adminOnlyMetadata: nil, allowAutoTagging: "allowAutoTagging_example", allowEnvelopeTransferTo: "allowEnvelopeTransferTo_example", allowEnvelopeTransferToMetadata: nil, allowEsealRecipients: "allowEsealRecipients_example", allowEsealRecipientsMetadata: nil, allowPowerFormsAdminToAccessAllPowerFormEnvelope: "allowPowerFormsAdminToAccessAllPowerFormEnvelope_example", allowPowerFormsAdminToAccessAllPowerFormEnvelopeMetadata: nil, allowRecipientLanguageSelection: "allowRecipientLanguageSelection_example", allowRecipientLanguageSelectionMetadata: nil, allowSendOnBehalfOf: "allowSendOnBehalfOf_example", allowSendOnBehalfOfMetadata: nil, allowSupplementalDocuments: "allowSupplementalDocuments_example", allowSupplementalDocumentsMetadata: nil, anchorTagVersionedPlacementEnabled: "anchorTagVersionedPlacementEnabled_example", apiAccountWideAccess: "apiAccountWideAccess_example", apiAccountWideAccessMetadata: nil, apiCanExportAC: "apiCanExportAC_example", apiCanExportACMetadata: nil, bulkSend: "bulkSend_example", bulkSendMetadata: nil, canChargeAccount: "canChargeAccount_example", canChargeAccountMetadata: nil, canEditSharedAddressbook: "canEditSharedAddressbook_example", canEditSharedAddressbookMetadata: nil, canLockEnvelopes: "canLockEnvelopes_example", canLockEnvelopesMetadata: nil, canManageAccount: "canManageAccount_example", canManageAccountMetadata: nil, canManageDistributor: "canManageDistributor_example", canManageDistributorMetadata: nil, canManageTemplates: "canManageTemplates_example", canManageTemplatesMetadata: nil, canSendAPIRequests: "canSendAPIRequests_example", canSendAPIRequestsMetadata: nil, canSendEnvelope: "canSendEnvelope_example", canSendEnvelopeMetadata: nil, canSignEnvelope: "canSignEnvelope_example", canSignEnvelopeMetadata: nil, canUseScratchpad: "canUseScratchpad_example", canUseScratchpadMetadata: nil, canUseSmartContracts: "canUseSmartContracts_example", canUseSmartContractsMetadata: nil, disableDocumentUpload: "disableDocumentUpload_example", disableDocumentUploadMetadata: nil, disableOtherActions: "disableOtherActions_example", disableOtherActionsMetadata: nil, enableDSPro: "enableDSPro_example", enableDSProMetadata: nil, enableSequentialSigningAPI: "enableSequentialSigningAPI_example", enableSequentialSigningAPIMetadata: nil, enableSequentialSigningUI: "enableSequentialSigningUI_example", enableSequentialSigningUIMetadata: nil, enableSignerAttachments: "enableSignerAttachments_example", enableSignerAttachmentsMetadata: nil, enableSignOnPaperOverride: "enableSignOnPaperOverride_example", enableSignOnPaperOverrideMetadata: nil, enableTransactionPoint: "enableTransactionPoint_example", enableTransactionPointMetadata: nil, enableVaulting: "enableVaulting_example", enableVaultingMetadata: nil, expressSendOnly: "expressSendOnly_example", locale: "locale_example", localeMetadata: nil, localePolicy: localePolicy(addressFormat: "addressFormat_example", addressFormatMetadata: nil, allowRegion: "allowRegion_example", calendarType: "calendarType_example", calendarTypeMetadata: nil, cultureName: "cultureName_example", cultureNameMetadata: nil, currencyCode: "currencyCode_example", currencyCodeMetadata: nil, currencyNegativeFormat: "currencyNegativeFormat_example", currencyNegativeFormatMetadata: nil, currencyPositiveFormat: "currencyPositiveFormat_example", currencyPositiveFormatMetadata: nil, customDateFormat: "customDateFormat_example", customSignDateFormat: "customSignDateFormat_example", customSignTimeFormat: "customSignTimeFormat_example", customTimeFormat: "customTimeFormat_example", dateFormat: "dateFormat_example", dateFormatMetadata: nil, effectiveAddressFormat: "effectiveAddressFormat_example", effectiveCalendarType: "effectiveCalendarType_example", effectiveCurrencyCode: "effectiveCurrencyCode_example", effectiveCurrencyNegativeFormat: "effectiveCurrencyNegativeFormat_example", effectiveCurrencyPositiveFormat: "effectiveCurrencyPositiveFormat_example", effectiveCustomDateFormat: "effectiveCustomDateFormat_example", effectiveCustomTimeFormat: "effectiveCustomTimeFormat_example", effectiveDateFormat: "effectiveDateFormat_example", effectiveInitialFormat: "effectiveInitialFormat_example", effectiveNameFormat: "effectiveNameFormat_example", effectiveTimeFormat: "effectiveTimeFormat_example", effectiveTimeZone: "effectiveTimeZone_example", initialFormat: "initialFormat_example", initialFormatMetadata: nil, nameFormat: "nameFormat_example", nameFormatMetadata: nil, signDateFormat: "signDateFormat_example", signDateFormatMetadata: nil, signTimeFormat: "signTimeFormat_example", signTimeFormatMetadata: nil, timeFormat: "timeFormat_example", timeFormatMetadata: nil, timeZone: "timeZone_example", timeZoneMetadata: nil), manageClickwrapsMode: "manageClickwrapsMode_example", manageClickwrapsModeMetadata: nil, modifiedBy: "modifiedBy_example", modifiedByMetadata: nil, modifiedDate: "modifiedDate_example", modifiedDateMetadata: nil, modifiedPage: "modifiedPage_example", modifiedPageMetadata: nil, newSendUI: "newSendUI_example", newSendUIMetadata: nil, powerFormMode: "powerFormMode_example", powerFormModeMetadata: nil, recipientViewedNotification: "recipientViewedNotification_example", recipientViewedNotificationMetadata: nil, sealIdentifiers: [sealIdentifier(sealDisplayName: "sealDisplayName_example", sealName: "sealName_example")], selfSignedRecipientEmailDocument: "selfSignedRecipientEmailDocument_example", selfSignedRecipientEmailDocumentMetadata: nil, senderEmailNotifications: senderEmailNotifications(changedSigner: "changedSigner_example", commentsOnlyPrivateAndMention: "commentsOnlyPrivateAndMention_example", commentsReceiveAll: "commentsReceiveAll_example", deliveryFailed: "deliveryFailed_example", envelopeComplete: "envelopeComplete_example", offlineSigningFailed: "offlineSigningFailed_example", powerformResponsesLimitNotificationEmail: "powerformResponsesLimitNotificationEmail_example", purgeDocuments: "purgeDocuments_example", recipientViewed: "recipientViewed_example", senderEnvelopeDeclined: "senderEnvelopeDeclined_example", withdrawnConsent: "withdrawnConsent_example"), signerEmailNotifications: signerEmailNotifications(agentNotification: "agentNotification_example", carbonCopyNotification: "carbonCopyNotification_example", certifiedDeliveryNotification: "certifiedDeliveryNotification_example", commentsOnlyPrivateAndMention: "commentsOnlyPrivateAndMention_example", commentsReceiveAll: "commentsReceiveAll_example", documentMarkupActivation: "documentMarkupActivation_example", envelopeActivation: "envelopeActivation_example", envelopeComplete: "envelopeComplete_example", envelopeCorrected: "envelopeCorrected_example", envelopeDeclined: "envelopeDeclined_example", envelopeVoided: "envelopeVoided_example", faxReceived: "faxReceived_example", offlineSigningFailed: "offlineSigningFailed_example", purgeDocuments: "purgeDocuments_example", reassignedSigner: "reassignedSigner_example", whenSigningGroupMember: "whenSigningGroupMember_example"), supplementalDocumentIncludeInDownload: "supplementalDocumentIncludeInDownload_example", supplementalDocumentsMustAccept: "supplementalDocumentsMustAccept_example", supplementalDocumentsMustAcceptMetadata: nil, supplementalDocumentsMustRead: "supplementalDocumentsMustRead_example", supplementalDocumentsMustReadMetadata: nil, supplementalDocumentsMustView: "supplementalDocumentsMustView_example", supplementalDocumentsMustViewMetadata: nil, templateActiveCreation: "templateActiveCreation_example", templateActiveCreationMetadata: nil, templateApplyNotify: "templateApplyNotify_example", templateApplyNotifyMetadata: nil, templateAutoMatching: "templateAutoMatching_example", templateAutoMatchingMetadata: nil, templateMatchingSensitivity: "templateMatchingSensitivity_example", templateMatchingSensitivityMetadata: nil, templatePageLevelMatching: "templatePageLevelMatching_example", templatePageLevelMatchingMetadata: nil, timezoneDST: "timezoneDST_example", timezoneDSTMetadata: nil, timezoneMask: "timezoneMask_example", timezoneMaskMetadata: nil, timezoneOffset: "timezoneOffset_example", timezoneOffsetMetadata: nil, timezoneSendingPref: "timezoneSendingPref_example", timezoneSendingPrefMetadata: nil, timezoneSigningPref: "timezoneSigningPref_example", timezoneSigningPrefMetadata: nil, transactionPointSiteNameURL: "transactionPointSiteNameURL_example", transactionPointSiteNameURLMetadata: nil, transactionPointUserName: "transactionPointUserName_example", transactionPointUserNameMetadata: nil, vaultingMode: "vaultingMode_example", vaultingModeMetadata: nil), userStatus: "userStatus_example", userType: "userType_example", workAddress: nil)]) // PermissionProfile |  (optional)

// Creates a new permission profile for an account.
AccountPermissionProfilesAPI.permissionProfilesPostPermissionProfiles(accountId: accountId, include: include, permissionProfile: permissionProfile).whenComplete { result in
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
 **include** | **String** | A comma-separated list of additional properties to return in the response. The only valid value for this request is &#x60;metadata&#x60;, which returns metadata indicating whether the properties associated with the account permission profile are editable. | [optional] 
 **permissionProfile** | [**PermissionProfile**](PermissionProfile.md) |  | [optional] 

### Return type

#### PermissionProfilesPostPermissionProfiles

```swift
public enum PermissionProfilesPostPermissionProfiles {
    case http201(value: PermissionProfile?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: PermissionProfile?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **permissionProfilesPutPermissionProfiles**
```swift
    open class func permissionProfilesPutPermissionProfiles(accountId: String, permissionProfileId: String, include: String? = nil, permissionProfile: PermissionProfile? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<PermissionProfilesPutPermissionProfiles>
```

Updates a permission profile.

This method updates an account permission profile.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let permissionProfileId = "permissionProfileId_example" // String | The ID of the permission profile. Possible values include:  - `2301416` (for the `DocuSign Viewer` profile) - `2301415` (for the `DocuSign Sender` profile) - `2301414` (for the `Account Administrator` profile)  In addition, any custom permission profiles associated with your account will have an automatically generated `permissionProfileId`.
let include = "include_example" // String | A comma-separated list of additional properties to return in the response. The only valid value for this request is `metadata`, which returns metadata indicating whether the properties associated with the account permission profile are editable. (optional)
let permissionProfile = permissionProfile(modifiedByUsername: "modifiedByUsername_example", modifiedDateTime: "modifiedDateTime_example", permissionProfileId: "permissionProfileId_example", permissionProfileName: "permissionProfileName_example", settings: accountRoleSettings(allowAccountManagement: "allowAccountManagement_example", allowAccountManagementMetadata: settingsMetadata(is21CFRPart11: "is21CFRPart11_example", options: ["options_example"], rights: "rights_example", uiHint: "uiHint_example", uiOrder: "uiOrder_example", uiType: "uiType_example"), allowApiAccess: "allowApiAccess_example", allowApiAccessMetadata: nil, allowApiAccessToAccount: "allowApiAccessToAccount_example", allowApiAccessToAccountMetadata: nil, allowApiSendingOnBehalfOfOthers: "allowApiSendingOnBehalfOfOthers_example", allowApiSendingOnBehalfOfOthersMetadata: nil, allowApiSequentialSigning: "allowApiSequentialSigning_example", allowApiSequentialSigningMetadata: nil, allowAutoTagging: "allowAutoTagging_example", allowAutoTaggingMetadata: nil, allowBulkSending: "allowBulkSending_example", allowBulkSendingMetadata: nil, allowDocuSignDesktopClient: "allowDocuSignDesktopClient_example", allowDocuSignDesktopClientMetadata: nil, allowedAddressBookAccess: "allowedAddressBookAccess_example", allowedAddressBookAccessMetadata: nil, allowedClickwrapsAccess: "allowedClickwrapsAccess_example", allowedClickwrapsAccessMetadata: nil, allowedTemplateAccess: "allowedTemplateAccess_example", allowedTemplateAccessMetadata: nil, allowedToBeEnvelopeTransferRecipient: "allowedToBeEnvelopeTransferRecipient_example", allowedToBeEnvelopeTransferRecipientMetadata: nil, allowEnvelopeSending: "allowEnvelopeSending_example", allowEnvelopeSendingMetadata: nil, allowESealRecipients: "allowESealRecipients_example", allowESealRecipientsMetadata: nil, allowPowerFormsAdminToAccessAllPowerFormEnvelopes: "allowPowerFormsAdminToAccessAllPowerFormEnvelopes_example", allowPowerFormsAdminToAccessAllPowerFormEnvelopesMetadata: nil, allowSendersToSetRecipientEmailLanguage: "allowSendersToSetRecipientEmailLanguage_example", allowSendersToSetRecipientEmailLanguageMetadata: nil, allowSignerAttachments: "allowSignerAttachments_example", allowSignerAttachmentsMetadata: nil, allowSupplementalDocuments: "allowSupplementalDocuments_example", allowSupplementalDocumentsMetadata: nil, allowTaggingInSendAndCorrect: "allowTaggingInSendAndCorrect_example", allowTaggingInSendAndCorrectMetadata: nil, allowVaulting: "allowVaulting_example", allowVaultingMetadata: nil, allowWetSigningOverride: "allowWetSigningOverride_example", allowWetSigningOverrideMetadata: nil, canCreateWorkspaces: "canCreateWorkspaces_example", canCreateWorkspacesMetadata: nil, disableDocumentUpload: "disableDocumentUpload_example", disableDocumentUploadMetadata: nil, disableOtherActions: "disableOtherActions_example", disableOtherActionsMetadata: nil, enableApiRequestLogging: "enableApiRequestLogging_example", enableApiRequestLoggingMetadata: nil, enableRecipientViewingNotifications: "enableRecipientViewingNotifications_example", enableRecipientViewingNotificationsMetadata: nil, enableSequentialSigningInterface: "enableSequentialSigningInterface_example", enableSequentialSigningInterfaceMetadata: nil, enableTransactionPointIntegration: "enableTransactionPointIntegration_example", enableTransactionPointIntegrationMetadata: nil, powerFormRole: "powerFormRole_example", powerFormRoleMetadata: nil, receiveCompletedSelfSignedDocumentsAsEmailLinks: "receiveCompletedSelfSignedDocumentsAsEmailLinks_example", receiveCompletedSelfSignedDocumentsAsEmailLinksMetadata: nil, signingUiVersionMetadata: nil, supplementalDocumentsMustAccept: "supplementalDocumentsMustAccept_example", supplementalDocumentsMustAcceptMetadata: nil, supplementalDocumentsMustRead: "supplementalDocumentsMustRead_example", supplementalDocumentsMustReadMetadata: nil, supplementalDocumentsMustView: "supplementalDocumentsMustView_example", supplementalDocumentsMustViewMetadata: nil, useNewDocuSignExperienceInterface: "useNewDocuSignExperienceInterface_example", useNewDocuSignExperienceInterfaceMetadata: nil, useNewSendingInterface: "useNewSendingInterface_example", useNewSendingInterfaceMetadata: nil, vaultingMode: "vaultingMode_example", vaultingModeMetadata: nil), userCount: "userCount_example", users: [userInformation(activationAccessCode: "activationAccessCode_example", company: "company_example", connectConfigurations: [connectUserObject(configurationtype: "configurationtype_example", connectId: "connectId_example", enabled: "enabled_example", hasAccess: "hasAccess_example", senderSearchableItems: ["senderSearchableItems_example"])], countryCode: "countryCode_example", createdDateTime: "createdDateTime_example", customSettings: [nameValue(errorDetails: errorDetails(errorCode: "errorCode_example", message: "message_example"), name: "name_example", originalValue: "originalValue_example", value: "value_example")], defaultAccountId: "defaultAccountId_example", email: "email_example", enableConnectForUser: "enableConnectForUser_example", errorDetails: nil, firstName: "firstName_example", forgottenPasswordInfo: forgottenPasswordInformation(forgottenPasswordAnswer1: "forgottenPasswordAnswer1_example", forgottenPasswordAnswer2: "forgottenPasswordAnswer2_example", forgottenPasswordAnswer3: "forgottenPasswordAnswer3_example", forgottenPasswordAnswer4: "forgottenPasswordAnswer4_example", forgottenPasswordQuestion1: "forgottenPasswordQuestion1_example", forgottenPasswordQuestion2: "forgottenPasswordQuestion2_example", forgottenPasswordQuestion3: "forgottenPasswordQuestion3_example", forgottenPasswordQuestion4: "forgottenPasswordQuestion4_example"), groupList: [group(errorDetails: nil, groupId: "groupId_example", groupName: "groupName_example", groupType: "groupType_example", permissionProfileId: "permissionProfileId_example", users: [userInfo(accountId: "accountId_example", accountName: "accountName_example", activationAccessCode: "activationAccessCode_example", email: "email_example", errorDetails: nil, loginStatus: "loginStatus_example", membershipId: "membershipId_example", sendActivationEmail: "sendActivationEmail_example", uri: "uri_example", userId: "userId_example", userName: "userName_example", userStatus: "userStatus_example", userType: "userType_example")], usersCount: "usersCount_example")], homeAddress: addressInformation(address1: "address1_example", address2: "address2_example", city: "city_example", country: "country_example", fax: "fax_example", phone: "phone_example", postalCode: "postalCode_example", stateOrProvince: "stateOrProvince_example", zipPlus4: "zipPlus4_example"), initialsImageUri: "initialsImageUri_example", isAdmin: "isAdmin_example", isNAREnabled: "isNAREnabled_example", jobTitle: "jobTitle_example", lastLogin: "lastLogin_example", lastName: "lastName_example", loginStatus: "loginStatus_example", middleName: "middleName_example", password: "password_example", passwordExpiration: "passwordExpiration_example", permissionProfileId: "permissionProfileId_example", permissionProfileName: "permissionProfileName_example", profileImageUri: "profileImageUri_example", sendActivationEmail: "sendActivationEmail_example", sendActivationOnInvalidLogin: "sendActivationOnInvalidLogin_example", signatureImageUri: "signatureImageUri_example", subscribe: "subscribe_example", suffixName: "suffixName_example", title: "title_example", uri: "uri_example", userAddedToAccountDateTime: "userAddedToAccountDateTime_example", userId: "userId_example", userName: "userName_example", userProfileLastModifiedDate: "userProfileLastModifiedDate_example", userSettings: userSettingsInformation(accountManagementGranular: userAccountManagementGranularInformation(canManageAccountSecuritySettings: "canManageAccountSecuritySettings_example", canManageAccountSecuritySettingsMetadata: nil, canManageAccountSettings: "canManageAccountSettings_example", canManageAccountSettingsMetadata: nil, canManageAdmins: "canManageAdmins_example", canManageAdminsMetadata: nil, canManageEnvelopeTransfer: "canManageEnvelopeTransfer_example", canManageEnvelopeTransferMetadata: nil, canManageReporting: "canManageReporting_example", canManageReportingMetadata: nil, canManageSharing: "canManageSharing_example", canManageSharingMetadata: nil, canManageSigningGroups: "canManageSigningGroups_example", canManageSigningGroupsMetadata: nil, canManageUsers: "canManageUsers_example", canManageUsersMetadata: nil, canViewUsers: "canViewUsers_example"), adminOnly: "adminOnly_example", adminOnlyMetadata: nil, allowAutoTagging: "allowAutoTagging_example", allowEnvelopeTransferTo: "allowEnvelopeTransferTo_example", allowEnvelopeTransferToMetadata: nil, allowEsealRecipients: "allowEsealRecipients_example", allowEsealRecipientsMetadata: nil, allowPowerFormsAdminToAccessAllPowerFormEnvelope: "allowPowerFormsAdminToAccessAllPowerFormEnvelope_example", allowPowerFormsAdminToAccessAllPowerFormEnvelopeMetadata: nil, allowRecipientLanguageSelection: "allowRecipientLanguageSelection_example", allowRecipientLanguageSelectionMetadata: nil, allowSendOnBehalfOf: "allowSendOnBehalfOf_example", allowSendOnBehalfOfMetadata: nil, allowSupplementalDocuments: "allowSupplementalDocuments_example", allowSupplementalDocumentsMetadata: nil, anchorTagVersionedPlacementEnabled: "anchorTagVersionedPlacementEnabled_example", apiAccountWideAccess: "apiAccountWideAccess_example", apiAccountWideAccessMetadata: nil, apiCanExportAC: "apiCanExportAC_example", apiCanExportACMetadata: nil, bulkSend: "bulkSend_example", bulkSendMetadata: nil, canChargeAccount: "canChargeAccount_example", canChargeAccountMetadata: nil, canEditSharedAddressbook: "canEditSharedAddressbook_example", canEditSharedAddressbookMetadata: nil, canLockEnvelopes: "canLockEnvelopes_example", canLockEnvelopesMetadata: nil, canManageAccount: "canManageAccount_example", canManageAccountMetadata: nil, canManageDistributor: "canManageDistributor_example", canManageDistributorMetadata: nil, canManageTemplates: "canManageTemplates_example", canManageTemplatesMetadata: nil, canSendAPIRequests: "canSendAPIRequests_example", canSendAPIRequestsMetadata: nil, canSendEnvelope: "canSendEnvelope_example", canSendEnvelopeMetadata: nil, canSignEnvelope: "canSignEnvelope_example", canSignEnvelopeMetadata: nil, canUseScratchpad: "canUseScratchpad_example", canUseScratchpadMetadata: nil, canUseSmartContracts: "canUseSmartContracts_example", canUseSmartContractsMetadata: nil, disableDocumentUpload: "disableDocumentUpload_example", disableDocumentUploadMetadata: nil, disableOtherActions: "disableOtherActions_example", disableOtherActionsMetadata: nil, enableDSPro: "enableDSPro_example", enableDSProMetadata: nil, enableSequentialSigningAPI: "enableSequentialSigningAPI_example", enableSequentialSigningAPIMetadata: nil, enableSequentialSigningUI: "enableSequentialSigningUI_example", enableSequentialSigningUIMetadata: nil, enableSignerAttachments: "enableSignerAttachments_example", enableSignerAttachmentsMetadata: nil, enableSignOnPaperOverride: "enableSignOnPaperOverride_example", enableSignOnPaperOverrideMetadata: nil, enableTransactionPoint: "enableTransactionPoint_example", enableTransactionPointMetadata: nil, enableVaulting: "enableVaulting_example", enableVaultingMetadata: nil, expressSendOnly: "expressSendOnly_example", locale: "locale_example", localeMetadata: nil, localePolicy: localePolicy(addressFormat: "addressFormat_example", addressFormatMetadata: nil, allowRegion: "allowRegion_example", calendarType: "calendarType_example", calendarTypeMetadata: nil, cultureName: "cultureName_example", cultureNameMetadata: nil, currencyCode: "currencyCode_example", currencyCodeMetadata: nil, currencyNegativeFormat: "currencyNegativeFormat_example", currencyNegativeFormatMetadata: nil, currencyPositiveFormat: "currencyPositiveFormat_example", currencyPositiveFormatMetadata: nil, customDateFormat: "customDateFormat_example", customSignDateFormat: "customSignDateFormat_example", customSignTimeFormat: "customSignTimeFormat_example", customTimeFormat: "customTimeFormat_example", dateFormat: "dateFormat_example", dateFormatMetadata: nil, effectiveAddressFormat: "effectiveAddressFormat_example", effectiveCalendarType: "effectiveCalendarType_example", effectiveCurrencyCode: "effectiveCurrencyCode_example", effectiveCurrencyNegativeFormat: "effectiveCurrencyNegativeFormat_example", effectiveCurrencyPositiveFormat: "effectiveCurrencyPositiveFormat_example", effectiveCustomDateFormat: "effectiveCustomDateFormat_example", effectiveCustomTimeFormat: "effectiveCustomTimeFormat_example", effectiveDateFormat: "effectiveDateFormat_example", effectiveInitialFormat: "effectiveInitialFormat_example", effectiveNameFormat: "effectiveNameFormat_example", effectiveTimeFormat: "effectiveTimeFormat_example", effectiveTimeZone: "effectiveTimeZone_example", initialFormat: "initialFormat_example", initialFormatMetadata: nil, nameFormat: "nameFormat_example", nameFormatMetadata: nil, signDateFormat: "signDateFormat_example", signDateFormatMetadata: nil, signTimeFormat: "signTimeFormat_example", signTimeFormatMetadata: nil, timeFormat: "timeFormat_example", timeFormatMetadata: nil, timeZone: "timeZone_example", timeZoneMetadata: nil), manageClickwrapsMode: "manageClickwrapsMode_example", manageClickwrapsModeMetadata: nil, modifiedBy: "modifiedBy_example", modifiedByMetadata: nil, modifiedDate: "modifiedDate_example", modifiedDateMetadata: nil, modifiedPage: "modifiedPage_example", modifiedPageMetadata: nil, newSendUI: "newSendUI_example", newSendUIMetadata: nil, powerFormMode: "powerFormMode_example", powerFormModeMetadata: nil, recipientViewedNotification: "recipientViewedNotification_example", recipientViewedNotificationMetadata: nil, sealIdentifiers: [sealIdentifier(sealDisplayName: "sealDisplayName_example", sealName: "sealName_example")], selfSignedRecipientEmailDocument: "selfSignedRecipientEmailDocument_example", selfSignedRecipientEmailDocumentMetadata: nil, senderEmailNotifications: senderEmailNotifications(changedSigner: "changedSigner_example", commentsOnlyPrivateAndMention: "commentsOnlyPrivateAndMention_example", commentsReceiveAll: "commentsReceiveAll_example", deliveryFailed: "deliveryFailed_example", envelopeComplete: "envelopeComplete_example", offlineSigningFailed: "offlineSigningFailed_example", powerformResponsesLimitNotificationEmail: "powerformResponsesLimitNotificationEmail_example", purgeDocuments: "purgeDocuments_example", recipientViewed: "recipientViewed_example", senderEnvelopeDeclined: "senderEnvelopeDeclined_example", withdrawnConsent: "withdrawnConsent_example"), signerEmailNotifications: signerEmailNotifications(agentNotification: "agentNotification_example", carbonCopyNotification: "carbonCopyNotification_example", certifiedDeliveryNotification: "certifiedDeliveryNotification_example", commentsOnlyPrivateAndMention: "commentsOnlyPrivateAndMention_example", commentsReceiveAll: "commentsReceiveAll_example", documentMarkupActivation: "documentMarkupActivation_example", envelopeActivation: "envelopeActivation_example", envelopeComplete: "envelopeComplete_example", envelopeCorrected: "envelopeCorrected_example", envelopeDeclined: "envelopeDeclined_example", envelopeVoided: "envelopeVoided_example", faxReceived: "faxReceived_example", offlineSigningFailed: "offlineSigningFailed_example", purgeDocuments: "purgeDocuments_example", reassignedSigner: "reassignedSigner_example", whenSigningGroupMember: "whenSigningGroupMember_example"), supplementalDocumentIncludeInDownload: "supplementalDocumentIncludeInDownload_example", supplementalDocumentsMustAccept: "supplementalDocumentsMustAccept_example", supplementalDocumentsMustAcceptMetadata: nil, supplementalDocumentsMustRead: "supplementalDocumentsMustRead_example", supplementalDocumentsMustReadMetadata: nil, supplementalDocumentsMustView: "supplementalDocumentsMustView_example", supplementalDocumentsMustViewMetadata: nil, templateActiveCreation: "templateActiveCreation_example", templateActiveCreationMetadata: nil, templateApplyNotify: "templateApplyNotify_example", templateApplyNotifyMetadata: nil, templateAutoMatching: "templateAutoMatching_example", templateAutoMatchingMetadata: nil, templateMatchingSensitivity: "templateMatchingSensitivity_example", templateMatchingSensitivityMetadata: nil, templatePageLevelMatching: "templatePageLevelMatching_example", templatePageLevelMatchingMetadata: nil, timezoneDST: "timezoneDST_example", timezoneDSTMetadata: nil, timezoneMask: "timezoneMask_example", timezoneMaskMetadata: nil, timezoneOffset: "timezoneOffset_example", timezoneOffsetMetadata: nil, timezoneSendingPref: "timezoneSendingPref_example", timezoneSendingPrefMetadata: nil, timezoneSigningPref: "timezoneSigningPref_example", timezoneSigningPrefMetadata: nil, transactionPointSiteNameURL: "transactionPointSiteNameURL_example", transactionPointSiteNameURLMetadata: nil, transactionPointUserName: "transactionPointUserName_example", transactionPointUserNameMetadata: nil, vaultingMode: "vaultingMode_example", vaultingModeMetadata: nil), userStatus: "userStatus_example", userType: "userType_example", workAddress: nil)]) // PermissionProfile |  (optional)

// Updates a permission profile.
AccountPermissionProfilesAPI.permissionProfilesPutPermissionProfiles(accountId: accountId, permissionProfileId: permissionProfileId, include: include, permissionProfile: permissionProfile).whenComplete { result in
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
 **permissionProfileId** | **String** | The ID of the permission profile. Possible values include:  - &#x60;2301416&#x60; (for the &#x60;DocuSign Viewer&#x60; profile) - &#x60;2301415&#x60; (for the &#x60;DocuSign Sender&#x60; profile) - &#x60;2301414&#x60; (for the &#x60;Account Administrator&#x60; profile)  In addition, any custom permission profiles associated with your account will have an automatically generated &#x60;permissionProfileId&#x60;. | 
 **include** | **String** | A comma-separated list of additional properties to return in the response. The only valid value for this request is &#x60;metadata&#x60;, which returns metadata indicating whether the properties associated with the account permission profile are editable. | [optional] 
 **permissionProfile** | [**PermissionProfile**](PermissionProfile.md) |  | [optional] 

### Return type

#### PermissionProfilesPutPermissionProfiles

```swift
public enum PermissionProfilesPutPermissionProfiles {
    case http200(value: PermissionProfile?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: PermissionProfile?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

