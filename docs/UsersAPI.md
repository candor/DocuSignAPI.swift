# UsersAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userGetUser**](UsersAPI.md#usergetuser) | **GET** /v2.1/accounts/{accountId}/users/{userId} | Gets the user information for a specified user.
[**userProfileImageDeleteUserProfileImage**](UsersAPI.md#userprofileimagedeleteuserprofileimage) | **DELETE** /v2.1/accounts/{accountId}/users/{userId}/profile/image | Deletes the user profile image for the specified user.
[**userProfileImageGetUserProfileImage**](UsersAPI.md#userprofileimagegetuserprofileimage) | **GET** /v2.1/accounts/{accountId}/users/{userId}/profile/image | Retrieves the user profile image for the specified user.
[**userProfileImagePutUserProfileImage**](UsersAPI.md#userprofileimageputuserprofileimage) | **PUT** /v2.1/accounts/{accountId}/users/{userId}/profile/image | Updates the user profile image for a specified user.
[**userPutUser**](UsersAPI.md#userputuser) | **PUT** /v2.1/accounts/{accountId}/users/{userId} | Updates user information for the specified user.
[**userSettingsGetUserSettings**](UsersAPI.md#usersettingsgetusersettings) | **GET** /v2.1/accounts/{accountId}/users/{userId}/settings | Gets the user account settings for a specified user.
[**userSettingsPutUserSettings**](UsersAPI.md#usersettingsputusersettings) | **PUT** /v2.1/accounts/{accountId}/users/{userId}/settings | Updates the user account settings for a specified user.
[**usersDeleteUsers**](UsersAPI.md#usersdeleteusers) | **DELETE** /v2.1/accounts/{accountId}/users | Removes users account privileges.
[**usersGetUsers**](UsersAPI.md#usersgetusers) | **GET** /v2.1/accounts/{accountId}/users | Retrieves the list of users for the specified account.
[**usersPostUsers**](UsersAPI.md#userspostusers) | **POST** /v2.1/accounts/{accountId}/users | Adds new users to the specified account.
[**usersPutUsers**](UsersAPI.md#usersputusers) | **PUT** /v2.1/accounts/{accountId}/users | Changes one or more users in the specified account.


# **userGetUser**
```swift
    open class func userGetUser(accountId: String, userId: String, additionalInfo: String? = nil, email: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<UserGetUser>
```

Gets the user information for a specified user.

Retrieves the user information for the specified user.   To return additional user information that details the last login date, login status, and the user's password expiration date, set the optional `additional_info` query string parameter to **true**.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let userId = "userId_example" // String | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing. 
let additionalInfo = "additionalInfo_example" // String | Setting this parameter has no effect in this operation. (optional)
let email = "email_example" // String | Setting this parameter has no effect in this operation. (optional)

// Gets the user information for a specified user.
UsersAPI.userGetUser(accountId: accountId, userId: userId, additionalInfo: additionalInfo, email: email).whenComplete { result in
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
 **additionalInfo** | **String** | Setting this parameter has no effect in this operation. | [optional] 
 **email** | **String** | Setting this parameter has no effect in this operation. | [optional] 

### Return type

#### UserGetUser

```swift
public enum UserGetUser {
    case http200(value: UserInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: UserInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userProfileImageDeleteUserProfileImage**
```swift
    open class func userProfileImageDeleteUserProfileImage(accountId: String, userId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<UserProfileImageDeleteUserProfileImage>
```

Deletes the user profile image for the specified user.

Deletes the user profile image from the  specified user's profile.  The userId parameter specified in the endpoint must match the authenticated user's user ID and the user must be a member of the specified account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let userId = "userId_example" // String | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing. 

// Deletes the user profile image for the specified user.
UsersAPI.userProfileImageDeleteUserProfileImage(accountId: accountId, userId: userId).whenComplete { result in
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

#### UserProfileImageDeleteUserProfileImage

```swift
public enum UserProfileImageDeleteUserProfileImage {
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

# **userProfileImageGetUserProfileImage**
```swift
    open class func userProfileImageGetUserProfileImage(accountId: String, userId: String, encoding: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<UserProfileImageGetUserProfileImage>
```

Retrieves the user profile image for the specified user.

Retrieves the user profile picture for the specified user. The image is returned in the same format as uploaded.  The userId parameter specified in the endpoint must match the authenticated user's user ID and the user must be a member of the specified account.  If successful, the response returns a 200 - OK and the user profile image.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let userId = "userId_example" // String | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing. 
let encoding = "encoding_example" // String | Reserved for DocuSign. (optional)

// Retrieves the user profile image for the specified user.
UsersAPI.userProfileImageGetUserProfileImage(accountId: accountId, userId: userId, encoding: encoding).whenComplete { result in
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
 **encoding** | **String** | Reserved for DocuSign. | [optional] 

### Return type

#### UserProfileImageGetUserProfileImage

```swift
public enum UserProfileImageGetUserProfileImage {
    case http200(value: Data?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Data?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/gif

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userProfileImagePutUserProfileImage**
```swift
    open class func userProfileImagePutUserProfileImage(accountId: String, userId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<UserProfileImagePutUserProfileImage>
```

Updates the user profile image for a specified user.

Updates the user profile image by uploading an image to the user profile.  The supported image formats are: gif, png, jpeg, and bmp. The file must be less than 200K. For best viewing results, DocuSign recommends that the image is no more than 79 pixels wide and high.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let userId = "userId_example" // String | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing. 

// Updates the user profile image for a specified user.
UsersAPI.userProfileImagePutUserProfileImage(accountId: accountId, userId: userId).whenComplete { result in
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

#### UserProfileImagePutUserProfileImage

```swift
public enum UserProfileImagePutUserProfileImage {
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

# **userPutUser**
```swift
    open class func userPutUser(accountId: String, userId: String, userInformation: UserInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<UserPutUser>
```

Updates user information for the specified user.

To update user information for a specific user, submit a [Users](#Users) object with updated field values in the request body of this operation.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let userId = "userId_example" // String | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing. 
let userInformation = userInformation(activationAccessCode: "activationAccessCode_example", company: "company_example", connectConfigurations: [connectUserObject(configurationtype: "configurationtype_example", connectId: "connectId_example", enabled: "enabled_example", hasAccess: "hasAccess_example", senderSearchableItems: ["senderSearchableItems_example"])], countryCode: "countryCode_example", createdDateTime: "createdDateTime_example", customSettings: [nameValue(errorDetails: errorDetails(errorCode: "errorCode_example", message: "message_example"), name: "name_example", originalValue: "originalValue_example", value: "value_example")], defaultAccountId: "defaultAccountId_example", email: "email_example", enableConnectForUser: "enableConnectForUser_example", errorDetails: nil, firstName: "firstName_example", forgottenPasswordInfo: forgottenPasswordInformation(forgottenPasswordAnswer1: "forgottenPasswordAnswer1_example", forgottenPasswordAnswer2: "forgottenPasswordAnswer2_example", forgottenPasswordAnswer3: "forgottenPasswordAnswer3_example", forgottenPasswordAnswer4: "forgottenPasswordAnswer4_example", forgottenPasswordQuestion1: "forgottenPasswordQuestion1_example", forgottenPasswordQuestion2: "forgottenPasswordQuestion2_example", forgottenPasswordQuestion3: "forgottenPasswordQuestion3_example", forgottenPasswordQuestion4: "forgottenPasswordQuestion4_example"), groupList: [group(errorDetails: nil, groupId: "groupId_example", groupName: "groupName_example", groupType: "groupType_example", permissionProfileId: "permissionProfileId_example", users: [userInfo(accountId: "accountId_example", accountName: "accountName_example", activationAccessCode: "activationAccessCode_example", email: "email_example", errorDetails: nil, loginStatus: "loginStatus_example", membershipId: "membershipId_example", sendActivationEmail: "sendActivationEmail_example", uri: "uri_example", userId: "userId_example", userName: "userName_example", userStatus: "userStatus_example", userType: "userType_example")], usersCount: "usersCount_example")], homeAddress: addressInformation(address1: "address1_example", address2: "address2_example", city: "city_example", country: "country_example", fax: "fax_example", phone: "phone_example", postalCode: "postalCode_example", stateOrProvince: "stateOrProvince_example", zipPlus4: "zipPlus4_example"), initialsImageUri: "initialsImageUri_example", isAdmin: "isAdmin_example", isNAREnabled: "isNAREnabled_example", jobTitle: "jobTitle_example", lastLogin: "lastLogin_example", lastName: "lastName_example", loginStatus: "loginStatus_example", middleName: "middleName_example", password: "password_example", passwordExpiration: "passwordExpiration_example", permissionProfileId: "permissionProfileId_example", permissionProfileName: "permissionProfileName_example", profileImageUri: "profileImageUri_example", sendActivationEmail: "sendActivationEmail_example", sendActivationOnInvalidLogin: "sendActivationOnInvalidLogin_example", signatureImageUri: "signatureImageUri_example", subscribe: "subscribe_example", suffixName: "suffixName_example", title: "title_example", uri: "uri_example", userAddedToAccountDateTime: "userAddedToAccountDateTime_example", userId: "userId_example", userName: "userName_example", userProfileLastModifiedDate: "userProfileLastModifiedDate_example", userSettings: userSettingsInformation(accountManagementGranular: userAccountManagementGranularInformation(canManageAccountSecuritySettings: "canManageAccountSecuritySettings_example", canManageAccountSecuritySettingsMetadata: settingsMetadata(is21CFRPart11: "is21CFRPart11_example", options: ["options_example"], rights: "rights_example", uiHint: "uiHint_example", uiOrder: "uiOrder_example", uiType: "uiType_example"), canManageAccountSettings: "canManageAccountSettings_example", canManageAccountSettingsMetadata: nil, canManageAdmins: "canManageAdmins_example", canManageAdminsMetadata: nil, canManageEnvelopeTransfer: "canManageEnvelopeTransfer_example", canManageEnvelopeTransferMetadata: nil, canManageReporting: "canManageReporting_example", canManageReportingMetadata: nil, canManageSharing: "canManageSharing_example", canManageSharingMetadata: nil, canManageSigningGroups: "canManageSigningGroups_example", canManageSigningGroupsMetadata: nil, canManageUsers: "canManageUsers_example", canManageUsersMetadata: nil, canViewUsers: "canViewUsers_example"), adminOnly: "adminOnly_example", adminOnlyMetadata: nil, allowAutoTagging: "allowAutoTagging_example", allowEnvelopeTransferTo: "allowEnvelopeTransferTo_example", allowEnvelopeTransferToMetadata: nil, allowEsealRecipients: "allowEsealRecipients_example", allowEsealRecipientsMetadata: nil, allowPowerFormsAdminToAccessAllPowerFormEnvelope: "allowPowerFormsAdminToAccessAllPowerFormEnvelope_example", allowPowerFormsAdminToAccessAllPowerFormEnvelopeMetadata: nil, allowRecipientLanguageSelection: "allowRecipientLanguageSelection_example", allowRecipientLanguageSelectionMetadata: nil, allowSendOnBehalfOf: "allowSendOnBehalfOf_example", allowSendOnBehalfOfMetadata: nil, allowSupplementalDocuments: "allowSupplementalDocuments_example", allowSupplementalDocumentsMetadata: nil, anchorTagVersionedPlacementEnabled: "anchorTagVersionedPlacementEnabled_example", apiAccountWideAccess: "apiAccountWideAccess_example", apiAccountWideAccessMetadata: nil, apiCanExportAC: "apiCanExportAC_example", apiCanExportACMetadata: nil, bulkSend: "bulkSend_example", bulkSendMetadata: nil, canChargeAccount: "canChargeAccount_example", canChargeAccountMetadata: nil, canEditSharedAddressbook: "canEditSharedAddressbook_example", canEditSharedAddressbookMetadata: nil, canLockEnvelopes: "canLockEnvelopes_example", canLockEnvelopesMetadata: nil, canManageAccount: "canManageAccount_example", canManageAccountMetadata: nil, canManageDistributor: "canManageDistributor_example", canManageDistributorMetadata: nil, canManageTemplates: "canManageTemplates_example", canManageTemplatesMetadata: nil, canSendAPIRequests: "canSendAPIRequests_example", canSendAPIRequestsMetadata: nil, canSendEnvelope: "canSendEnvelope_example", canSendEnvelopeMetadata: nil, canSignEnvelope: "canSignEnvelope_example", canSignEnvelopeMetadata: nil, canUseScratchpad: "canUseScratchpad_example", canUseScratchpadMetadata: nil, canUseSmartContracts: "canUseSmartContracts_example", canUseSmartContractsMetadata: nil, disableDocumentUpload: "disableDocumentUpload_example", disableDocumentUploadMetadata: nil, disableOtherActions: "disableOtherActions_example", disableOtherActionsMetadata: nil, enableDSPro: "enableDSPro_example", enableDSProMetadata: nil, enableSequentialSigningAPI: "enableSequentialSigningAPI_example", enableSequentialSigningAPIMetadata: nil, enableSequentialSigningUI: "enableSequentialSigningUI_example", enableSequentialSigningUIMetadata: nil, enableSignerAttachments: "enableSignerAttachments_example", enableSignerAttachmentsMetadata: nil, enableSignOnPaperOverride: "enableSignOnPaperOverride_example", enableSignOnPaperOverrideMetadata: nil, enableTransactionPoint: "enableTransactionPoint_example", enableTransactionPointMetadata: nil, enableVaulting: "enableVaulting_example", enableVaultingMetadata: nil, expressSendOnly: "expressSendOnly_example", locale: "locale_example", localeMetadata: nil, localePolicy: localePolicy(addressFormat: "addressFormat_example", addressFormatMetadata: nil, allowRegion: "allowRegion_example", calendarType: "calendarType_example", calendarTypeMetadata: nil, cultureName: "cultureName_example", cultureNameMetadata: nil, currencyCode: "currencyCode_example", currencyCodeMetadata: nil, currencyNegativeFormat: "currencyNegativeFormat_example", currencyNegativeFormatMetadata: nil, currencyPositiveFormat: "currencyPositiveFormat_example", currencyPositiveFormatMetadata: nil, customDateFormat: "customDateFormat_example", customSignDateFormat: "customSignDateFormat_example", customSignTimeFormat: "customSignTimeFormat_example", customTimeFormat: "customTimeFormat_example", dateFormat: "dateFormat_example", dateFormatMetadata: nil, effectiveAddressFormat: "effectiveAddressFormat_example", effectiveCalendarType: "effectiveCalendarType_example", effectiveCurrencyCode: "effectiveCurrencyCode_example", effectiveCurrencyNegativeFormat: "effectiveCurrencyNegativeFormat_example", effectiveCurrencyPositiveFormat: "effectiveCurrencyPositiveFormat_example", effectiveCustomDateFormat: "effectiveCustomDateFormat_example", effectiveCustomTimeFormat: "effectiveCustomTimeFormat_example", effectiveDateFormat: "effectiveDateFormat_example", effectiveInitialFormat: "effectiveInitialFormat_example", effectiveNameFormat: "effectiveNameFormat_example", effectiveTimeFormat: "effectiveTimeFormat_example", effectiveTimeZone: "effectiveTimeZone_example", initialFormat: "initialFormat_example", initialFormatMetadata: nil, nameFormat: "nameFormat_example", nameFormatMetadata: nil, signDateFormat: "signDateFormat_example", signDateFormatMetadata: nil, signTimeFormat: "signTimeFormat_example", signTimeFormatMetadata: nil, timeFormat: "timeFormat_example", timeFormatMetadata: nil, timeZone: "timeZone_example", timeZoneMetadata: nil), manageClickwrapsMode: "manageClickwrapsMode_example", manageClickwrapsModeMetadata: nil, modifiedBy: "modifiedBy_example", modifiedByMetadata: nil, modifiedDate: "modifiedDate_example", modifiedDateMetadata: nil, modifiedPage: "modifiedPage_example", modifiedPageMetadata: nil, newSendUI: "newSendUI_example", newSendUIMetadata: nil, powerFormMode: "powerFormMode_example", powerFormModeMetadata: nil, recipientViewedNotification: "recipientViewedNotification_example", recipientViewedNotificationMetadata: nil, sealIdentifiers: [sealIdentifier(sealDisplayName: "sealDisplayName_example", sealName: "sealName_example")], selfSignedRecipientEmailDocument: "selfSignedRecipientEmailDocument_example", selfSignedRecipientEmailDocumentMetadata: nil, senderEmailNotifications: senderEmailNotifications(changedSigner: "changedSigner_example", commentsOnlyPrivateAndMention: "commentsOnlyPrivateAndMention_example", commentsReceiveAll: "commentsReceiveAll_example", deliveryFailed: "deliveryFailed_example", envelopeComplete: "envelopeComplete_example", offlineSigningFailed: "offlineSigningFailed_example", powerformResponsesLimitNotificationEmail: "powerformResponsesLimitNotificationEmail_example", purgeDocuments: "purgeDocuments_example", recipientViewed: "recipientViewed_example", senderEnvelopeDeclined: "senderEnvelopeDeclined_example", withdrawnConsent: "withdrawnConsent_example"), signerEmailNotifications: signerEmailNotifications(agentNotification: "agentNotification_example", carbonCopyNotification: "carbonCopyNotification_example", certifiedDeliveryNotification: "certifiedDeliveryNotification_example", commentsOnlyPrivateAndMention: "commentsOnlyPrivateAndMention_example", commentsReceiveAll: "commentsReceiveAll_example", documentMarkupActivation: "documentMarkupActivation_example", envelopeActivation: "envelopeActivation_example", envelopeComplete: "envelopeComplete_example", envelopeCorrected: "envelopeCorrected_example", envelopeDeclined: "envelopeDeclined_example", envelopeVoided: "envelopeVoided_example", faxReceived: "faxReceived_example", offlineSigningFailed: "offlineSigningFailed_example", purgeDocuments: "purgeDocuments_example", reassignedSigner: "reassignedSigner_example", whenSigningGroupMember: "whenSigningGroupMember_example"), supplementalDocumentIncludeInDownload: "supplementalDocumentIncludeInDownload_example", supplementalDocumentsMustAccept: "supplementalDocumentsMustAccept_example", supplementalDocumentsMustAcceptMetadata: nil, supplementalDocumentsMustRead: "supplementalDocumentsMustRead_example", supplementalDocumentsMustReadMetadata: nil, supplementalDocumentsMustView: "supplementalDocumentsMustView_example", supplementalDocumentsMustViewMetadata: nil, templateActiveCreation: "templateActiveCreation_example", templateActiveCreationMetadata: nil, templateApplyNotify: "templateApplyNotify_example", templateApplyNotifyMetadata: nil, templateAutoMatching: "templateAutoMatching_example", templateAutoMatchingMetadata: nil, templateMatchingSensitivity: "templateMatchingSensitivity_example", templateMatchingSensitivityMetadata: nil, templatePageLevelMatching: "templatePageLevelMatching_example", templatePageLevelMatchingMetadata: nil, timezoneDST: "timezoneDST_example", timezoneDSTMetadata: nil, timezoneMask: "timezoneMask_example", timezoneMaskMetadata: nil, timezoneOffset: "timezoneOffset_example", timezoneOffsetMetadata: nil, timezoneSendingPref: "timezoneSendingPref_example", timezoneSendingPrefMetadata: nil, timezoneSigningPref: "timezoneSigningPref_example", timezoneSigningPrefMetadata: nil, transactionPointSiteNameURL: "transactionPointSiteNameURL_example", transactionPointSiteNameURLMetadata: nil, transactionPointUserName: "transactionPointUserName_example", transactionPointUserNameMetadata: nil, vaultingMode: "vaultingMode_example", vaultingModeMetadata: nil), userStatus: "userStatus_example", userType: "userType_example", workAddress: nil) // UserInformation |  (optional)

// Updates user information for the specified user.
UsersAPI.userPutUser(accountId: accountId, userId: userId, userInformation: userInformation).whenComplete { result in
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
 **userInformation** | [**UserInformation**](UserInformation.md) |  | [optional] 

### Return type

#### UserPutUser

```swift
public enum UserPutUser {
    case http200(value: UserInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: UserInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSettingsGetUserSettings**
```swift
    open class func userSettingsGetUserSettings(accountId: String, userId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<UserSettingsGetUserSettings>
```

Gets the user account settings for a specified user.

Retrieves a list of the account settings and email notification information for the specified user.  The response returns the account setting name/value information and the email notification settings for the specified user. For more information about the different user settings, see [User Settings](https://developers.docusign.com/esign-rest-api/reference/Users/Users/create/#user-settings).   

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let userId = "userId_example" // String | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing. 

// Gets the user account settings for a specified user.
UsersAPI.userSettingsGetUserSettings(accountId: accountId, userId: userId).whenComplete { result in
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

#### UserSettingsGetUserSettings

```swift
public enum UserSettingsGetUserSettings {
    case http200(value: UserSettingsInformation?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: UserSettingsInformation?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSettingsPutUserSettings**
```swift
    open class func userSettingsPutUserSettings(accountId: String, userId: String, userSettingsInformation: UserSettingsInformation? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<UserSettingsPutUserSettings>
```

Updates the user account settings for a specified user.

Updates the account settings list and email notification types for the specified user.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let userId = "userId_example" // String | The ID of the user to access. Generally this is the ID of the current authenticated user, but if the authenticated user is an Administrator on the account, `userId` can represent another user whom the Administrator is accessing. 
let userSettingsInformation = userSettingsInformation(accountManagementGranular: userAccountManagementGranularInformation(canManageAccountSecuritySettings: "canManageAccountSecuritySettings_example", canManageAccountSecuritySettingsMetadata: settingsMetadata(is21CFRPart11: "is21CFRPart11_example", options: ["options_example"], rights: "rights_example", uiHint: "uiHint_example", uiOrder: "uiOrder_example", uiType: "uiType_example"), canManageAccountSettings: "canManageAccountSettings_example", canManageAccountSettingsMetadata: nil, canManageAdmins: "canManageAdmins_example", canManageAdminsMetadata: nil, canManageEnvelopeTransfer: "canManageEnvelopeTransfer_example", canManageEnvelopeTransferMetadata: nil, canManageReporting: "canManageReporting_example", canManageReportingMetadata: nil, canManageSharing: "canManageSharing_example", canManageSharingMetadata: nil, canManageSigningGroups: "canManageSigningGroups_example", canManageSigningGroupsMetadata: nil, canManageUsers: "canManageUsers_example", canManageUsersMetadata: nil, canViewUsers: "canViewUsers_example"), adminOnly: "adminOnly_example", adminOnlyMetadata: nil, allowAutoTagging: "allowAutoTagging_example", allowEnvelopeTransferTo: "allowEnvelopeTransferTo_example", allowEnvelopeTransferToMetadata: nil, allowEsealRecipients: "allowEsealRecipients_example", allowEsealRecipientsMetadata: nil, allowPowerFormsAdminToAccessAllPowerFormEnvelope: "allowPowerFormsAdminToAccessAllPowerFormEnvelope_example", allowPowerFormsAdminToAccessAllPowerFormEnvelopeMetadata: nil, allowRecipientLanguageSelection: "allowRecipientLanguageSelection_example", allowRecipientLanguageSelectionMetadata: nil, allowSendOnBehalfOf: "allowSendOnBehalfOf_example", allowSendOnBehalfOfMetadata: nil, allowSupplementalDocuments: "allowSupplementalDocuments_example", allowSupplementalDocumentsMetadata: nil, anchorTagVersionedPlacementEnabled: "anchorTagVersionedPlacementEnabled_example", apiAccountWideAccess: "apiAccountWideAccess_example", apiAccountWideAccessMetadata: nil, apiCanExportAC: "apiCanExportAC_example", apiCanExportACMetadata: nil, bulkSend: "bulkSend_example", bulkSendMetadata: nil, canChargeAccount: "canChargeAccount_example", canChargeAccountMetadata: nil, canEditSharedAddressbook: "canEditSharedAddressbook_example", canEditSharedAddressbookMetadata: nil, canLockEnvelopes: "canLockEnvelopes_example", canLockEnvelopesMetadata: nil, canManageAccount: "canManageAccount_example", canManageAccountMetadata: nil, canManageDistributor: "canManageDistributor_example", canManageDistributorMetadata: nil, canManageTemplates: "canManageTemplates_example", canManageTemplatesMetadata: nil, canSendAPIRequests: "canSendAPIRequests_example", canSendAPIRequestsMetadata: nil, canSendEnvelope: "canSendEnvelope_example", canSendEnvelopeMetadata: nil, canSignEnvelope: "canSignEnvelope_example", canSignEnvelopeMetadata: nil, canUseScratchpad: "canUseScratchpad_example", canUseScratchpadMetadata: nil, canUseSmartContracts: "canUseSmartContracts_example", canUseSmartContractsMetadata: nil, disableDocumentUpload: "disableDocumentUpload_example", disableDocumentUploadMetadata: nil, disableOtherActions: "disableOtherActions_example", disableOtherActionsMetadata: nil, enableDSPro: "enableDSPro_example", enableDSProMetadata: nil, enableSequentialSigningAPI: "enableSequentialSigningAPI_example", enableSequentialSigningAPIMetadata: nil, enableSequentialSigningUI: "enableSequentialSigningUI_example", enableSequentialSigningUIMetadata: nil, enableSignerAttachments: "enableSignerAttachments_example", enableSignerAttachmentsMetadata: nil, enableSignOnPaperOverride: "enableSignOnPaperOverride_example", enableSignOnPaperOverrideMetadata: nil, enableTransactionPoint: "enableTransactionPoint_example", enableTransactionPointMetadata: nil, enableVaulting: "enableVaulting_example", enableVaultingMetadata: nil, expressSendOnly: "expressSendOnly_example", locale: "locale_example", localeMetadata: nil, localePolicy: localePolicy(addressFormat: "addressFormat_example", addressFormatMetadata: nil, allowRegion: "allowRegion_example", calendarType: "calendarType_example", calendarTypeMetadata: nil, cultureName: "cultureName_example", cultureNameMetadata: nil, currencyCode: "currencyCode_example", currencyCodeMetadata: nil, currencyNegativeFormat: "currencyNegativeFormat_example", currencyNegativeFormatMetadata: nil, currencyPositiveFormat: "currencyPositiveFormat_example", currencyPositiveFormatMetadata: nil, customDateFormat: "customDateFormat_example", customSignDateFormat: "customSignDateFormat_example", customSignTimeFormat: "customSignTimeFormat_example", customTimeFormat: "customTimeFormat_example", dateFormat: "dateFormat_example", dateFormatMetadata: nil, effectiveAddressFormat: "effectiveAddressFormat_example", effectiveCalendarType: "effectiveCalendarType_example", effectiveCurrencyCode: "effectiveCurrencyCode_example", effectiveCurrencyNegativeFormat: "effectiveCurrencyNegativeFormat_example", effectiveCurrencyPositiveFormat: "effectiveCurrencyPositiveFormat_example", effectiveCustomDateFormat: "effectiveCustomDateFormat_example", effectiveCustomTimeFormat: "effectiveCustomTimeFormat_example", effectiveDateFormat: "effectiveDateFormat_example", effectiveInitialFormat: "effectiveInitialFormat_example", effectiveNameFormat: "effectiveNameFormat_example", effectiveTimeFormat: "effectiveTimeFormat_example", effectiveTimeZone: "effectiveTimeZone_example", initialFormat: "initialFormat_example", initialFormatMetadata: nil, nameFormat: "nameFormat_example", nameFormatMetadata: nil, signDateFormat: "signDateFormat_example", signDateFormatMetadata: nil, signTimeFormat: "signTimeFormat_example", signTimeFormatMetadata: nil, timeFormat: "timeFormat_example", timeFormatMetadata: nil, timeZone: "timeZone_example", timeZoneMetadata: nil), manageClickwrapsMode: "manageClickwrapsMode_example", manageClickwrapsModeMetadata: nil, modifiedBy: "modifiedBy_example", modifiedByMetadata: nil, modifiedDate: "modifiedDate_example", modifiedDateMetadata: nil, modifiedPage: "modifiedPage_example", modifiedPageMetadata: nil, newSendUI: "newSendUI_example", newSendUIMetadata: nil, powerFormMode: "powerFormMode_example", powerFormModeMetadata: nil, recipientViewedNotification: "recipientViewedNotification_example", recipientViewedNotificationMetadata: nil, sealIdentifiers: [sealIdentifier(sealDisplayName: "sealDisplayName_example", sealName: "sealName_example")], selfSignedRecipientEmailDocument: "selfSignedRecipientEmailDocument_example", selfSignedRecipientEmailDocumentMetadata: nil, senderEmailNotifications: senderEmailNotifications(changedSigner: "changedSigner_example", commentsOnlyPrivateAndMention: "commentsOnlyPrivateAndMention_example", commentsReceiveAll: "commentsReceiveAll_example", deliveryFailed: "deliveryFailed_example", envelopeComplete: "envelopeComplete_example", offlineSigningFailed: "offlineSigningFailed_example", powerformResponsesLimitNotificationEmail: "powerformResponsesLimitNotificationEmail_example", purgeDocuments: "purgeDocuments_example", recipientViewed: "recipientViewed_example", senderEnvelopeDeclined: "senderEnvelopeDeclined_example", withdrawnConsent: "withdrawnConsent_example"), signerEmailNotifications: signerEmailNotifications(agentNotification: "agentNotification_example", carbonCopyNotification: "carbonCopyNotification_example", certifiedDeliveryNotification: "certifiedDeliveryNotification_example", commentsOnlyPrivateAndMention: "commentsOnlyPrivateAndMention_example", commentsReceiveAll: "commentsReceiveAll_example", documentMarkupActivation: "documentMarkupActivation_example", envelopeActivation: "envelopeActivation_example", envelopeComplete: "envelopeComplete_example", envelopeCorrected: "envelopeCorrected_example", envelopeDeclined: "envelopeDeclined_example", envelopeVoided: "envelopeVoided_example", faxReceived: "faxReceived_example", offlineSigningFailed: "offlineSigningFailed_example", purgeDocuments: "purgeDocuments_example", reassignedSigner: "reassignedSigner_example", whenSigningGroupMember: "whenSigningGroupMember_example"), supplementalDocumentIncludeInDownload: "supplementalDocumentIncludeInDownload_example", supplementalDocumentsMustAccept: "supplementalDocumentsMustAccept_example", supplementalDocumentsMustAcceptMetadata: nil, supplementalDocumentsMustRead: "supplementalDocumentsMustRead_example", supplementalDocumentsMustReadMetadata: nil, supplementalDocumentsMustView: "supplementalDocumentsMustView_example", supplementalDocumentsMustViewMetadata: nil, templateActiveCreation: "templateActiveCreation_example", templateActiveCreationMetadata: nil, templateApplyNotify: "templateApplyNotify_example", templateApplyNotifyMetadata: nil, templateAutoMatching: "templateAutoMatching_example", templateAutoMatchingMetadata: nil, templateMatchingSensitivity: "templateMatchingSensitivity_example", templateMatchingSensitivityMetadata: nil, templatePageLevelMatching: "templatePageLevelMatching_example", templatePageLevelMatchingMetadata: nil, timezoneDST: "timezoneDST_example", timezoneDSTMetadata: nil, timezoneMask: "timezoneMask_example", timezoneMaskMetadata: nil, timezoneOffset: "timezoneOffset_example", timezoneOffsetMetadata: nil, timezoneSendingPref: "timezoneSendingPref_example", timezoneSendingPrefMetadata: nil, timezoneSigningPref: "timezoneSigningPref_example", timezoneSigningPrefMetadata: nil, transactionPointSiteNameURL: "transactionPointSiteNameURL_example", transactionPointSiteNameURLMetadata: nil, transactionPointUserName: "transactionPointUserName_example", transactionPointUserNameMetadata: nil, vaultingMode: "vaultingMode_example", vaultingModeMetadata: nil) // UserSettingsInformation |  (optional)

// Updates the user account settings for a specified user.
UsersAPI.userSettingsPutUserSettings(accountId: accountId, userId: userId, userSettingsInformation: userSettingsInformation).whenComplete { result in
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
 **userSettingsInformation** | [**UserSettingsInformation**](UserSettingsInformation.md) |  | [optional] 

### Return type

#### UserSettingsPutUserSettings

```swift
public enum UserSettingsPutUserSettings {
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

# **usersDeleteUsers**
```swift
    open class func usersDeleteUsers(accountId: String, delete: String? = nil, userInfoList: UserInfoList? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<UsersDeleteUsers>
```

Removes users account privileges.

Closes one or more user records in the account. Users are never deleted from an account, but closing a user prevents them from using account functions.  The response specifies whether whether the API execution succeeded (200 - OK) or failed (400 - Error). The response contains a user structure similar to the request and includes the user changes. If an error occurred during the DELETE operation for any of the users, the response for that user contains an `errorDetails` property with `errorCode` and `message` properties.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let delete = "delete_example" // String | ID of the user to delete. This parameter takes a comma-separated list of values in the format: `Groups,PermissionSet,SigningGroupsEmail`. (optional)
let userInfoList = userInfoList(users: [userInfo(accountId: "accountId_example", accountName: "accountName_example", activationAccessCode: "activationAccessCode_example", email: "email_example", errorDetails: errorDetails(errorCode: "errorCode_example", message: "message_example"), loginStatus: "loginStatus_example", membershipId: "membershipId_example", sendActivationEmail: "sendActivationEmail_example", uri: "uri_example", userId: "userId_example", userName: "userName_example", userStatus: "userStatus_example", userType: "userType_example")]) // UserInfoList |  (optional)

// Removes users account privileges.
UsersAPI.usersDeleteUsers(accountId: accountId, delete: delete, userInfoList: userInfoList).whenComplete { result in
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
 **delete** | **String** | ID of the user to delete. This parameter takes a comma-separated list of values in the format: &#x60;Groups,PermissionSet,SigningGroupsEmail&#x60;. | [optional] 
 **userInfoList** | [**UserInfoList**](UserInfoList.md) |  | [optional] 

### Return type

#### UsersDeleteUsers

```swift
public enum UsersDeleteUsers {
    case http200(value: UsersResponse?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: UsersResponse?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersGetUsers**
```swift
    open class func usersGetUsers(accountId: String, additionalInfo: String? = nil, count: String? = nil, email: String? = nil, emailSubstring: String? = nil, groupId: String? = nil, includeUsersettingsForCsv: String? = nil, loginStatus: String? = nil, notGroupId: String? = nil, startPosition: String? = nil, status: String? = nil, userNameSubstring: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<UsersGetUsers>
```

Retrieves the list of users for the specified account.

Retrieves the list of users for the specified account.  The response returns the list of users for the account, with information about the result set. If the `additional_info` query is added to the endpoint and set to **true**, full user information is returned for each user.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | (Required) The external account number (int) or account ID GUID.
let additionalInfo = "additionalInfo_example" // String | When set to **true**, the custom settings information is returned for each user in the account. If this parameter is omitted, the default behavior is **false**. (optional)
let count = "count_example" // String | The number of records to return. This number must be greater than `0` and less than or equal to `100`.  (optional)
let email = "email_example" // String | Filters results based on the email address associated with the user that you want to return.  **Note**: You can use either this parameter or the `email_substring` parameter, but not both. For older accounts, this parameter might return multiple users who are associated with a single email address.  (optional)
let emailSubstring = "emailSubstring_example" // String | Filters results based on a fragment of an email address. For example, you could enter `gmail` to return all users who have Gmail addresses.  **Note**: You do not use a wildcard character with this parameter. You can use either this parameter or the `email` parameter, but not both.  (optional)
let groupId = "groupId_example" // String | Filters results based on one or more group IDs. (optional)
let includeUsersettingsForCsv = "includeUsersettingsForCsv_example" // String | When set to **true**, the response includes the `userSettings` object data in CSV format. (optional)
let loginStatus = "loginStatus_example" // String | When set to **true**, the response includes the login status of each user. (optional)
let notGroupId = "notGroupId_example" // String | Return user records excluding the specified group IDs. (optional)
let startPosition = "startPosition_example" // String | The position within the total result set from which to start returning values. (optional)
let status = "status_example" // String | Filters results by user account status. Possible values are:  * `ActivationRequired` * `ActivationSent` * `Active` * `Closed` * `Disabled`  (optional)
let userNameSubstring = "userNameSubstring_example" // String | Filters results based on a full or partial user name.  **Note**: When you enter a partial user name, you do not use a wildcard character. (optional)

// Retrieves the list of users for the specified account.
UsersAPI.usersGetUsers(accountId: accountId, additionalInfo: additionalInfo, count: count, email: email, emailSubstring: emailSubstring, groupId: groupId, includeUsersettingsForCsv: includeUsersettingsForCsv, loginStatus: loginStatus, notGroupId: notGroupId, startPosition: startPosition, status: status, userNameSubstring: userNameSubstring).whenComplete { result in
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
 **accountId** | **String** | (Required) The external account number (int) or account ID GUID. | 
 **additionalInfo** | **String** | When set to **true**, the custom settings information is returned for each user in the account. If this parameter is omitted, the default behavior is **false**. | [optional] 
 **count** | **String** | The number of records to return. This number must be greater than &#x60;0&#x60; and less than or equal to &#x60;100&#x60;.  | [optional] 
 **email** | **String** | Filters results based on the email address associated with the user that you want to return.  **Note**: You can use either this parameter or the &#x60;email_substring&#x60; parameter, but not both. For older accounts, this parameter might return multiple users who are associated with a single email address.  | [optional] 
 **emailSubstring** | **String** | Filters results based on a fragment of an email address. For example, you could enter &#x60;gmail&#x60; to return all users who have Gmail addresses.  **Note**: You do not use a wildcard character with this parameter. You can use either this parameter or the &#x60;email&#x60; parameter, but not both.  | [optional] 
 **groupId** | **String** | Filters results based on one or more group IDs. | [optional] 
 **includeUsersettingsForCsv** | **String** | When set to **true**, the response includes the &#x60;userSettings&#x60; object data in CSV format. | [optional] 
 **loginStatus** | **String** | When set to **true**, the response includes the login status of each user. | [optional] 
 **notGroupId** | **String** | Return user records excluding the specified group IDs. | [optional] 
 **startPosition** | **String** | The position within the total result set from which to start returning values. | [optional] 
 **status** | **String** | Filters results by user account status. Possible values are:  * &#x60;ActivationRequired&#x60; * &#x60;ActivationSent&#x60; * &#x60;Active&#x60; * &#x60;Closed&#x60; * &#x60;Disabled&#x60;  | [optional] 
 **userNameSubstring** | **String** | Filters results based on a full or partial user name.  **Note**: When you enter a partial user name, you do not use a wildcard character. | [optional] 

### Return type

#### UsersGetUsers

```swift
public enum UsersGetUsers {
    case http200(value: UserInformationList?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: UserInformationList?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersPostUsers**
```swift
    open class func usersPostUsers(accountId: String, newUsersDefinition: NewUsersDefinition? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<UsersPostUsers>
```

Adds new users to the specified account.

Adds new users to an account.  The body of this request is an array of `newUsers` objects. For each new user, you must provide at least the `userName` and `email` properties.  The `userSettings` property specifies the actions users can perform. In the example below, Tal Mason will be able to send envelopes, and the activation email will be in French because the `locale` is set to `fr`.   ``` POST /restapi/v2.1/accounts/{accountId}/users Content-Type: application/json ``` ``` {   \"newUsers\": [     {       \"userName\": \"Claire Horace\",       \"email\": \"claire@example.com\"     },     {       \"userName\": \"Tal Mason\",       \"email\": \"talmason@example.com\",       \"company\": \"TeleSel\",       \"userSettings\": {         \"locale\": \"fr\",         \"canSendEnvelope\": true       }     }   ] } ```  A successful response is a `newUsers` array with information about the newly created users. If there was a problem in creating a user, that user entry will contain an `errorDetails` property that describes what went wrong.  ```json {   \"newUsers\": [     {       \"userId\": \"18f3be12-xxxx-xxxx-xxxx-883d8f9b8ade\",       \"uri\": \"/users/18f3be12-xxxx-xxxx-xxxx-883d8f9b8ade\",       \"email\": \"claire@example.com\",       \"userName\": \"Claire Horace\",       \"createdDateTime\": \"0001-01-01T08:00:00.0000000Z\",       \"errorDetails\": {         \"errorCode\": \"USER_ALREADY_EXISTS_IN_ACCOUNT\",         \"message\": \"Username and email combination already exists for this account.\"       }     },     {       \"userId\": \"be9899a3-xxxx-xxxx-xxxx-2c8dd7156e33\",       \"uri\": \"/users/be9899a3-xxxx-xxxx-xxxx-2c8dd7156e33\",       \"email\": \"talmason@example.com\",       \"userName\": \"Tal Mason\",       \"userStatus\": \"ActivationSent\",       \"createdDateTime\": \"2020-05-26T23:25:30.7330000Z\"     }   ] } ``` 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let newUsersDefinition = newUsersDefinition(newUsers: [userInformation(activationAccessCode: "activationAccessCode_example", company: "company_example", connectConfigurations: [connectUserObject(configurationtype: "configurationtype_example", connectId: "connectId_example", enabled: "enabled_example", hasAccess: "hasAccess_example", senderSearchableItems: ["senderSearchableItems_example"])], countryCode: "countryCode_example", createdDateTime: "createdDateTime_example", customSettings: [nameValue(errorDetails: errorDetails(errorCode: "errorCode_example", message: "message_example"), name: "name_example", originalValue: "originalValue_example", value: "value_example")], defaultAccountId: "defaultAccountId_example", email: "email_example", enableConnectForUser: "enableConnectForUser_example", errorDetails: nil, firstName: "firstName_example", forgottenPasswordInfo: forgottenPasswordInformation(forgottenPasswordAnswer1: "forgottenPasswordAnswer1_example", forgottenPasswordAnswer2: "forgottenPasswordAnswer2_example", forgottenPasswordAnswer3: "forgottenPasswordAnswer3_example", forgottenPasswordAnswer4: "forgottenPasswordAnswer4_example", forgottenPasswordQuestion1: "forgottenPasswordQuestion1_example", forgottenPasswordQuestion2: "forgottenPasswordQuestion2_example", forgottenPasswordQuestion3: "forgottenPasswordQuestion3_example", forgottenPasswordQuestion4: "forgottenPasswordQuestion4_example"), groupList: [group(errorDetails: nil, groupId: "groupId_example", groupName: "groupName_example", groupType: "groupType_example", permissionProfileId: "permissionProfileId_example", users: [userInfo(accountId: "accountId_example", accountName: "accountName_example", activationAccessCode: "activationAccessCode_example", email: "email_example", errorDetails: nil, loginStatus: "loginStatus_example", membershipId: "membershipId_example", sendActivationEmail: "sendActivationEmail_example", uri: "uri_example", userId: "userId_example", userName: "userName_example", userStatus: "userStatus_example", userType: "userType_example")], usersCount: "usersCount_example")], homeAddress: addressInformation(address1: "address1_example", address2: "address2_example", city: "city_example", country: "country_example", fax: "fax_example", phone: "phone_example", postalCode: "postalCode_example", stateOrProvince: "stateOrProvince_example", zipPlus4: "zipPlus4_example"), initialsImageUri: "initialsImageUri_example", isAdmin: "isAdmin_example", isNAREnabled: "isNAREnabled_example", jobTitle: "jobTitle_example", lastLogin: "lastLogin_example", lastName: "lastName_example", loginStatus: "loginStatus_example", middleName: "middleName_example", password: "password_example", passwordExpiration: "passwordExpiration_example", permissionProfileId: "permissionProfileId_example", permissionProfileName: "permissionProfileName_example", profileImageUri: "profileImageUri_example", sendActivationEmail: "sendActivationEmail_example", sendActivationOnInvalidLogin: "sendActivationOnInvalidLogin_example", signatureImageUri: "signatureImageUri_example", subscribe: "subscribe_example", suffixName: "suffixName_example", title: "title_example", uri: "uri_example", userAddedToAccountDateTime: "userAddedToAccountDateTime_example", userId: "userId_example", userName: "userName_example", userProfileLastModifiedDate: "userProfileLastModifiedDate_example", userSettings: userSettingsInformation(accountManagementGranular: userAccountManagementGranularInformation(canManageAccountSecuritySettings: "canManageAccountSecuritySettings_example", canManageAccountSecuritySettingsMetadata: settingsMetadata(is21CFRPart11: "is21CFRPart11_example", options: ["options_example"], rights: "rights_example", uiHint: "uiHint_example", uiOrder: "uiOrder_example", uiType: "uiType_example"), canManageAccountSettings: "canManageAccountSettings_example", canManageAccountSettingsMetadata: nil, canManageAdmins: "canManageAdmins_example", canManageAdminsMetadata: nil, canManageEnvelopeTransfer: "canManageEnvelopeTransfer_example", canManageEnvelopeTransferMetadata: nil, canManageReporting: "canManageReporting_example", canManageReportingMetadata: nil, canManageSharing: "canManageSharing_example", canManageSharingMetadata: nil, canManageSigningGroups: "canManageSigningGroups_example", canManageSigningGroupsMetadata: nil, canManageUsers: "canManageUsers_example", canManageUsersMetadata: nil, canViewUsers: "canViewUsers_example"), adminOnly: "adminOnly_example", adminOnlyMetadata: nil, allowAutoTagging: "allowAutoTagging_example", allowEnvelopeTransferTo: "allowEnvelopeTransferTo_example", allowEnvelopeTransferToMetadata: nil, allowEsealRecipients: "allowEsealRecipients_example", allowEsealRecipientsMetadata: nil, allowPowerFormsAdminToAccessAllPowerFormEnvelope: "allowPowerFormsAdminToAccessAllPowerFormEnvelope_example", allowPowerFormsAdminToAccessAllPowerFormEnvelopeMetadata: nil, allowRecipientLanguageSelection: "allowRecipientLanguageSelection_example", allowRecipientLanguageSelectionMetadata: nil, allowSendOnBehalfOf: "allowSendOnBehalfOf_example", allowSendOnBehalfOfMetadata: nil, allowSupplementalDocuments: "allowSupplementalDocuments_example", allowSupplementalDocumentsMetadata: nil, anchorTagVersionedPlacementEnabled: "anchorTagVersionedPlacementEnabled_example", apiAccountWideAccess: "apiAccountWideAccess_example", apiAccountWideAccessMetadata: nil, apiCanExportAC: "apiCanExportAC_example", apiCanExportACMetadata: nil, bulkSend: "bulkSend_example", bulkSendMetadata: nil, canChargeAccount: "canChargeAccount_example", canChargeAccountMetadata: nil, canEditSharedAddressbook: "canEditSharedAddressbook_example", canEditSharedAddressbookMetadata: nil, canLockEnvelopes: "canLockEnvelopes_example", canLockEnvelopesMetadata: nil, canManageAccount: "canManageAccount_example", canManageAccountMetadata: nil, canManageDistributor: "canManageDistributor_example", canManageDistributorMetadata: nil, canManageTemplates: "canManageTemplates_example", canManageTemplatesMetadata: nil, canSendAPIRequests: "canSendAPIRequests_example", canSendAPIRequestsMetadata: nil, canSendEnvelope: "canSendEnvelope_example", canSendEnvelopeMetadata: nil, canSignEnvelope: "canSignEnvelope_example", canSignEnvelopeMetadata: nil, canUseScratchpad: "canUseScratchpad_example", canUseScratchpadMetadata: nil, canUseSmartContracts: "canUseSmartContracts_example", canUseSmartContractsMetadata: nil, disableDocumentUpload: "disableDocumentUpload_example", disableDocumentUploadMetadata: nil, disableOtherActions: "disableOtherActions_example", disableOtherActionsMetadata: nil, enableDSPro: "enableDSPro_example", enableDSProMetadata: nil, enableSequentialSigningAPI: "enableSequentialSigningAPI_example", enableSequentialSigningAPIMetadata: nil, enableSequentialSigningUI: "enableSequentialSigningUI_example", enableSequentialSigningUIMetadata: nil, enableSignerAttachments: "enableSignerAttachments_example", enableSignerAttachmentsMetadata: nil, enableSignOnPaperOverride: "enableSignOnPaperOverride_example", enableSignOnPaperOverrideMetadata: nil, enableTransactionPoint: "enableTransactionPoint_example", enableTransactionPointMetadata: nil, enableVaulting: "enableVaulting_example", enableVaultingMetadata: nil, expressSendOnly: "expressSendOnly_example", locale: "locale_example", localeMetadata: nil, localePolicy: localePolicy(addressFormat: "addressFormat_example", addressFormatMetadata: nil, allowRegion: "allowRegion_example", calendarType: "calendarType_example", calendarTypeMetadata: nil, cultureName: "cultureName_example", cultureNameMetadata: nil, currencyCode: "currencyCode_example", currencyCodeMetadata: nil, currencyNegativeFormat: "currencyNegativeFormat_example", currencyNegativeFormatMetadata: nil, currencyPositiveFormat: "currencyPositiveFormat_example", currencyPositiveFormatMetadata: nil, customDateFormat: "customDateFormat_example", customSignDateFormat: "customSignDateFormat_example", customSignTimeFormat: "customSignTimeFormat_example", customTimeFormat: "customTimeFormat_example", dateFormat: "dateFormat_example", dateFormatMetadata: nil, effectiveAddressFormat: "effectiveAddressFormat_example", effectiveCalendarType: "effectiveCalendarType_example", effectiveCurrencyCode: "effectiveCurrencyCode_example", effectiveCurrencyNegativeFormat: "effectiveCurrencyNegativeFormat_example", effectiveCurrencyPositiveFormat: "effectiveCurrencyPositiveFormat_example", effectiveCustomDateFormat: "effectiveCustomDateFormat_example", effectiveCustomTimeFormat: "effectiveCustomTimeFormat_example", effectiveDateFormat: "effectiveDateFormat_example", effectiveInitialFormat: "effectiveInitialFormat_example", effectiveNameFormat: "effectiveNameFormat_example", effectiveTimeFormat: "effectiveTimeFormat_example", effectiveTimeZone: "effectiveTimeZone_example", initialFormat: "initialFormat_example", initialFormatMetadata: nil, nameFormat: "nameFormat_example", nameFormatMetadata: nil, signDateFormat: "signDateFormat_example", signDateFormatMetadata: nil, signTimeFormat: "signTimeFormat_example", signTimeFormatMetadata: nil, timeFormat: "timeFormat_example", timeFormatMetadata: nil, timeZone: "timeZone_example", timeZoneMetadata: nil), manageClickwrapsMode: "manageClickwrapsMode_example", manageClickwrapsModeMetadata: nil, modifiedBy: "modifiedBy_example", modifiedByMetadata: nil, modifiedDate: "modifiedDate_example", modifiedDateMetadata: nil, modifiedPage: "modifiedPage_example", modifiedPageMetadata: nil, newSendUI: "newSendUI_example", newSendUIMetadata: nil, powerFormMode: "powerFormMode_example", powerFormModeMetadata: nil, recipientViewedNotification: "recipientViewedNotification_example", recipientViewedNotificationMetadata: nil, sealIdentifiers: [sealIdentifier(sealDisplayName: "sealDisplayName_example", sealName: "sealName_example")], selfSignedRecipientEmailDocument: "selfSignedRecipientEmailDocument_example", selfSignedRecipientEmailDocumentMetadata: nil, senderEmailNotifications: senderEmailNotifications(changedSigner: "changedSigner_example", commentsOnlyPrivateAndMention: "commentsOnlyPrivateAndMention_example", commentsReceiveAll: "commentsReceiveAll_example", deliveryFailed: "deliveryFailed_example", envelopeComplete: "envelopeComplete_example", offlineSigningFailed: "offlineSigningFailed_example", powerformResponsesLimitNotificationEmail: "powerformResponsesLimitNotificationEmail_example", purgeDocuments: "purgeDocuments_example", recipientViewed: "recipientViewed_example", senderEnvelopeDeclined: "senderEnvelopeDeclined_example", withdrawnConsent: "withdrawnConsent_example"), signerEmailNotifications: signerEmailNotifications(agentNotification: "agentNotification_example", carbonCopyNotification: "carbonCopyNotification_example", certifiedDeliveryNotification: "certifiedDeliveryNotification_example", commentsOnlyPrivateAndMention: "commentsOnlyPrivateAndMention_example", commentsReceiveAll: "commentsReceiveAll_example", documentMarkupActivation: "documentMarkupActivation_example", envelopeActivation: "envelopeActivation_example", envelopeComplete: "envelopeComplete_example", envelopeCorrected: "envelopeCorrected_example", envelopeDeclined: "envelopeDeclined_example", envelopeVoided: "envelopeVoided_example", faxReceived: "faxReceived_example", offlineSigningFailed: "offlineSigningFailed_example", purgeDocuments: "purgeDocuments_example", reassignedSigner: "reassignedSigner_example", whenSigningGroupMember: "whenSigningGroupMember_example"), supplementalDocumentIncludeInDownload: "supplementalDocumentIncludeInDownload_example", supplementalDocumentsMustAccept: "supplementalDocumentsMustAccept_example", supplementalDocumentsMustAcceptMetadata: nil, supplementalDocumentsMustRead: "supplementalDocumentsMustRead_example", supplementalDocumentsMustReadMetadata: nil, supplementalDocumentsMustView: "supplementalDocumentsMustView_example", supplementalDocumentsMustViewMetadata: nil, templateActiveCreation: "templateActiveCreation_example", templateActiveCreationMetadata: nil, templateApplyNotify: "templateApplyNotify_example", templateApplyNotifyMetadata: nil, templateAutoMatching: "templateAutoMatching_example", templateAutoMatchingMetadata: nil, templateMatchingSensitivity: "templateMatchingSensitivity_example", templateMatchingSensitivityMetadata: nil, templatePageLevelMatching: "templatePageLevelMatching_example", templatePageLevelMatchingMetadata: nil, timezoneDST: "timezoneDST_example", timezoneDSTMetadata: nil, timezoneMask: "timezoneMask_example", timezoneMaskMetadata: nil, timezoneOffset: "timezoneOffset_example", timezoneOffsetMetadata: nil, timezoneSendingPref: "timezoneSendingPref_example", timezoneSendingPrefMetadata: nil, timezoneSigningPref: "timezoneSigningPref_example", timezoneSigningPrefMetadata: nil, transactionPointSiteNameURL: "transactionPointSiteNameURL_example", transactionPointSiteNameURLMetadata: nil, transactionPointUserName: "transactionPointUserName_example", transactionPointUserNameMetadata: nil, vaultingMode: "vaultingMode_example", vaultingModeMetadata: nil), userStatus: "userStatus_example", userType: "userType_example", workAddress: nil)]) // NewUsersDefinition |  (optional)

// Adds new users to the specified account.
UsersAPI.usersPostUsers(accountId: accountId, newUsersDefinition: newUsersDefinition).whenComplete { result in
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
 **newUsersDefinition** | [**NewUsersDefinition**](NewUsersDefinition.md) |  | [optional] 

### Return type

#### UsersPostUsers

```swift
public enum UsersPostUsers {
    case http201(value: NewUsersSummary?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: NewUsersSummary?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersPutUsers**
```swift
    open class func usersPutUsers(accountId: String, userInformationList: UserInformationList? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<UsersPutUsers>
```

Changes one or more users in the specified account.

This method updates the information about one or more account users.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let userInformationList = userInformationList(endPosition: "endPosition_example", nextUri: "nextUri_example", previousUri: "previousUri_example", resultSetSize: "resultSetSize_example", startPosition: "startPosition_example", totalSetSize: "totalSetSize_example", users: [userInformation(activationAccessCode: "activationAccessCode_example", company: "company_example", connectConfigurations: [connectUserObject(configurationtype: "configurationtype_example", connectId: "connectId_example", enabled: "enabled_example", hasAccess: "hasAccess_example", senderSearchableItems: ["senderSearchableItems_example"])], countryCode: "countryCode_example", createdDateTime: "createdDateTime_example", customSettings: [nameValue(errorDetails: errorDetails(errorCode: "errorCode_example", message: "message_example"), name: "name_example", originalValue: "originalValue_example", value: "value_example")], defaultAccountId: "defaultAccountId_example", email: "email_example", enableConnectForUser: "enableConnectForUser_example", errorDetails: nil, firstName: "firstName_example", forgottenPasswordInfo: forgottenPasswordInformation(forgottenPasswordAnswer1: "forgottenPasswordAnswer1_example", forgottenPasswordAnswer2: "forgottenPasswordAnswer2_example", forgottenPasswordAnswer3: "forgottenPasswordAnswer3_example", forgottenPasswordAnswer4: "forgottenPasswordAnswer4_example", forgottenPasswordQuestion1: "forgottenPasswordQuestion1_example", forgottenPasswordQuestion2: "forgottenPasswordQuestion2_example", forgottenPasswordQuestion3: "forgottenPasswordQuestion3_example", forgottenPasswordQuestion4: "forgottenPasswordQuestion4_example"), groupList: [group(errorDetails: nil, groupId: "groupId_example", groupName: "groupName_example", groupType: "groupType_example", permissionProfileId: "permissionProfileId_example", users: [userInfo(accountId: "accountId_example", accountName: "accountName_example", activationAccessCode: "activationAccessCode_example", email: "email_example", errorDetails: nil, loginStatus: "loginStatus_example", membershipId: "membershipId_example", sendActivationEmail: "sendActivationEmail_example", uri: "uri_example", userId: "userId_example", userName: "userName_example", userStatus: "userStatus_example", userType: "userType_example")], usersCount: "usersCount_example")], homeAddress: addressInformation(address1: "address1_example", address2: "address2_example", city: "city_example", country: "country_example", fax: "fax_example", phone: "phone_example", postalCode: "postalCode_example", stateOrProvince: "stateOrProvince_example", zipPlus4: "zipPlus4_example"), initialsImageUri: "initialsImageUri_example", isAdmin: "isAdmin_example", isNAREnabled: "isNAREnabled_example", jobTitle: "jobTitle_example", lastLogin: "lastLogin_example", lastName: "lastName_example", loginStatus: "loginStatus_example", middleName: "middleName_example", password: "password_example", passwordExpiration: "passwordExpiration_example", permissionProfileId: "permissionProfileId_example", permissionProfileName: "permissionProfileName_example", profileImageUri: "profileImageUri_example", sendActivationEmail: "sendActivationEmail_example", sendActivationOnInvalidLogin: "sendActivationOnInvalidLogin_example", signatureImageUri: "signatureImageUri_example", subscribe: "subscribe_example", suffixName: "suffixName_example", title: "title_example", uri: "uri_example", userAddedToAccountDateTime: "userAddedToAccountDateTime_example", userId: "userId_example", userName: "userName_example", userProfileLastModifiedDate: "userProfileLastModifiedDate_example", userSettings: userSettingsInformation(accountManagementGranular: userAccountManagementGranularInformation(canManageAccountSecuritySettings: "canManageAccountSecuritySettings_example", canManageAccountSecuritySettingsMetadata: settingsMetadata(is21CFRPart11: "is21CFRPart11_example", options: ["options_example"], rights: "rights_example", uiHint: "uiHint_example", uiOrder: "uiOrder_example", uiType: "uiType_example"), canManageAccountSettings: "canManageAccountSettings_example", canManageAccountSettingsMetadata: nil, canManageAdmins: "canManageAdmins_example", canManageAdminsMetadata: nil, canManageEnvelopeTransfer: "canManageEnvelopeTransfer_example", canManageEnvelopeTransferMetadata: nil, canManageReporting: "canManageReporting_example", canManageReportingMetadata: nil, canManageSharing: "canManageSharing_example", canManageSharingMetadata: nil, canManageSigningGroups: "canManageSigningGroups_example", canManageSigningGroupsMetadata: nil, canManageUsers: "canManageUsers_example", canManageUsersMetadata: nil, canViewUsers: "canViewUsers_example"), adminOnly: "adminOnly_example", adminOnlyMetadata: nil, allowAutoTagging: "allowAutoTagging_example", allowEnvelopeTransferTo: "allowEnvelopeTransferTo_example", allowEnvelopeTransferToMetadata: nil, allowEsealRecipients: "allowEsealRecipients_example", allowEsealRecipientsMetadata: nil, allowPowerFormsAdminToAccessAllPowerFormEnvelope: "allowPowerFormsAdminToAccessAllPowerFormEnvelope_example", allowPowerFormsAdminToAccessAllPowerFormEnvelopeMetadata: nil, allowRecipientLanguageSelection: "allowRecipientLanguageSelection_example", allowRecipientLanguageSelectionMetadata: nil, allowSendOnBehalfOf: "allowSendOnBehalfOf_example", allowSendOnBehalfOfMetadata: nil, allowSupplementalDocuments: "allowSupplementalDocuments_example", allowSupplementalDocumentsMetadata: nil, anchorTagVersionedPlacementEnabled: "anchorTagVersionedPlacementEnabled_example", apiAccountWideAccess: "apiAccountWideAccess_example", apiAccountWideAccessMetadata: nil, apiCanExportAC: "apiCanExportAC_example", apiCanExportACMetadata: nil, bulkSend: "bulkSend_example", bulkSendMetadata: nil, canChargeAccount: "canChargeAccount_example", canChargeAccountMetadata: nil, canEditSharedAddressbook: "canEditSharedAddressbook_example", canEditSharedAddressbookMetadata: nil, canLockEnvelopes: "canLockEnvelopes_example", canLockEnvelopesMetadata: nil, canManageAccount: "canManageAccount_example", canManageAccountMetadata: nil, canManageDistributor: "canManageDistributor_example", canManageDistributorMetadata: nil, canManageTemplates: "canManageTemplates_example", canManageTemplatesMetadata: nil, canSendAPIRequests: "canSendAPIRequests_example", canSendAPIRequestsMetadata: nil, canSendEnvelope: "canSendEnvelope_example", canSendEnvelopeMetadata: nil, canSignEnvelope: "canSignEnvelope_example", canSignEnvelopeMetadata: nil, canUseScratchpad: "canUseScratchpad_example", canUseScratchpadMetadata: nil, canUseSmartContracts: "canUseSmartContracts_example", canUseSmartContractsMetadata: nil, disableDocumentUpload: "disableDocumentUpload_example", disableDocumentUploadMetadata: nil, disableOtherActions: "disableOtherActions_example", disableOtherActionsMetadata: nil, enableDSPro: "enableDSPro_example", enableDSProMetadata: nil, enableSequentialSigningAPI: "enableSequentialSigningAPI_example", enableSequentialSigningAPIMetadata: nil, enableSequentialSigningUI: "enableSequentialSigningUI_example", enableSequentialSigningUIMetadata: nil, enableSignerAttachments: "enableSignerAttachments_example", enableSignerAttachmentsMetadata: nil, enableSignOnPaperOverride: "enableSignOnPaperOverride_example", enableSignOnPaperOverrideMetadata: nil, enableTransactionPoint: "enableTransactionPoint_example", enableTransactionPointMetadata: nil, enableVaulting: "enableVaulting_example", enableVaultingMetadata: nil, expressSendOnly: "expressSendOnly_example", locale: "locale_example", localeMetadata: nil, localePolicy: localePolicy(addressFormat: "addressFormat_example", addressFormatMetadata: nil, allowRegion: "allowRegion_example", calendarType: "calendarType_example", calendarTypeMetadata: nil, cultureName: "cultureName_example", cultureNameMetadata: nil, currencyCode: "currencyCode_example", currencyCodeMetadata: nil, currencyNegativeFormat: "currencyNegativeFormat_example", currencyNegativeFormatMetadata: nil, currencyPositiveFormat: "currencyPositiveFormat_example", currencyPositiveFormatMetadata: nil, customDateFormat: "customDateFormat_example", customSignDateFormat: "customSignDateFormat_example", customSignTimeFormat: "customSignTimeFormat_example", customTimeFormat: "customTimeFormat_example", dateFormat: "dateFormat_example", dateFormatMetadata: nil, effectiveAddressFormat: "effectiveAddressFormat_example", effectiveCalendarType: "effectiveCalendarType_example", effectiveCurrencyCode: "effectiveCurrencyCode_example", effectiveCurrencyNegativeFormat: "effectiveCurrencyNegativeFormat_example", effectiveCurrencyPositiveFormat: "effectiveCurrencyPositiveFormat_example", effectiveCustomDateFormat: "effectiveCustomDateFormat_example", effectiveCustomTimeFormat: "effectiveCustomTimeFormat_example", effectiveDateFormat: "effectiveDateFormat_example", effectiveInitialFormat: "effectiveInitialFormat_example", effectiveNameFormat: "effectiveNameFormat_example", effectiveTimeFormat: "effectiveTimeFormat_example", effectiveTimeZone: "effectiveTimeZone_example", initialFormat: "initialFormat_example", initialFormatMetadata: nil, nameFormat: "nameFormat_example", nameFormatMetadata: nil, signDateFormat: "signDateFormat_example", signDateFormatMetadata: nil, signTimeFormat: "signTimeFormat_example", signTimeFormatMetadata: nil, timeFormat: "timeFormat_example", timeFormatMetadata: nil, timeZone: "timeZone_example", timeZoneMetadata: nil), manageClickwrapsMode: "manageClickwrapsMode_example", manageClickwrapsModeMetadata: nil, modifiedBy: "modifiedBy_example", modifiedByMetadata: nil, modifiedDate: "modifiedDate_example", modifiedDateMetadata: nil, modifiedPage: "modifiedPage_example", modifiedPageMetadata: nil, newSendUI: "newSendUI_example", newSendUIMetadata: nil, powerFormMode: "powerFormMode_example", powerFormModeMetadata: nil, recipientViewedNotification: "recipientViewedNotification_example", recipientViewedNotificationMetadata: nil, sealIdentifiers: [sealIdentifier(sealDisplayName: "sealDisplayName_example", sealName: "sealName_example")], selfSignedRecipientEmailDocument: "selfSignedRecipientEmailDocument_example", selfSignedRecipientEmailDocumentMetadata: nil, senderEmailNotifications: senderEmailNotifications(changedSigner: "changedSigner_example", commentsOnlyPrivateAndMention: "commentsOnlyPrivateAndMention_example", commentsReceiveAll: "commentsReceiveAll_example", deliveryFailed: "deliveryFailed_example", envelopeComplete: "envelopeComplete_example", offlineSigningFailed: "offlineSigningFailed_example", powerformResponsesLimitNotificationEmail: "powerformResponsesLimitNotificationEmail_example", purgeDocuments: "purgeDocuments_example", recipientViewed: "recipientViewed_example", senderEnvelopeDeclined: "senderEnvelopeDeclined_example", withdrawnConsent: "withdrawnConsent_example"), signerEmailNotifications: signerEmailNotifications(agentNotification: "agentNotification_example", carbonCopyNotification: "carbonCopyNotification_example", certifiedDeliveryNotification: "certifiedDeliveryNotification_example", commentsOnlyPrivateAndMention: "commentsOnlyPrivateAndMention_example", commentsReceiveAll: "commentsReceiveAll_example", documentMarkupActivation: "documentMarkupActivation_example", envelopeActivation: "envelopeActivation_example", envelopeComplete: "envelopeComplete_example", envelopeCorrected: "envelopeCorrected_example", envelopeDeclined: "envelopeDeclined_example", envelopeVoided: "envelopeVoided_example", faxReceived: "faxReceived_example", offlineSigningFailed: "offlineSigningFailed_example", purgeDocuments: "purgeDocuments_example", reassignedSigner: "reassignedSigner_example", whenSigningGroupMember: "whenSigningGroupMember_example"), supplementalDocumentIncludeInDownload: "supplementalDocumentIncludeInDownload_example", supplementalDocumentsMustAccept: "supplementalDocumentsMustAccept_example", supplementalDocumentsMustAcceptMetadata: nil, supplementalDocumentsMustRead: "supplementalDocumentsMustRead_example", supplementalDocumentsMustReadMetadata: nil, supplementalDocumentsMustView: "supplementalDocumentsMustView_example", supplementalDocumentsMustViewMetadata: nil, templateActiveCreation: "templateActiveCreation_example", templateActiveCreationMetadata: nil, templateApplyNotify: "templateApplyNotify_example", templateApplyNotifyMetadata: nil, templateAutoMatching: "templateAutoMatching_example", templateAutoMatchingMetadata: nil, templateMatchingSensitivity: "templateMatchingSensitivity_example", templateMatchingSensitivityMetadata: nil, templatePageLevelMatching: "templatePageLevelMatching_example", templatePageLevelMatchingMetadata: nil, timezoneDST: "timezoneDST_example", timezoneDSTMetadata: nil, timezoneMask: "timezoneMask_example", timezoneMaskMetadata: nil, timezoneOffset: "timezoneOffset_example", timezoneOffsetMetadata: nil, timezoneSendingPref: "timezoneSendingPref_example", timezoneSendingPrefMetadata: nil, timezoneSigningPref: "timezoneSigningPref_example", timezoneSigningPrefMetadata: nil, transactionPointSiteNameURL: "transactionPointSiteNameURL_example", transactionPointSiteNameURLMetadata: nil, transactionPointUserName: "transactionPointUserName_example", transactionPointUserNameMetadata: nil, vaultingMode: "vaultingMode_example", vaultingModeMetadata: nil), userStatus: "userStatus_example", userType: "userType_example", workAddress: nil)]) // UserInformationList |  (optional)

// Changes one or more users in the specified account.
UsersAPI.usersPutUsers(accountId: accountId, userInformationList: userInformationList).whenComplete { result in
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
 **userInformationList** | [**UserInformationList**](UserInformationList.md) |  | [optional] 

### Return type

#### UsersPutUsers

```swift
public enum UsersPutUsers {
    case http200(value: UserInformationList?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: UserInformationList?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

