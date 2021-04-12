# NotaryAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**notaryGetNotary**](NotaryAPI.md#notarygetnotary) | **GET** /v2.1/current_user/notary | Gets settings for a  notary user.
[**notaryPostNotary**](NotaryAPI.md#notarypostnotary) | **POST** /v2.1/current_user/notary | Registers the current user as a notary.
[**notaryPutNotary**](NotaryAPI.md#notaryputnotary) | **PUT** /v2.1/current_user/notary | Updates notary information for the current user.


# **notaryGetNotary**
```swift
    open class func notaryGetNotary(includeJurisdictions: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<NotaryGetNotary>
```

Gets settings for a  notary user.

Gets settings for a notary user. The current user must be a notary.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let includeJurisdictions = "includeJurisdictions_example" // String | If **true**, the response will include a `jurisdiction` property that contains an array of all supported jurisdictions for the current user. (optional)

// Gets settings for a  notary user.
NotaryAPI.notaryGetNotary(includeJurisdictions: includeJurisdictions).whenComplete { result in
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
 **includeJurisdictions** | **String** | If **true**, the response will include a &#x60;jurisdiction&#x60; property that contains an array of all supported jurisdictions for the current user. | [optional] 

### Return type

#### NotaryGetNotary

```swift
public enum NotaryGetNotary {
    case http200(value: NotaryResult?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: NotaryResult?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notaryPostNotary**
```swift
    open class func notaryPostNotary(notary: Notary? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<NotaryPostNotary>
```

Registers the current user as a notary.

Registers the current user as a notary.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let notary = Notary(createdDate: "createdDate_example", enabled: "enabled_example", searchable: "searchable_example", userInfo: userInformation(activationAccessCode: "activationAccessCode_example", company: "company_example", connectConfigurations: [connectUserObject(configurationtype: "configurationtype_example", connectId: "connectId_example", enabled: "enabled_example", hasAccess: "hasAccess_example", senderSearchableItems: ["senderSearchableItems_example"])], countryCode: "countryCode_example", createdDateTime: "createdDateTime_example", customSettings: [nameValue(errorDetails: errorDetails(errorCode: "errorCode_example", message: "message_example"), name: "name_example", originalValue: "originalValue_example", value: "value_example")], defaultAccountId: "defaultAccountId_example", email: "email_example", enableConnectForUser: "enableConnectForUser_example", errorDetails: nil, firstName: "firstName_example", forgottenPasswordInfo: forgottenPasswordInformation(forgottenPasswordAnswer1: "forgottenPasswordAnswer1_example", forgottenPasswordAnswer2: "forgottenPasswordAnswer2_example", forgottenPasswordAnswer3: "forgottenPasswordAnswer3_example", forgottenPasswordAnswer4: "forgottenPasswordAnswer4_example", forgottenPasswordQuestion1: "forgottenPasswordQuestion1_example", forgottenPasswordQuestion2: "forgottenPasswordQuestion2_example", forgottenPasswordQuestion3: "forgottenPasswordQuestion3_example", forgottenPasswordQuestion4: "forgottenPasswordQuestion4_example"), groupList: [group(errorDetails: nil, groupId: "groupId_example", groupName: "groupName_example", groupType: "groupType_example", permissionProfileId: "permissionProfileId_example", users: [userInfo(accountId: "accountId_example", accountName: "accountName_example", activationAccessCode: "activationAccessCode_example", email: "email_example", errorDetails: nil, loginStatus: "loginStatus_example", membershipId: "membershipId_example", sendActivationEmail: "sendActivationEmail_example", uri: "uri_example", userId: "userId_example", userName: "userName_example", userStatus: "userStatus_example", userType: "userType_example")], usersCount: "usersCount_example")], homeAddress: addressInformation(address1: "address1_example", address2: "address2_example", city: "city_example", country: "country_example", fax: "fax_example", phone: "phone_example", postalCode: "postalCode_example", stateOrProvince: "stateOrProvince_example", zipPlus4: "zipPlus4_example"), initialsImageUri: "initialsImageUri_example", isAdmin: "isAdmin_example", isNAREnabled: "isNAREnabled_example", jobTitle: "jobTitle_example", lastLogin: "lastLogin_example", lastName: "lastName_example", loginStatus: "loginStatus_example", middleName: "middleName_example", password: "password_example", passwordExpiration: "passwordExpiration_example", permissionProfileId: "permissionProfileId_example", permissionProfileName: "permissionProfileName_example", profileImageUri: "profileImageUri_example", sendActivationEmail: "sendActivationEmail_example", sendActivationOnInvalidLogin: "sendActivationOnInvalidLogin_example", signatureImageUri: "signatureImageUri_example", subscribe: "subscribe_example", suffixName: "suffixName_example", title: "title_example", uri: "uri_example", userAddedToAccountDateTime: "userAddedToAccountDateTime_example", userId: "userId_example", userName: "userName_example", userProfileLastModifiedDate: "userProfileLastModifiedDate_example", userSettings: userSettingsInformation(accountManagementGranular: userAccountManagementGranularInformation(canManageAccountSecuritySettings: "canManageAccountSecuritySettings_example", canManageAccountSecuritySettingsMetadata: settingsMetadata(is21CFRPart11: "is21CFRPart11_example", options: ["options_example"], rights: "rights_example", uiHint: "uiHint_example", uiOrder: "uiOrder_example", uiType: "uiType_example"), canManageAccountSettings: "canManageAccountSettings_example", canManageAccountSettingsMetadata: nil, canManageAdmins: "canManageAdmins_example", canManageAdminsMetadata: nil, canManageEnvelopeTransfer: "canManageEnvelopeTransfer_example", canManageEnvelopeTransferMetadata: nil, canManageReporting: "canManageReporting_example", canManageReportingMetadata: nil, canManageSharing: "canManageSharing_example", canManageSharingMetadata: nil, canManageSigningGroups: "canManageSigningGroups_example", canManageSigningGroupsMetadata: nil, canManageUsers: "canManageUsers_example", canManageUsersMetadata: nil, canViewUsers: "canViewUsers_example"), adminOnly: "adminOnly_example", adminOnlyMetadata: nil, allowAutoTagging: "allowAutoTagging_example", allowEnvelopeTransferTo: "allowEnvelopeTransferTo_example", allowEnvelopeTransferToMetadata: nil, allowEsealRecipients: "allowEsealRecipients_example", allowEsealRecipientsMetadata: nil, allowPowerFormsAdminToAccessAllPowerFormEnvelope: "allowPowerFormsAdminToAccessAllPowerFormEnvelope_example", allowPowerFormsAdminToAccessAllPowerFormEnvelopeMetadata: nil, allowRecipientLanguageSelection: "allowRecipientLanguageSelection_example", allowRecipientLanguageSelectionMetadata: nil, allowSendOnBehalfOf: "allowSendOnBehalfOf_example", allowSendOnBehalfOfMetadata: nil, allowSupplementalDocuments: "allowSupplementalDocuments_example", allowSupplementalDocumentsMetadata: nil, anchorTagVersionedPlacementEnabled: "anchorTagVersionedPlacementEnabled_example", apiAccountWideAccess: "apiAccountWideAccess_example", apiAccountWideAccessMetadata: nil, apiCanExportAC: "apiCanExportAC_example", apiCanExportACMetadata: nil, bulkSend: "bulkSend_example", bulkSendMetadata: nil, canChargeAccount: "canChargeAccount_example", canChargeAccountMetadata: nil, canEditSharedAddressbook: "canEditSharedAddressbook_example", canEditSharedAddressbookMetadata: nil, canLockEnvelopes: "canLockEnvelopes_example", canLockEnvelopesMetadata: nil, canManageAccount: "canManageAccount_example", canManageAccountMetadata: nil, canManageDistributor: "canManageDistributor_example", canManageDistributorMetadata: nil, canManageTemplates: "canManageTemplates_example", canManageTemplatesMetadata: nil, canSendAPIRequests: "canSendAPIRequests_example", canSendAPIRequestsMetadata: nil, canSendEnvelope: "canSendEnvelope_example", canSendEnvelopeMetadata: nil, canSignEnvelope: "canSignEnvelope_example", canSignEnvelopeMetadata: nil, canUseScratchpad: "canUseScratchpad_example", canUseScratchpadMetadata: nil, canUseSmartContracts: "canUseSmartContracts_example", canUseSmartContractsMetadata: nil, disableDocumentUpload: "disableDocumentUpload_example", disableDocumentUploadMetadata: nil, disableOtherActions: "disableOtherActions_example", disableOtherActionsMetadata: nil, enableDSPro: "enableDSPro_example", enableDSProMetadata: nil, enableSequentialSigningAPI: "enableSequentialSigningAPI_example", enableSequentialSigningAPIMetadata: nil, enableSequentialSigningUI: "enableSequentialSigningUI_example", enableSequentialSigningUIMetadata: nil, enableSignerAttachments: "enableSignerAttachments_example", enableSignerAttachmentsMetadata: nil, enableSignOnPaperOverride: "enableSignOnPaperOverride_example", enableSignOnPaperOverrideMetadata: nil, enableTransactionPoint: "enableTransactionPoint_example", enableTransactionPointMetadata: nil, enableVaulting: "enableVaulting_example", enableVaultingMetadata: nil, expressSendOnly: "expressSendOnly_example", locale: "locale_example", localeMetadata: nil, localePolicy: localePolicy(addressFormat: "addressFormat_example", addressFormatMetadata: nil, allowRegion: "allowRegion_example", calendarType: "calendarType_example", calendarTypeMetadata: nil, cultureName: "cultureName_example", cultureNameMetadata: nil, currencyCode: "currencyCode_example", currencyCodeMetadata: nil, currencyNegativeFormat: "currencyNegativeFormat_example", currencyNegativeFormatMetadata: nil, currencyPositiveFormat: "currencyPositiveFormat_example", currencyPositiveFormatMetadata: nil, customDateFormat: "customDateFormat_example", customSignDateFormat: "customSignDateFormat_example", customSignTimeFormat: "customSignTimeFormat_example", customTimeFormat: "customTimeFormat_example", dateFormat: "dateFormat_example", dateFormatMetadata: nil, effectiveAddressFormat: "effectiveAddressFormat_example", effectiveCalendarType: "effectiveCalendarType_example", effectiveCurrencyCode: "effectiveCurrencyCode_example", effectiveCurrencyNegativeFormat: "effectiveCurrencyNegativeFormat_example", effectiveCurrencyPositiveFormat: "effectiveCurrencyPositiveFormat_example", effectiveCustomDateFormat: "effectiveCustomDateFormat_example", effectiveCustomTimeFormat: "effectiveCustomTimeFormat_example", effectiveDateFormat: "effectiveDateFormat_example", effectiveInitialFormat: "effectiveInitialFormat_example", effectiveNameFormat: "effectiveNameFormat_example", effectiveTimeFormat: "effectiveTimeFormat_example", effectiveTimeZone: "effectiveTimeZone_example", initialFormat: "initialFormat_example", initialFormatMetadata: nil, nameFormat: "nameFormat_example", nameFormatMetadata: nil, signDateFormat: "signDateFormat_example", signDateFormatMetadata: nil, signTimeFormat: "signTimeFormat_example", signTimeFormatMetadata: nil, timeFormat: "timeFormat_example", timeFormatMetadata: nil, timeZone: "timeZone_example", timeZoneMetadata: nil), manageClickwrapsMode: "manageClickwrapsMode_example", manageClickwrapsModeMetadata: nil, modifiedBy: "modifiedBy_example", modifiedByMetadata: nil, modifiedDate: "modifiedDate_example", modifiedDateMetadata: nil, modifiedPage: "modifiedPage_example", modifiedPageMetadata: nil, newSendUI: "newSendUI_example", newSendUIMetadata: nil, powerFormMode: "powerFormMode_example", powerFormModeMetadata: nil, recipientViewedNotification: "recipientViewedNotification_example", recipientViewedNotificationMetadata: nil, sealIdentifiers: [sealIdentifier(sealDisplayName: "sealDisplayName_example", sealName: "sealName_example")], selfSignedRecipientEmailDocument: "selfSignedRecipientEmailDocument_example", selfSignedRecipientEmailDocumentMetadata: nil, senderEmailNotifications: senderEmailNotifications(changedSigner: "changedSigner_example", commentsOnlyPrivateAndMention: "commentsOnlyPrivateAndMention_example", commentsReceiveAll: "commentsReceiveAll_example", deliveryFailed: "deliveryFailed_example", envelopeComplete: "envelopeComplete_example", offlineSigningFailed: "offlineSigningFailed_example", powerformResponsesLimitNotificationEmail: "powerformResponsesLimitNotificationEmail_example", purgeDocuments: "purgeDocuments_example", recipientViewed: "recipientViewed_example", senderEnvelopeDeclined: "senderEnvelopeDeclined_example", withdrawnConsent: "withdrawnConsent_example"), signerEmailNotifications: signerEmailNotifications(agentNotification: "agentNotification_example", carbonCopyNotification: "carbonCopyNotification_example", certifiedDeliveryNotification: "certifiedDeliveryNotification_example", commentsOnlyPrivateAndMention: "commentsOnlyPrivateAndMention_example", commentsReceiveAll: "commentsReceiveAll_example", documentMarkupActivation: "documentMarkupActivation_example", envelopeActivation: "envelopeActivation_example", envelopeComplete: "envelopeComplete_example", envelopeCorrected: "envelopeCorrected_example", envelopeDeclined: "envelopeDeclined_example", envelopeVoided: "envelopeVoided_example", faxReceived: "faxReceived_example", offlineSigningFailed: "offlineSigningFailed_example", purgeDocuments: "purgeDocuments_example", reassignedSigner: "reassignedSigner_example", whenSigningGroupMember: "whenSigningGroupMember_example"), supplementalDocumentIncludeInDownload: "supplementalDocumentIncludeInDownload_example", supplementalDocumentsMustAccept: "supplementalDocumentsMustAccept_example", supplementalDocumentsMustAcceptMetadata: nil, supplementalDocumentsMustRead: "supplementalDocumentsMustRead_example", supplementalDocumentsMustReadMetadata: nil, supplementalDocumentsMustView: "supplementalDocumentsMustView_example", supplementalDocumentsMustViewMetadata: nil, templateActiveCreation: "templateActiveCreation_example", templateActiveCreationMetadata: nil, templateApplyNotify: "templateApplyNotify_example", templateApplyNotifyMetadata: nil, templateAutoMatching: "templateAutoMatching_example", templateAutoMatchingMetadata: nil, templateMatchingSensitivity: "templateMatchingSensitivity_example", templateMatchingSensitivityMetadata: nil, templatePageLevelMatching: "templatePageLevelMatching_example", templatePageLevelMatchingMetadata: nil, timezoneDST: "timezoneDST_example", timezoneDSTMetadata: nil, timezoneMask: "timezoneMask_example", timezoneMaskMetadata: nil, timezoneOffset: "timezoneOffset_example", timezoneOffsetMetadata: nil, timezoneSendingPref: "timezoneSendingPref_example", timezoneSendingPrefMetadata: nil, timezoneSigningPref: "timezoneSigningPref_example", timezoneSigningPrefMetadata: nil, transactionPointSiteNameURL: "transactionPointSiteNameURL_example", transactionPointSiteNameURLMetadata: nil, transactionPointUserName: "transactionPointUserName_example", transactionPointUserNameMetadata: nil, vaultingMode: "vaultingMode_example", vaultingModeMetadata: nil), userStatus: "userStatus_example", userType: "userType_example", workAddress: nil)) // Notary |  (optional)

// Registers the current user as a notary.
NotaryAPI.notaryPostNotary(notary: notary).whenComplete { result in
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
 **notary** | [**Notary**](Notary.md) |  | [optional] 

### Return type

#### NotaryPostNotary

```swift
public enum NotaryPostNotary {
    case http201(value: Notary?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Notary?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **notaryPutNotary**
```swift
    open class func notaryPutNotary(notary: Notary? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<NotaryPutNotary>
```

Updates notary information for the current user.

Updates notary information for the current user.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let notary = Notary(createdDate: "createdDate_example", enabled: "enabled_example", searchable: "searchable_example", userInfo: userInformation(activationAccessCode: "activationAccessCode_example", company: "company_example", connectConfigurations: [connectUserObject(configurationtype: "configurationtype_example", connectId: "connectId_example", enabled: "enabled_example", hasAccess: "hasAccess_example", senderSearchableItems: ["senderSearchableItems_example"])], countryCode: "countryCode_example", createdDateTime: "createdDateTime_example", customSettings: [nameValue(errorDetails: errorDetails(errorCode: "errorCode_example", message: "message_example"), name: "name_example", originalValue: "originalValue_example", value: "value_example")], defaultAccountId: "defaultAccountId_example", email: "email_example", enableConnectForUser: "enableConnectForUser_example", errorDetails: nil, firstName: "firstName_example", forgottenPasswordInfo: forgottenPasswordInformation(forgottenPasswordAnswer1: "forgottenPasswordAnswer1_example", forgottenPasswordAnswer2: "forgottenPasswordAnswer2_example", forgottenPasswordAnswer3: "forgottenPasswordAnswer3_example", forgottenPasswordAnswer4: "forgottenPasswordAnswer4_example", forgottenPasswordQuestion1: "forgottenPasswordQuestion1_example", forgottenPasswordQuestion2: "forgottenPasswordQuestion2_example", forgottenPasswordQuestion3: "forgottenPasswordQuestion3_example", forgottenPasswordQuestion4: "forgottenPasswordQuestion4_example"), groupList: [group(errorDetails: nil, groupId: "groupId_example", groupName: "groupName_example", groupType: "groupType_example", permissionProfileId: "permissionProfileId_example", users: [userInfo(accountId: "accountId_example", accountName: "accountName_example", activationAccessCode: "activationAccessCode_example", email: "email_example", errorDetails: nil, loginStatus: "loginStatus_example", membershipId: "membershipId_example", sendActivationEmail: "sendActivationEmail_example", uri: "uri_example", userId: "userId_example", userName: "userName_example", userStatus: "userStatus_example", userType: "userType_example")], usersCount: "usersCount_example")], homeAddress: addressInformation(address1: "address1_example", address2: "address2_example", city: "city_example", country: "country_example", fax: "fax_example", phone: "phone_example", postalCode: "postalCode_example", stateOrProvince: "stateOrProvince_example", zipPlus4: "zipPlus4_example"), initialsImageUri: "initialsImageUri_example", isAdmin: "isAdmin_example", isNAREnabled: "isNAREnabled_example", jobTitle: "jobTitle_example", lastLogin: "lastLogin_example", lastName: "lastName_example", loginStatus: "loginStatus_example", middleName: "middleName_example", password: "password_example", passwordExpiration: "passwordExpiration_example", permissionProfileId: "permissionProfileId_example", permissionProfileName: "permissionProfileName_example", profileImageUri: "profileImageUri_example", sendActivationEmail: "sendActivationEmail_example", sendActivationOnInvalidLogin: "sendActivationOnInvalidLogin_example", signatureImageUri: "signatureImageUri_example", subscribe: "subscribe_example", suffixName: "suffixName_example", title: "title_example", uri: "uri_example", userAddedToAccountDateTime: "userAddedToAccountDateTime_example", userId: "userId_example", userName: "userName_example", userProfileLastModifiedDate: "userProfileLastModifiedDate_example", userSettings: userSettingsInformation(accountManagementGranular: userAccountManagementGranularInformation(canManageAccountSecuritySettings: "canManageAccountSecuritySettings_example", canManageAccountSecuritySettingsMetadata: settingsMetadata(is21CFRPart11: "is21CFRPart11_example", options: ["options_example"], rights: "rights_example", uiHint: "uiHint_example", uiOrder: "uiOrder_example", uiType: "uiType_example"), canManageAccountSettings: "canManageAccountSettings_example", canManageAccountSettingsMetadata: nil, canManageAdmins: "canManageAdmins_example", canManageAdminsMetadata: nil, canManageEnvelopeTransfer: "canManageEnvelopeTransfer_example", canManageEnvelopeTransferMetadata: nil, canManageReporting: "canManageReporting_example", canManageReportingMetadata: nil, canManageSharing: "canManageSharing_example", canManageSharingMetadata: nil, canManageSigningGroups: "canManageSigningGroups_example", canManageSigningGroupsMetadata: nil, canManageUsers: "canManageUsers_example", canManageUsersMetadata: nil, canViewUsers: "canViewUsers_example"), adminOnly: "adminOnly_example", adminOnlyMetadata: nil, allowAutoTagging: "allowAutoTagging_example", allowEnvelopeTransferTo: "allowEnvelopeTransferTo_example", allowEnvelopeTransferToMetadata: nil, allowEsealRecipients: "allowEsealRecipients_example", allowEsealRecipientsMetadata: nil, allowPowerFormsAdminToAccessAllPowerFormEnvelope: "allowPowerFormsAdminToAccessAllPowerFormEnvelope_example", allowPowerFormsAdminToAccessAllPowerFormEnvelopeMetadata: nil, allowRecipientLanguageSelection: "allowRecipientLanguageSelection_example", allowRecipientLanguageSelectionMetadata: nil, allowSendOnBehalfOf: "allowSendOnBehalfOf_example", allowSendOnBehalfOfMetadata: nil, allowSupplementalDocuments: "allowSupplementalDocuments_example", allowSupplementalDocumentsMetadata: nil, anchorTagVersionedPlacementEnabled: "anchorTagVersionedPlacementEnabled_example", apiAccountWideAccess: "apiAccountWideAccess_example", apiAccountWideAccessMetadata: nil, apiCanExportAC: "apiCanExportAC_example", apiCanExportACMetadata: nil, bulkSend: "bulkSend_example", bulkSendMetadata: nil, canChargeAccount: "canChargeAccount_example", canChargeAccountMetadata: nil, canEditSharedAddressbook: "canEditSharedAddressbook_example", canEditSharedAddressbookMetadata: nil, canLockEnvelopes: "canLockEnvelopes_example", canLockEnvelopesMetadata: nil, canManageAccount: "canManageAccount_example", canManageAccountMetadata: nil, canManageDistributor: "canManageDistributor_example", canManageDistributorMetadata: nil, canManageTemplates: "canManageTemplates_example", canManageTemplatesMetadata: nil, canSendAPIRequests: "canSendAPIRequests_example", canSendAPIRequestsMetadata: nil, canSendEnvelope: "canSendEnvelope_example", canSendEnvelopeMetadata: nil, canSignEnvelope: "canSignEnvelope_example", canSignEnvelopeMetadata: nil, canUseScratchpad: "canUseScratchpad_example", canUseScratchpadMetadata: nil, canUseSmartContracts: "canUseSmartContracts_example", canUseSmartContractsMetadata: nil, disableDocumentUpload: "disableDocumentUpload_example", disableDocumentUploadMetadata: nil, disableOtherActions: "disableOtherActions_example", disableOtherActionsMetadata: nil, enableDSPro: "enableDSPro_example", enableDSProMetadata: nil, enableSequentialSigningAPI: "enableSequentialSigningAPI_example", enableSequentialSigningAPIMetadata: nil, enableSequentialSigningUI: "enableSequentialSigningUI_example", enableSequentialSigningUIMetadata: nil, enableSignerAttachments: "enableSignerAttachments_example", enableSignerAttachmentsMetadata: nil, enableSignOnPaperOverride: "enableSignOnPaperOverride_example", enableSignOnPaperOverrideMetadata: nil, enableTransactionPoint: "enableTransactionPoint_example", enableTransactionPointMetadata: nil, enableVaulting: "enableVaulting_example", enableVaultingMetadata: nil, expressSendOnly: "expressSendOnly_example", locale: "locale_example", localeMetadata: nil, localePolicy: localePolicy(addressFormat: "addressFormat_example", addressFormatMetadata: nil, allowRegion: "allowRegion_example", calendarType: "calendarType_example", calendarTypeMetadata: nil, cultureName: "cultureName_example", cultureNameMetadata: nil, currencyCode: "currencyCode_example", currencyCodeMetadata: nil, currencyNegativeFormat: "currencyNegativeFormat_example", currencyNegativeFormatMetadata: nil, currencyPositiveFormat: "currencyPositiveFormat_example", currencyPositiveFormatMetadata: nil, customDateFormat: "customDateFormat_example", customSignDateFormat: "customSignDateFormat_example", customSignTimeFormat: "customSignTimeFormat_example", customTimeFormat: "customTimeFormat_example", dateFormat: "dateFormat_example", dateFormatMetadata: nil, effectiveAddressFormat: "effectiveAddressFormat_example", effectiveCalendarType: "effectiveCalendarType_example", effectiveCurrencyCode: "effectiveCurrencyCode_example", effectiveCurrencyNegativeFormat: "effectiveCurrencyNegativeFormat_example", effectiveCurrencyPositiveFormat: "effectiveCurrencyPositiveFormat_example", effectiveCustomDateFormat: "effectiveCustomDateFormat_example", effectiveCustomTimeFormat: "effectiveCustomTimeFormat_example", effectiveDateFormat: "effectiveDateFormat_example", effectiveInitialFormat: "effectiveInitialFormat_example", effectiveNameFormat: "effectiveNameFormat_example", effectiveTimeFormat: "effectiveTimeFormat_example", effectiveTimeZone: "effectiveTimeZone_example", initialFormat: "initialFormat_example", initialFormatMetadata: nil, nameFormat: "nameFormat_example", nameFormatMetadata: nil, signDateFormat: "signDateFormat_example", signDateFormatMetadata: nil, signTimeFormat: "signTimeFormat_example", signTimeFormatMetadata: nil, timeFormat: "timeFormat_example", timeFormatMetadata: nil, timeZone: "timeZone_example", timeZoneMetadata: nil), manageClickwrapsMode: "manageClickwrapsMode_example", manageClickwrapsModeMetadata: nil, modifiedBy: "modifiedBy_example", modifiedByMetadata: nil, modifiedDate: "modifiedDate_example", modifiedDateMetadata: nil, modifiedPage: "modifiedPage_example", modifiedPageMetadata: nil, newSendUI: "newSendUI_example", newSendUIMetadata: nil, powerFormMode: "powerFormMode_example", powerFormModeMetadata: nil, recipientViewedNotification: "recipientViewedNotification_example", recipientViewedNotificationMetadata: nil, sealIdentifiers: [sealIdentifier(sealDisplayName: "sealDisplayName_example", sealName: "sealName_example")], selfSignedRecipientEmailDocument: "selfSignedRecipientEmailDocument_example", selfSignedRecipientEmailDocumentMetadata: nil, senderEmailNotifications: senderEmailNotifications(changedSigner: "changedSigner_example", commentsOnlyPrivateAndMention: "commentsOnlyPrivateAndMention_example", commentsReceiveAll: "commentsReceiveAll_example", deliveryFailed: "deliveryFailed_example", envelopeComplete: "envelopeComplete_example", offlineSigningFailed: "offlineSigningFailed_example", powerformResponsesLimitNotificationEmail: "powerformResponsesLimitNotificationEmail_example", purgeDocuments: "purgeDocuments_example", recipientViewed: "recipientViewed_example", senderEnvelopeDeclined: "senderEnvelopeDeclined_example", withdrawnConsent: "withdrawnConsent_example"), signerEmailNotifications: signerEmailNotifications(agentNotification: "agentNotification_example", carbonCopyNotification: "carbonCopyNotification_example", certifiedDeliveryNotification: "certifiedDeliveryNotification_example", commentsOnlyPrivateAndMention: "commentsOnlyPrivateAndMention_example", commentsReceiveAll: "commentsReceiveAll_example", documentMarkupActivation: "documentMarkupActivation_example", envelopeActivation: "envelopeActivation_example", envelopeComplete: "envelopeComplete_example", envelopeCorrected: "envelopeCorrected_example", envelopeDeclined: "envelopeDeclined_example", envelopeVoided: "envelopeVoided_example", faxReceived: "faxReceived_example", offlineSigningFailed: "offlineSigningFailed_example", purgeDocuments: "purgeDocuments_example", reassignedSigner: "reassignedSigner_example", whenSigningGroupMember: "whenSigningGroupMember_example"), supplementalDocumentIncludeInDownload: "supplementalDocumentIncludeInDownload_example", supplementalDocumentsMustAccept: "supplementalDocumentsMustAccept_example", supplementalDocumentsMustAcceptMetadata: nil, supplementalDocumentsMustRead: "supplementalDocumentsMustRead_example", supplementalDocumentsMustReadMetadata: nil, supplementalDocumentsMustView: "supplementalDocumentsMustView_example", supplementalDocumentsMustViewMetadata: nil, templateActiveCreation: "templateActiveCreation_example", templateActiveCreationMetadata: nil, templateApplyNotify: "templateApplyNotify_example", templateApplyNotifyMetadata: nil, templateAutoMatching: "templateAutoMatching_example", templateAutoMatchingMetadata: nil, templateMatchingSensitivity: "templateMatchingSensitivity_example", templateMatchingSensitivityMetadata: nil, templatePageLevelMatching: "templatePageLevelMatching_example", templatePageLevelMatchingMetadata: nil, timezoneDST: "timezoneDST_example", timezoneDSTMetadata: nil, timezoneMask: "timezoneMask_example", timezoneMaskMetadata: nil, timezoneOffset: "timezoneOffset_example", timezoneOffsetMetadata: nil, timezoneSendingPref: "timezoneSendingPref_example", timezoneSendingPrefMetadata: nil, timezoneSigningPref: "timezoneSigningPref_example", timezoneSigningPrefMetadata: nil, transactionPointSiteNameURL: "transactionPointSiteNameURL_example", transactionPointSiteNameURLMetadata: nil, transactionPointUserName: "transactionPointUserName_example", transactionPointUserNameMetadata: nil, vaultingMode: "vaultingMode_example", vaultingModeMetadata: nil), userStatus: "userStatus_example", userType: "userType_example", workAddress: nil)) // Notary |  (optional)

// Updates notary information for the current user.
NotaryAPI.notaryPutNotary(notary: notary).whenComplete { result in
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
 **notary** | [**Notary**](Notary.md) |  | [optional] 

### Return type

#### NotaryPutNotary

```swift
public enum NotaryPutNotary {
    case http200(value: Notary?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Notary?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

