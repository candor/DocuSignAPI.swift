# UserProfilesAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userProfileGetProfile**](UserProfilesAPI.md#userprofilegetprofile) | **GET** /v2.1/accounts/{accountId}/users/{userId}/profile | Retrieves the user profile for a specified user.
[**userProfilePutProfile**](UserProfilesAPI.md#userprofileputprofile) | **PUT** /v2.1/accounts/{accountId}/users/{userId}/profile | Updates the user profile information for the specified user.


# **userProfileGetProfile**
```swift
    open class func userProfileGetProfile(accountId: String, userId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<UserProfileGetProfile>
```

Retrieves the user profile for a specified user.

Retrieves the user profile information, the privacy settings and personal information (address, phone number, etc.) for the specified user.  The userId parameter specified in the endpoint must match the authenticated user's user ID and the user must be a member of the specified account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let userId = "userId_example" // String | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing. 

// Retrieves the user profile for a specified user.
UserProfilesAPI.userProfileGetProfile(accountId: accountId, userId: userId).whenComplete { result in
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
 **userId** | **String** | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, &#x60;userId&#x60; can represent another user whom the Administrator is accessing.  | 

### Return type

#### UserProfileGetProfile

```swift
public enum UserProfileGetProfile {
    case http200(value: UserProfile?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: UserProfile?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userProfilePutProfile**
```swift
    open class func userProfilePutProfile(accountId: String, userId: String, userProfile: UserProfile? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<UserProfilePutProfile>
```

Updates the user profile information for the specified user.

Updates the user's detail information, profile information, privacy settings, and personal information in the user ID card.  You can also change a user's name by changing the information in the `userDetails` property. When changing a user's name, you can either change the information in the `userName` property OR change the information in `firstName`, `middleName`, `lastName, suffixName`, and `title` properties. Changes to `firstName`, `middleName`, `lastName`, `suffixName`, and `title` properties take precedence over changes to the `userName` property.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let userId = "userId_example" // String | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing. 
let userProfile = userProfile(address: addressInformation(address1: "address1_example", address2: "address2_example", city: "city_example", country: "country_example", fax: "fax_example", phone: "phone_example", postalCode: "postalCode_example", stateOrProvince: "stateOrProvince_example", zipPlus4: "zipPlus4_example"), authenticationMethods: [authenticationMethod(authenticationType: "authenticationType_example", lastProvider: "lastProvider_example", lastTimestamp: "lastTimestamp_example", totalCount: "totalCount_example")], companyName: "companyName_example", displayOrganizationInfo: "displayOrganizationInfo_example", displayPersonalInfo: "displayPersonalInfo_example", displayProfile: "displayProfile_example", displayUsageHistory: "displayUsageHistory_example", profileImageUri: "profileImageUri_example", title: "title_example", usageHistory: usageHistory(lastSentDateTime: "lastSentDateTime_example", lastSignedDateTime: "lastSignedDateTime_example", sentCount: "sentCount_example", signedCount: "signedCount_example"), userDetails: userInformation(activationAccessCode: "activationAccessCode_example", company: "company_example", connectConfigurations: [connectUserObject(configurationtype: "configurationtype_example", connectId: "connectId_example", enabled: "enabled_example", hasAccess: "hasAccess_example", senderSearchableItems: ["senderSearchableItems_example"])], countryCode: "countryCode_example", createdDateTime: "createdDateTime_example", customSettings: [nameValue(errorDetails: errorDetails(errorCode: "errorCode_example", message: "message_example"), name: "name_example", originalValue: "originalValue_example", value: "value_example")], defaultAccountId: "defaultAccountId_example", email: "email_example", enableConnectForUser: "enableConnectForUser_example", errorDetails: nil, firstName: "firstName_example", forgottenPasswordInfo: forgottenPasswordInformation(forgottenPasswordAnswer1: "forgottenPasswordAnswer1_example", forgottenPasswordAnswer2: "forgottenPasswordAnswer2_example", forgottenPasswordAnswer3: "forgottenPasswordAnswer3_example", forgottenPasswordAnswer4: "forgottenPasswordAnswer4_example", forgottenPasswordQuestion1: "forgottenPasswordQuestion1_example", forgottenPasswordQuestion2: "forgottenPasswordQuestion2_example", forgottenPasswordQuestion3: "forgottenPasswordQuestion3_example", forgottenPasswordQuestion4: "forgottenPasswordQuestion4_example"), groupList: [group(errorDetails: nil, groupId: "groupId_example", groupName: "groupName_example", groupType: "groupType_example", permissionProfileId: "permissionProfileId_example", users: [userInfo(accountId: "accountId_example", accountName: "accountName_example", activationAccessCode: "activationAccessCode_example", email: "email_example", errorDetails: nil, loginStatus: "loginStatus_example", membershipId: "membershipId_example", sendActivationEmail: "sendActivationEmail_example", uri: "uri_example", userId: "userId_example", userName: "userName_example", userStatus: "userStatus_example", userType: "userType_example")], usersCount: "usersCount_example")], homeAddress: nil, initialsImageUri: "initialsImageUri_example", isAdmin: "isAdmin_example", isNAREnabled: "isNAREnabled_example", jobTitle: "jobTitle_example", lastLogin: "lastLogin_example", lastName: "lastName_example", loginStatus: "loginStatus_example", middleName: "middleName_example", password: "password_example", passwordExpiration: "passwordExpiration_example", permissionProfileId: "permissionProfileId_example", permissionProfileName: "permissionProfileName_example", profileImageUri: "profileImageUri_example", sendActivationEmail: "sendActivationEmail_example", sendActivationOnInvalidLogin: "sendActivationOnInvalidLogin_example", signatureImageUri: "signatureImageUri_example", subscribe: "subscribe_example", suffixName: "suffixName_example", title: "title_example", uri: "uri_example", userAddedToAccountDateTime: "userAddedToAccountDateTime_example", userId: "userId_example", userName: "userName_example", userProfileLastModifiedDate: "userProfileLastModifiedDate_example", userSettings: userSettingsInformation(accountManagementGranular: userAccountManagementGranularInformation(canManageAccountSecuritySettings: "canManageAccountSecuritySettings_example", canManageAccountSecuritySettingsMetadata: settingsMetadata(is21CFRPart11: "is21CFRPart11_example", options: ["options_example"], rights: "rights_example", uiHint: "uiHint_example", uiOrder: "uiOrder_example", uiType: "uiType_example"), canManageAccountSettings: "canManageAccountSettings_example", canManageAccountSettingsMetadata: nil, canManageAdmins: "canManageAdmins_example", canManageAdminsMetadata: nil, canManageEnvelopeTransfer: "canManageEnvelopeTransfer_example", canManageEnvelopeTransferMetadata: nil, canManageReporting: "canManageReporting_example", canManageReportingMetadata: nil, canManageSharing: "canManageSharing_example", canManageSharingMetadata: nil, canManageSigningGroups: "canManageSigningGroups_example", canManageSigningGroupsMetadata: nil, canManageUsers: "canManageUsers_example", canManageUsersMetadata: nil, canViewUsers: "canViewUsers_example"), adminOnly: "adminOnly_example", adminOnlyMetadata: nil, allowAutoTagging: "allowAutoTagging_example", allowEnvelopeTransferTo: "allowEnvelopeTransferTo_example", allowEnvelopeTransferToMetadata: nil, allowEsealRecipients: "allowEsealRecipients_example", allowEsealRecipientsMetadata: nil, allowPowerFormsAdminToAccessAllPowerFormEnvelope: "allowPowerFormsAdminToAccessAllPowerFormEnvelope_example", allowPowerFormsAdminToAccessAllPowerFormEnvelopeMetadata: nil, allowRecipientLanguageSelection: "allowRecipientLanguageSelection_example", allowRecipientLanguageSelectionMetadata: nil, allowSendOnBehalfOf: "allowSendOnBehalfOf_example", allowSendOnBehalfOfMetadata: nil, allowSupplementalDocuments: "allowSupplementalDocuments_example", allowSupplementalDocumentsMetadata: nil, anchorTagVersionedPlacementEnabled: "anchorTagVersionedPlacementEnabled_example", apiAccountWideAccess: "apiAccountWideAccess_example", apiAccountWideAccessMetadata: nil, apiCanExportAC: "apiCanExportAC_example", apiCanExportACMetadata: nil, bulkSend: "bulkSend_example", bulkSendMetadata: nil, canChargeAccount: "canChargeAccount_example", canChargeAccountMetadata: nil, canEditSharedAddressbook: "canEditSharedAddressbook_example", canEditSharedAddressbookMetadata: nil, canLockEnvelopes: "canLockEnvelopes_example", canLockEnvelopesMetadata: nil, canManageAccount: "canManageAccount_example", canManageAccountMetadata: nil, canManageDistributor: "canManageDistributor_example", canManageDistributorMetadata: nil, canManageTemplates: "canManageTemplates_example", canManageTemplatesMetadata: nil, canSendAPIRequests: "canSendAPIRequests_example", canSendAPIRequestsMetadata: nil, canSendEnvelope: "canSendEnvelope_example", canSendEnvelopeMetadata: nil, canSignEnvelope: "canSignEnvelope_example", canSignEnvelopeMetadata: nil, canUseScratchpad: "canUseScratchpad_example", canUseScratchpadMetadata: nil, canUseSmartContracts: "canUseSmartContracts_example", canUseSmartContractsMetadata: nil, disableDocumentUpload: "disableDocumentUpload_example", disableDocumentUploadMetadata: nil, disableOtherActions: "disableOtherActions_example", disableOtherActionsMetadata: nil, enableDSPro: "enableDSPro_example", enableDSProMetadata: nil, enableSequentialSigningAPI: "enableSequentialSigningAPI_example", enableSequentialSigningAPIMetadata: nil, enableSequentialSigningUI: "enableSequentialSigningUI_example", enableSequentialSigningUIMetadata: nil, enableSignerAttachments: "enableSignerAttachments_example", enableSignerAttachmentsMetadata: nil, enableSignOnPaperOverride: "enableSignOnPaperOverride_example", enableSignOnPaperOverrideMetadata: nil, enableTransactionPoint: "enableTransactionPoint_example", enableTransactionPointMetadata: nil, enableVaulting: "enableVaulting_example", enableVaultingMetadata: nil, expressSendOnly: "expressSendOnly_example", locale: "locale_example", localeMetadata: nil, localePolicy: localePolicy(addressFormat: "addressFormat_example", addressFormatMetadata: nil, allowRegion: "allowRegion_example", calendarType: "calendarType_example", calendarTypeMetadata: nil, cultureName: "cultureName_example", cultureNameMetadata: nil, currencyCode: "currencyCode_example", currencyCodeMetadata: nil, currencyNegativeFormat: "currencyNegativeFormat_example", currencyNegativeFormatMetadata: nil, currencyPositiveFormat: "currencyPositiveFormat_example", currencyPositiveFormatMetadata: nil, customDateFormat: "customDateFormat_example", customSignDateFormat: "customSignDateFormat_example", customSignTimeFormat: "customSignTimeFormat_example", customTimeFormat: "customTimeFormat_example", dateFormat: "dateFormat_example", dateFormatMetadata: nil, effectiveAddressFormat: "effectiveAddressFormat_example", effectiveCalendarType: "effectiveCalendarType_example", effectiveCurrencyCode: "effectiveCurrencyCode_example", effectiveCurrencyNegativeFormat: "effectiveCurrencyNegativeFormat_example", effectiveCurrencyPositiveFormat: "effectiveCurrencyPositiveFormat_example", effectiveCustomDateFormat: "effectiveCustomDateFormat_example", effectiveCustomTimeFormat: "effectiveCustomTimeFormat_example", effectiveDateFormat: "effectiveDateFormat_example", effectiveInitialFormat: "effectiveInitialFormat_example", effectiveNameFormat: "effectiveNameFormat_example", effectiveTimeFormat: "effectiveTimeFormat_example", effectiveTimeZone: "effectiveTimeZone_example", initialFormat: "initialFormat_example", initialFormatMetadata: nil, nameFormat: "nameFormat_example", nameFormatMetadata: nil, signDateFormat: "signDateFormat_example", signDateFormatMetadata: nil, signTimeFormat: "signTimeFormat_example", signTimeFormatMetadata: nil, timeFormat: "timeFormat_example", timeFormatMetadata: nil, timeZone: "timeZone_example", timeZoneMetadata: nil), manageClickwrapsMode: "manageClickwrapsMode_example", manageClickwrapsModeMetadata: nil, modifiedBy: "modifiedBy_example", modifiedByMetadata: nil, modifiedDate: "modifiedDate_example", modifiedDateMetadata: nil, modifiedPage: "modifiedPage_example", modifiedPageMetadata: nil, newSendUI: "newSendUI_example", newSendUIMetadata: nil, powerFormMode: "powerFormMode_example", powerFormModeMetadata: nil, recipientViewedNotification: "recipientViewedNotification_example", recipientViewedNotificationMetadata: nil, sealIdentifiers: [sealIdentifier(sealDisplayName: "sealDisplayName_example", sealName: "sealName_example")], selfSignedRecipientEmailDocument: "selfSignedRecipientEmailDocument_example", selfSignedRecipientEmailDocumentMetadata: nil, senderEmailNotifications: senderEmailNotifications(changedSigner: "changedSigner_example", commentsOnlyPrivateAndMention: "commentsOnlyPrivateAndMention_example", commentsReceiveAll: "commentsReceiveAll_example", deliveryFailed: "deliveryFailed_example", envelopeComplete: "envelopeComplete_example", offlineSigningFailed: "offlineSigningFailed_example", powerformResponsesLimitNotificationEmail: "powerformResponsesLimitNotificationEmail_example", purgeDocuments: "purgeDocuments_example", recipientViewed: "recipientViewed_example", senderEnvelopeDeclined: "senderEnvelopeDeclined_example", withdrawnConsent: "withdrawnConsent_example"), signerEmailNotifications: signerEmailNotifications(agentNotification: "agentNotification_example", carbonCopyNotification: "carbonCopyNotification_example", certifiedDeliveryNotification: "certifiedDeliveryNotification_example", commentsOnlyPrivateAndMention: "commentsOnlyPrivateAndMention_example", commentsReceiveAll: "commentsReceiveAll_example", documentMarkupActivation: "documentMarkupActivation_example", envelopeActivation: "envelopeActivation_example", envelopeComplete: "envelopeComplete_example", envelopeCorrected: "envelopeCorrected_example", envelopeDeclined: "envelopeDeclined_example", envelopeVoided: "envelopeVoided_example", faxReceived: "faxReceived_example", offlineSigningFailed: "offlineSigningFailed_example", purgeDocuments: "purgeDocuments_example", reassignedSigner: "reassignedSigner_example", whenSigningGroupMember: "whenSigningGroupMember_example"), supplementalDocumentIncludeInDownload: "supplementalDocumentIncludeInDownload_example", supplementalDocumentsMustAccept: "supplementalDocumentsMustAccept_example", supplementalDocumentsMustAcceptMetadata: nil, supplementalDocumentsMustRead: "supplementalDocumentsMustRead_example", supplementalDocumentsMustReadMetadata: nil, supplementalDocumentsMustView: "supplementalDocumentsMustView_example", supplementalDocumentsMustViewMetadata: nil, templateActiveCreation: "templateActiveCreation_example", templateActiveCreationMetadata: nil, templateApplyNotify: "templateApplyNotify_example", templateApplyNotifyMetadata: nil, templateAutoMatching: "templateAutoMatching_example", templateAutoMatchingMetadata: nil, templateMatchingSensitivity: "templateMatchingSensitivity_example", templateMatchingSensitivityMetadata: nil, templatePageLevelMatching: "templatePageLevelMatching_example", templatePageLevelMatchingMetadata: nil, timezoneDST: "timezoneDST_example", timezoneDSTMetadata: nil, timezoneMask: "timezoneMask_example", timezoneMaskMetadata: nil, timezoneOffset: "timezoneOffset_example", timezoneOffsetMetadata: nil, timezoneSendingPref: "timezoneSendingPref_example", timezoneSendingPrefMetadata: nil, timezoneSigningPref: "timezoneSigningPref_example", timezoneSigningPrefMetadata: nil, transactionPointSiteNameURL: "transactionPointSiteNameURL_example", transactionPointSiteNameURLMetadata: nil, transactionPointUserName: "transactionPointUserName_example", transactionPointUserNameMetadata: nil, vaultingMode: "vaultingMode_example", vaultingModeMetadata: nil), userStatus: "userStatus_example", userType: "userType_example", workAddress: nil), userProfileLastModifiedDate: "userProfileLastModifiedDate_example") // UserProfile |  (optional)

// Updates the user profile information for the specified user.
UserProfilesAPI.userProfilePutProfile(accountId: accountId, userId: userId, userProfile: userProfile).whenComplete { result in
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
 **userId** | **String** | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, &#x60;userId&#x60; can represent another user whom the Administrator is accessing.  | 
 **userProfile** | [**UserProfile**](UserProfile.md) |  | [optional] 

### Return type

#### UserProfilePutProfile

```swift
public enum UserProfilePutProfile {
    case http200(value: Void?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Void?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

