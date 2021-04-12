# EnvelopeWorkflowDefinitionAPI

All URIs are relative to *https://www.docusign.net/restapi*

Method | HTTP request | Description
------------- | ------------- | -------------
[**envelopeWorkflowDefinitionDeleteEnvelopeWorkflowDefinition**](EnvelopeWorkflowDefinitionAPI.md#envelopeworkflowdefinitiondeleteenvelopeworkflowdefinition) | **DELETE** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/workflow | Deletes an envelope&#39;s workflow definition.
[**envelopeWorkflowDefinitionDeleteTemplateWorkflowDefinition**](EnvelopeWorkflowDefinitionAPI.md#envelopeworkflowdefinitiondeletetemplateworkflowdefinition) | **DELETE** /v2.1/accounts/{accountId}/templates/{templateId}/workflow | Deletes a template&#39;s workflow definition.
[**envelopeWorkflowDefinitionGetEnvelopeWorkflowDefinition**](EnvelopeWorkflowDefinitionAPI.md#envelopeworkflowdefinitiongetenvelopeworkflowdefinition) | **GET** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/workflow | Gets an envelope&#39;s workflow definition.
[**envelopeWorkflowDefinitionGetTemplateWorkflowDefinition**](EnvelopeWorkflowDefinitionAPI.md#envelopeworkflowdefinitiongettemplateworkflowdefinition) | **GET** /v2.1/accounts/{accountId}/templates/{templateId}/workflow | Gets template&#39;s workflow definition.
[**envelopeWorkflowDefinitionPutEnvelopeWorkflowDefinition**](EnvelopeWorkflowDefinitionAPI.md#envelopeworkflowdefinitionputenvelopeworkflowdefinition) | **PUT** /v2.1/accounts/{accountId}/envelopes/{envelopeId}/workflow | Updates an envelope&#39;s workflow definition.
[**envelopeWorkflowDefinitionPutTemplateWorkflowDefinition**](EnvelopeWorkflowDefinitionAPI.md#envelopeworkflowdefinitionputtemplateworkflowdefinition) | **PUT** /v2.1/accounts/{accountId}/templates/{templateId}/workflow | Update a template&#39;s workflow definiton.


# **envelopeWorkflowDefinitionDeleteEnvelopeWorkflowDefinition**
```swift
    open class func envelopeWorkflowDefinitionDeleteEnvelopeWorkflowDefinition(accountId: String, envelopeId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<EnvelopeWorkflowDefinitionDeleteEnvelopeWorkflowDefinition>
```

Deletes an envelope's workflow definition.

Deletes the specified envelope's workflow definition if it has one. 

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 

// Deletes an envelope's workflow definition.
EnvelopeWorkflowDefinitionAPI.envelopeWorkflowDefinitionDeleteEnvelopeWorkflowDefinition(accountId: accountId, envelopeId: envelopeId).whenComplete { result in
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
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 

### Return type

#### EnvelopeWorkflowDefinitionDeleteEnvelopeWorkflowDefinition

```swift
public enum EnvelopeWorkflowDefinitionDeleteEnvelopeWorkflowDefinition {
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

# **envelopeWorkflowDefinitionDeleteTemplateWorkflowDefinition**
```swift
    open class func envelopeWorkflowDefinitionDeleteTemplateWorkflowDefinition(accountId: String, templateId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<EnvelopeWorkflowDefinitionDeleteTemplateWorkflowDefinition>
```

Deletes a template's workflow definition.

Deletes the specified template's workflow definition if it has one.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let templateId = "templateId_example" // String | The id of the template.

// Deletes a template's workflow definition.
EnvelopeWorkflowDefinitionAPI.envelopeWorkflowDefinitionDeleteTemplateWorkflowDefinition(accountId: accountId, templateId: templateId).whenComplete { result in
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
 **templateId** | **String** | The id of the template. | 

### Return type

#### EnvelopeWorkflowDefinitionDeleteTemplateWorkflowDefinition

```swift
public enum EnvelopeWorkflowDefinitionDeleteTemplateWorkflowDefinition {
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

# **envelopeWorkflowDefinitionGetEnvelopeWorkflowDefinition**
```swift
    open class func envelopeWorkflowDefinitionGetEnvelopeWorkflowDefinition(accountId: String, envelopeId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<EnvelopeWorkflowDefinitionGetEnvelopeWorkflowDefinition>
```

Gets an envelope's workflow definition.

Returns an envelope's workflow definition if the envelope specified by `envelopeId` has one.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 

// Gets an envelope's workflow definition.
EnvelopeWorkflowDefinitionAPI.envelopeWorkflowDefinitionGetEnvelopeWorkflowDefinition(accountId: accountId, envelopeId: envelopeId).whenComplete { result in
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
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 

### Return type

#### EnvelopeWorkflowDefinitionGetEnvelopeWorkflowDefinition

```swift
public enum EnvelopeWorkflowDefinitionGetEnvelopeWorkflowDefinition {
    case http200(value: Workflow?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Workflow?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **envelopeWorkflowDefinitionGetTemplateWorkflowDefinition**
```swift
    open class func envelopeWorkflowDefinitionGetTemplateWorkflowDefinition(accountId: String, templateId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<EnvelopeWorkflowDefinitionGetTemplateWorkflowDefinition>
```

Gets template's workflow definition.

Returns template's workflow definition if the template specified by `templateId` has one.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let templateId = "templateId_example" // String | The id of the template.

// Gets template's workflow definition.
EnvelopeWorkflowDefinitionAPI.envelopeWorkflowDefinitionGetTemplateWorkflowDefinition(accountId: accountId, templateId: templateId).whenComplete { result in
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
 **templateId** | **String** | The id of the template. | 

### Return type

#### EnvelopeWorkflowDefinitionGetTemplateWorkflowDefinition

```swift
public enum EnvelopeWorkflowDefinitionGetTemplateWorkflowDefinition {
    case http200(value: Workflow?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Workflow?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **envelopeWorkflowDefinitionPutEnvelopeWorkflowDefinition**
```swift
    open class func envelopeWorkflowDefinitionPutEnvelopeWorkflowDefinition(accountId: String, envelopeId: String, workflow: Workflow? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<EnvelopeWorkflowDefinitionPutEnvelopeWorkflowDefinition>
```

Updates an envelope's workflow definition.

Updates the specified envelope's workflow definition if  it has one.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let envelopeId = "envelopeId_example" // String | The envelope's GUID.   Example: `93be49ab-xxxx-xxxx-xxxx-f752070d71ec` 
let workflow = workflow(currentWorkflowStepId: "currentWorkflowStepId_example", workflowStatus: "workflowStatus_example", workflowSteps: [workflowStep(action: "action_example", completedDate: "completedDate_example", itemId: "itemId_example", recipientRouting: recipientRouting(rules: recipientRules(conditionalRecipients: [conditionalRecipientRule(conditions: [conditionalRecipientRuleCondition(filters: [conditionalRecipientRuleFilter(`operator`: "`operator`_example", recipientId: "recipientId_example", scope: "scope_example", tabId: "tabId_example", tabLabel: "tabLabel_example", value: "value_example")], order: "order_example", recipientLabel: "recipientLabel_example")], order: "order_example", recipientGroup: recipientGroup(groupMessage: "groupMessage_example", groupName: "groupName_example", recipients: [recipientOption(email: "email_example", name: "name_example", recipientLabel: "recipientLabel_example", roleName: "roleName_example", signingGroupId: "signingGroupId_example")]), recipientId: "recipientId_example")])), status: "status_example", triggeredDate: "triggeredDate_example", triggerOnItem: "triggerOnItem_example", workflowStepId: "workflowStepId_example")]) // Workflow |  (optional)

// Updates an envelope's workflow definition.
EnvelopeWorkflowDefinitionAPI.envelopeWorkflowDefinitionPutEnvelopeWorkflowDefinition(accountId: accountId, envelopeId: envelopeId, workflow: workflow).whenComplete { result in
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
 **envelopeId** | **String** | The envelope&#39;s GUID.   Example: &#x60;93be49ab-xxxx-xxxx-xxxx-f752070d71ec&#x60;  | 
 **workflow** | [**Workflow**](Workflow.md) |  | [optional] 

### Return type

#### EnvelopeWorkflowDefinitionPutEnvelopeWorkflowDefinition

```swift
public enum EnvelopeWorkflowDefinitionPutEnvelopeWorkflowDefinition {
    case http200(value: Workflow?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Workflow?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **envelopeWorkflowDefinitionPutTemplateWorkflowDefinition**
```swift
    open class func envelopeWorkflowDefinitionPutTemplateWorkflowDefinition(accountId: String, templateId: String, workflow: Workflow? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> () = { _ in }) -> EventLoopFuture<EnvelopeWorkflowDefinitionPutTemplateWorkflowDefinition>
```

Update a template's workflow definiton.

Updates the specified template's workflow definition if  it has one.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import DocuSignAPI

let accountId = "accountId_example" // String | The external account number (int) or account ID GUID.
let templateId = "templateId_example" // String | The id of the template.
let workflow = workflow(currentWorkflowStepId: "currentWorkflowStepId_example", workflowStatus: "workflowStatus_example", workflowSteps: [workflowStep(action: "action_example", completedDate: "completedDate_example", itemId: "itemId_example", recipientRouting: recipientRouting(rules: recipientRules(conditionalRecipients: [conditionalRecipientRule(conditions: [conditionalRecipientRuleCondition(filters: [conditionalRecipientRuleFilter(`operator`: "`operator`_example", recipientId: "recipientId_example", scope: "scope_example", tabId: "tabId_example", tabLabel: "tabLabel_example", value: "value_example")], order: "order_example", recipientLabel: "recipientLabel_example")], order: "order_example", recipientGroup: recipientGroup(groupMessage: "groupMessage_example", groupName: "groupName_example", recipients: [recipientOption(email: "email_example", name: "name_example", recipientLabel: "recipientLabel_example", roleName: "roleName_example", signingGroupId: "signingGroupId_example")]), recipientId: "recipientId_example")])), status: "status_example", triggeredDate: "triggeredDate_example", triggerOnItem: "triggerOnItem_example", workflowStepId: "workflowStepId_example")]) // Workflow |  (optional)

// Update a template's workflow definiton.
EnvelopeWorkflowDefinitionAPI.envelopeWorkflowDefinitionPutTemplateWorkflowDefinition(accountId: accountId, templateId: templateId, workflow: workflow).whenComplete { result in
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
 **templateId** | **String** | The id of the template. | 
 **workflow** | [**Workflow**](Workflow.md) |  | [optional] 

### Return type

#### EnvelopeWorkflowDefinitionPutTemplateWorkflowDefinition

```swift
public enum EnvelopeWorkflowDefinitionPutTemplateWorkflowDefinition {
    case http200(value: Workflow?, raw: ClientResponse)
    case http400(value: ErrorDetails?, raw: ClientResponse)
    case http0(value: Workflow?, raw: ClientResponse)
}
```

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, application/xml
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

