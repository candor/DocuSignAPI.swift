# AccountPasswordRulesAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**accountPasswordRulesGetAccountPasswordRules**](AccountPasswordRulesAPI.md#accountpasswordrulesgetaccountpasswordrules) | **GET** /v2.1/accounts/{accountId}/settings/password_rules | Gets the password rules for an account.
[**accountPasswordRulesPutAccountPasswordRules**](AccountPasswordRulesAPI.md#accountpasswordrulesputaccountpasswordrules) | **PUT** /v2.1/accounts/{accountId}/settings/password_rules | Updates the password rules for an account.
[**passwordRulesGetPasswordRules**](AccountPasswordRulesAPI.md#passwordrulesgetpasswordrules) | **GET** /v2.1/current_user/password_rules | Gets membership account password rules.


# **accountPasswordRulesGetAccountPasswordRules**
```swift
    open class func accountPasswordRulesGetAccountPasswordRules(accountId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<AccountPasswordRulesGetAccountPasswordRules>
```

Gets the password rules for an account.

This method retrieves the password rules for an account.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.

// Gets the password rules for an account.
AccountPasswordRulesAPI.accountPasswordRulesGetAccountPasswordRules(accountId: accountId).whenComplete { result in
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

### Return type

#### AccountPasswordRulesGetAccountPasswordRules

```swift
public enum AccountPasswordRulesGetAccountPasswordRules {
    case http200(value: AccountPasswordRules?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: AccountPasswordRules?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **accountPasswordRulesPutAccountPasswordRules**
```swift
    open class func accountPasswordRulesPutAccountPasswordRules(accountId: String, accountPasswordRules: AccountPasswordRules? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<AccountPasswordRulesPutAccountPasswordRules>
```

Updates the password rules for an account.

This method updates the password rules for an account.  **Note**: To update the password rules for an account, you must be an account administrator.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let accountPasswordRules = AccountPasswordRules(expirePassword: "expirePassword_example", expirePasswordDays: "expirePasswordDays_example", expirePasswordDaysMetadata: accountPasswordExpirePasswordDays(maximumDays: "maximumDays_example", minimumDays: "minimumDays_example"), lockoutDurationMinutes: "lockoutDurationMinutes_example", lockoutDurationMinutesMetadata: accountPasswordLockoutDurationMinutes(maximumMinutes: "maximumMinutes_example", minimumMinutes: "minimumMinutes_example"), lockoutDurationType: "lockoutDurationType_example", lockoutDurationTypeMetadata: accountPasswordLockoutDurationType(options: ["options_example"]), minimumPasswordAgeDays: "minimumPasswordAgeDays_example", minimumPasswordAgeDaysMetadata: accountPasswordMinimumPasswordAgeDays(maximumAge: "maximumAge_example", minimumAge: "minimumAge_example"), minimumPasswordLength: "minimumPasswordLength_example", minimumPasswordLengthMetadata: accountMinimumPasswordLength(maximumLength: "maximumLength_example", minimumLength: "minimumLength_example"), passwordIncludeDigit: "passwordIncludeDigit_example", passwordIncludeDigitOrSpecialCharacter: "passwordIncludeDigitOrSpecialCharacter_example", passwordIncludeLowerCase: "passwordIncludeLowerCase_example", passwordIncludeSpecialCharacter: "passwordIncludeSpecialCharacter_example", passwordIncludeUpperCase: "passwordIncludeUpperCase_example", passwordStrengthType: "passwordStrengthType_example", passwordStrengthTypeMetadata: accountPasswordStrengthType(options: [accountPasswordStrengthTypeOption(minimumLength: "minimumLength_example", name: "name_example", passwordIncludeDigit: "passwordIncludeDigit_example", passwordIncludeDigitOrSpecialCharacter: "passwordIncludeDigitOrSpecialCharacter_example", passwordIncludeLowerCase: "passwordIncludeLowerCase_example", passwordIncludeSpecialCharacter: "passwordIncludeSpecialCharacter_example", passwordIncludeUpperCase: "passwordIncludeUpperCase_example")]), questionsRequired: "questionsRequired_example", questionsRequiredMetadata: accountPasswordQuestionsRequired(maximumQuestions: "maximumQuestions_example", minimumQuestions: "minimumQuestions_example")) // AccountPasswordRules |  (optional)

// Updates the password rules for an account.
AccountPasswordRulesAPI.accountPasswordRulesPutAccountPasswordRules(accountId: accountId, accountPasswordRules: accountPasswordRules).whenComplete { result in
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
 **accountPasswordRules** | [**AccountPasswordRules**](AccountPasswordRules.md) |  | [optional] 

### Return type

#### AccountPasswordRulesPutAccountPasswordRules

```swift
public enum AccountPasswordRulesPutAccountPasswordRules {
    case http200(value: AccountPasswordRules?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: AccountPasswordRules?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **passwordRulesGetPasswordRules**
```swift
    open class func passwordRulesGetPasswordRules(headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<PasswordRulesGetPasswordRules>
```

Gets membership account password rules.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI


// Gets membership account password rules.
AccountPasswordRulesAPI.passwordRulesGetPasswordRules().whenComplete { result in
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
This endpoint does not need any parameter.

### Return type

#### PasswordRulesGetPasswordRules

```swift
public enum PasswordRulesGetPasswordRules {
    case http200(value: UserPasswordRules?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: UserPasswordRules?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

