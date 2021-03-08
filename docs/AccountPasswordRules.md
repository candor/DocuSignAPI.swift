# AccountPasswordRules

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**expirePassword** | **String** | When set to **true**, passwords expire. The default value is &#x60;false&#x60;. | [optional] 
**expirePasswordDays** | **String** | The number of days before passwords expire. To use this property, the &#x60;expirePassword&#x60; property must be set to **true**. | [optional] 
**expirePasswordDaysMetadata** | [**AccountPasswordExpirePasswordDays**](AccountPasswordExpirePasswordDays.md) |  | [optional] 
**lockoutDurationMinutes** | **String** | The number of minutes a user is locked out of the system after three (?) failed login attempts. The default value is &#x60;2&#x60;. | [optional] 
**lockoutDurationMinutesMetadata** | [**AccountPasswordLockoutDurationMinutes**](AccountPasswordLockoutDurationMinutes.md) |  | [optional] 
**lockoutDurationType** | **String** | The interval associated with the user lockout after a failed login attempt.  Possible values are: (?????)  - &#x60;minutes&#x60; (default) - &#x60;hours&#x60; - &#x60;days&#x60; | [optional] 
**lockoutDurationTypeMetadata** | [**AccountPasswordLockoutDurationType**](AccountPasswordLockoutDurationType.md) |  | [optional] 
**minimumPasswordAgeDays** | **String** | The minimum number of days after a password is set before it can be changed. This value can be &#x60;0&#x60; or more days. The default value is &#x60;0&#x60;. | [optional] 
**minimumPasswordAgeDaysMetadata** | [**AccountPasswordMinimumPasswordAgeDays**](AccountPasswordMinimumPasswordAgeDays.md) |  | [optional] 
**minimumPasswordLength** | **String** | The minimum number of characters in the password. This value must be a number between &#x60;6&#x60; and &#x60;15&#x60;. The default value is &#x60;6&#x60;. | [optional] 
**minimumPasswordLengthMetadata** | [**AccountMinimumPasswordLength**](AccountMinimumPasswordLength.md) |  | [optional] 
**passwordIncludeDigit** | **String** | When set to **true**, passwords must include a digit. The default value is &#x60;false&#x60;. | [optional] 
**passwordIncludeDigitOrSpecialCharacter** | **String** | When set to **true**, passwords must include either a digit or a special character. The default value is &#x60;false&#x60;.  **Note**: Passwords cannot include angle brackets (&#x60;&lt;&#x60; &#x60;&gt;&#x60;) or spaces. | [optional] 
**passwordIncludeLowerCase** | **String** | When set to **true**, passwords must include a lowercase letter. The default value is &#x60;false&#x60;. | [optional] 
**passwordIncludeSpecialCharacter** | **String** | When set to **true**, passwords must include a special character. The default value is &#x60;false&#x60;.  **Note**: Passwords cannot include angle brackets (&#x60;&lt;&#x60; &#x60;&gt;&#x60;) or spaces. | [optional] 
**passwordIncludeUpperCase** | **String** | When set to **true**, passwords must include an uppercase letter. The default value is &#x60;false&#x60;. | [optional] 
**passwordStrengthType** | **String** | The type of password strength. Possible values are:  - &#x60;basic&#x60;: The minimum password length is 6 characters with no other password requirements. - &#x60;medium&#x60;: The minimum password length is 7 characters. Passwords must also have one uppercase letter, one lowercase letter, and one number or special character. - &#x60;strong&#x60;: The minimum password length is 9 characters. Passwords must also have one uppercase letter, one lowercase letter, one number, and one special character. - &#x60;custom&#x60;: This option enables you to customize password requirements, including the following properties:     - &#x60;minimumPasswordLength&#x60;    - &#x60;minimumPasswordAgeDays&#x60;    - &#x60;passwordIncludeDigit&#x60;    - &#x60;passwordIncludeDigitOrSpecialCharacter&#x60;    - &#x60;passwordIncludeLowerCase&#x60;    - &#x60;passwordIncludeSpecialCharacter&#x60;    - &#x60;passwordIncludeUpperCase&#x60;    - &#x60;questionsRequired&#x60; | [optional] 
**passwordStrengthTypeMetadata** | [**AccountPasswordStrengthType**](AccountPasswordStrengthType.md) |  | [optional] 
**questionsRequired** | **String** | The number of security questions required to confirm the user’s identity before the user can reset their password. The default value is &#x60;0&#x60;. | [optional] 
**questionsRequiredMetadata** | [**AccountPasswordQuestionsRequired**](AccountPasswordQuestionsRequired.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


