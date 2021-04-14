//
// PowerFormsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

open class PowerFormsAPI {
    /**
     Deletes a PowerForm.

     DELETE /v2.1/accounts/{accountId}/powerforms/{powerFormId}

     This method deletes a PowerForm.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter powerFormId: (path) The id of the PowerForm.
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func powerFormsDeletePowerFormRaw(accountId: String, powerFormId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/powerforms/{powerFormId}"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let powerFormIdPreEscape = String(describing: powerFormId)
        let powerFormIdPostEscape = powerFormIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{powerFormId}", with: powerFormIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.DELETE, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            try beforeSend(&request)
        }
    }

    public enum PowerFormsDeletePowerForm {
        case http200(value: Void, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: Void, raw: ClientResponse)
    }

    /**
     Deletes a PowerForm.

     DELETE /v2.1/accounts/{accountId}/powerforms/{powerFormId}

     This method deletes a PowerForm.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter powerFormId: (path) The id of the PowerForm.
     - returns: `EventLoopFuture` of `PowerFormsDeletePowerForm`
     */
    open class func powerFormsDeletePowerForm(accountId: String, powerFormId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<PowerFormsDeletePowerForm> {
        return powerFormsDeletePowerFormRaw(accountId: accountId, powerFormId: powerFormId, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> PowerFormsDeletePowerForm in
            switch response.status.code {
            case 200:
                return .http200(value: (), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: (), raw: response)
            }
        }
    }

    /**
     Deletes one or more PowerForms.

     DELETE /v2.1/accounts/{accountId}/powerforms

     This method deletes one or more PowerForms. The request body takes an array of PowerForm objects that are deleted based on the `powerFormId`.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter powerFormsRequest: (body)  (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func powerFormsDeletePowerFormsListRaw(accountId: String, powerFormsRequest: PowerFormsRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/powerforms"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.DELETE, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = powerFormsRequest {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }
    }

    public enum PowerFormsDeletePowerFormsList {
        case http200(value: PowerFormsResponse, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: PowerFormsResponse, raw: ClientResponse)
    }

    /**
     Deletes one or more PowerForms.

     DELETE /v2.1/accounts/{accountId}/powerforms

     This method deletes one or more PowerForms. The request body takes an array of PowerForm objects that are deleted based on the `powerFormId`.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter powerFormsRequest: (body)  (optional)
     - returns: `EventLoopFuture` of `PowerFormsDeletePowerFormsList`
     */
    open class func powerFormsDeletePowerFormsList(accountId: String, powerFormsRequest: PowerFormsRequest? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<PowerFormsDeletePowerFormsList> {
        return powerFormsDeletePowerFormsListRaw(accountId: accountId, powerFormsRequest: powerFormsRequest, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> PowerFormsDeletePowerFormsList in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(PowerFormsResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: PowerFormsResponse.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(PowerFormsResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: PowerFormsResponse.defaultContentType)), raw: response)
            }
        }
    }

    /**
     Returns a single PowerForm.

     GET /v2.1/accounts/{accountId}/powerforms/{powerFormId}

     This method returns detailed information about a specific PowerForm.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter powerFormId: (path) The id of the PowerForm.
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func powerFormsGetPowerFormRaw(accountId: String, powerFormId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/powerforms/{powerFormId}"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let powerFormIdPreEscape = String(describing: powerFormId)
        let powerFormIdPostEscape = powerFormIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{powerFormId}", with: powerFormIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.GET, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            try beforeSend(&request)
        }
    }

    public enum PowerFormsGetPowerForm {
        case http200(value: PowerForm, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: PowerForm, raw: ClientResponse)
    }

    /**
     Returns a single PowerForm.

     GET /v2.1/accounts/{accountId}/powerforms/{powerFormId}

     This method returns detailed information about a specific PowerForm.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter powerFormId: (path) The id of the PowerForm.
     - returns: `EventLoopFuture` of `PowerFormsGetPowerForm`
     */
    open class func powerFormsGetPowerForm(accountId: String, powerFormId: String, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<PowerFormsGetPowerForm> {
        return powerFormsGetPowerFormRaw(accountId: accountId, powerFormId: powerFormId, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> PowerFormsGetPowerForm in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(PowerForm.self, using: Configuration.contentConfiguration.requireDecoder(for: PowerForm.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(PowerForm.self, using: Configuration.contentConfiguration.requireDecoder(for: PowerForm.defaultContentType)), raw: response)
            }
        }
    }

    /**
     Returns a list of PowerForms.

     GET /v2.1/accounts/{accountId}/powerforms

     This method returns a list of PowerForms that are available to the user.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter fromDate: (query) (Optional) The start date for a date range.  **Note**: If no value is provided, no date filtering is applied. (optional)
     - parameter order: (query) (Optional) The order in which to sort the results.  Valid values are:    * `asc`: Ascending order. * `desc`: Descending order.  (optional)
     - parameter orderBy: (query) (Optional) The file attribute to use to sort the results.  Valid values are:   * `modified` * `name` (optional)
     - parameter toDate: (query) (Optional) The end date for a date range.  **Note**: If no value is provided, this property defaults to the current date. (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func powerFormsGetPowerFormsListRaw(accountId: String, fromDate: String? = nil, order: String? = nil, orderBy: String? = nil, toDate: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/powerforms"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.GET, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            struct QueryParams: Content {
                var fromDate: String?
                var order: String?
                var orderBy: String?
                var toDate: String?
            }
            try request.query.encode(QueryParams(fromDate: fromDate, order: order, orderBy: orderBy, toDate: toDate))

            try beforeSend(&request)
        }
    }

    public enum PowerFormsGetPowerFormsList {
        case http200(value: PowerFormsResponse, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: PowerFormsResponse, raw: ClientResponse)
    }

    /**
     Returns a list of PowerForms.

     GET /v2.1/accounts/{accountId}/powerforms

     This method returns a list of PowerForms that are available to the user.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter fromDate: (query) (Optional) The start date for a date range.  **Note**: If no value is provided, no date filtering is applied. (optional)
     - parameter order: (query) (Optional) The order in which to sort the results.  Valid values are:    * `asc`: Ascending order. * `desc`: Descending order.  (optional)
     - parameter orderBy: (query) (Optional) The file attribute to use to sort the results.  Valid values are:   * `modified` * `name` (optional)
     - parameter toDate: (query) (Optional) The end date for a date range.  **Note**: If no value is provided, this property defaults to the current date. (optional)
     - returns: `EventLoopFuture` of `PowerFormsGetPowerFormsList`
     */
    open class func powerFormsGetPowerFormsList(accountId: String, fromDate: String? = nil, order: String? = nil, orderBy: String? = nil, toDate: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<PowerFormsGetPowerFormsList> {
        return powerFormsGetPowerFormsListRaw(accountId: accountId, fromDate: fromDate, order: order, orderBy: orderBy, toDate: toDate, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> PowerFormsGetPowerFormsList in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(PowerFormsResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: PowerFormsResponse.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(PowerFormsResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: PowerFormsResponse.defaultContentType)), raw: response)
            }
        }
    }

    /**
     Gets PowerForm senders.

     GET /v2.1/accounts/{accountId}/powerforms/senders

     This method returns a list of users who have sent PowerForms.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter startPosition: (query) The position within the total result set from which to start returning values. The value **thumbnail** may be used to return the page image. (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func powerFormsGetPowerFormsSendersRaw(accountId: String, startPosition: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/powerforms/senders"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.GET, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            struct QueryParams: Content {
                var startPosition: String?
            }
            try request.query.encode(QueryParams(startPosition: startPosition))

            try beforeSend(&request)
        }
    }

    public enum PowerFormsGetPowerFormsSenders {
        case http200(value: PowerFormSendersResponse, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: PowerFormSendersResponse, raw: ClientResponse)
    }

    /**
     Gets PowerForm senders.

     GET /v2.1/accounts/{accountId}/powerforms/senders

     This method returns a list of users who have sent PowerForms.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter startPosition: (query) The position within the total result set from which to start returning values. The value **thumbnail** may be used to return the page image. (optional)
     - returns: `EventLoopFuture` of `PowerFormsGetPowerFormsSenders`
     */
    open class func powerFormsGetPowerFormsSenders(accountId: String, startPosition: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<PowerFormsGetPowerFormsSenders> {
        return powerFormsGetPowerFormsSendersRaw(accountId: accountId, startPosition: startPosition, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> PowerFormsGetPowerFormsSenders in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(PowerFormSendersResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: PowerFormSendersResponse.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(PowerFormSendersResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: PowerFormSendersResponse.defaultContentType)), raw: response)
            }
        }
    }

    /**
     Creates a new PowerForm

     POST /v2.1/accounts/{accountId}/powerforms

     This method creates a new PowerForm.   You create a PowerForm from an existing DocuSign [template](https://developers.docusign.com/esign-rest-api/reference/Templates/Templates/create), based on the `templateId` in the request body.   PowerForms that you create from a template are referred to as *web PowerForms*.   **Note**: The RADmin console also supports creating a PowerForm by uploading a PDF file that has active form fields (referred to as a *PDF PowerForm*). However, PDF PowerForms are deprecated and are not supported in the API.  **Note**: A PowerForm can have only one sender. (Because PowerForms are not necessarily sent by email, this user is also referred to as the PowerForm *initiator*.) If you need to associate multiple senders with a PowerForm, create multiple copies of the PowerForm by using the same template (one copy for each sender). By default, the sender is the PowerForm Administrator who creates the PowerForm.   ### Signing modes  You can use one of the following signing modes for a PowerForm:   **`email`**  This mode verifies the recipient's identity by using email authentication before the recipient can sign a document. The recipient enters their email address on the landing page and then clicks **Begin Signing** to begin the signing process. The system then sends an email message with a validation code to the recipient. If the recipient does not provide a valid email address, they do not receive the email message containing the access code and are not able to open and sign the document.  Alternatively, you can make the process easier for signers by using email authentication only and omitting the access code. To do this, you append the `activateonly` flag to the PowerForm URL and set it to true by passing in the value `1`.  When the flag is active, the first recipient receives an email with a link that initiates the signing session without having to enter access code.  Example: `activateonly=1`  **`direct`**  This mode does not require any verification. After a recipient enters their email address on the landing page and clicks **Begin Signing**, a new browser tab opens and the recipient can immediately begin the signing process.  Because the `direct` signing mode does not verify the recipient's identity by using email authentication, we strongly recommend that you use this mode only when the PowerForm is accessible behind a secure portal where the recipient's identity is already authenticated, or where another form of authentication is specified for the recipient in the DocuSign template (for example, an access code, phone authentication, or ID check).    **Note**: In the account settings, `enablePowerFormDirect` must be **true** to use `direct` as the `signingMode`.  ### Redirect URLs  You can control the URL to which signers are redirected after signing your PowerForm. However, the URL is specified elsewhere, outside of the PowerForm creation process. For details, see [How do I specify a URL to redirect to when a PowerForm is completed?](https://support.docusign.com/en/articles/How-do-I-specify-a-URL-to-redirect-to-when-a-Powerform-is-completed).  ### More information  For more information about creating PowerForms, see [Create a PowerForm](https://support.docusign.com/en/guides/ndse-user-guide-create-a-powerform).

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter powerForm: (body) Information about any PowerForms that are included in the envelope. (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func powerFormsPostPowerFormRaw(accountId: String, powerForm: PowerForm? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/powerforms"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.POST, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = powerForm {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }
    }

    public enum PowerFormsPostPowerForm {
        case http201(value: PowerForm, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: PowerForm, raw: ClientResponse)
    }

    /**
     Creates a new PowerForm

     POST /v2.1/accounts/{accountId}/powerforms

     This method creates a new PowerForm.   You create a PowerForm from an existing DocuSign [template](https://developers.docusign.com/esign-rest-api/reference/Templates/Templates/create), based on the `templateId` in the request body.   PowerForms that you create from a template are referred to as *web PowerForms*.   **Note**: The RADmin console also supports creating a PowerForm by uploading a PDF file that has active form fields (referred to as a *PDF PowerForm*). However, PDF PowerForms are deprecated and are not supported in the API.  **Note**: A PowerForm can have only one sender. (Because PowerForms are not necessarily sent by email, this user is also referred to as the PowerForm *initiator*.) If you need to associate multiple senders with a PowerForm, create multiple copies of the PowerForm by using the same template (one copy for each sender). By default, the sender is the PowerForm Administrator who creates the PowerForm.   ### Signing modes  You can use one of the following signing modes for a PowerForm:   **`email`**  This mode verifies the recipient's identity by using email authentication before the recipient can sign a document. The recipient enters their email address on the landing page and then clicks **Begin Signing** to begin the signing process. The system then sends an email message with a validation code to the recipient. If the recipient does not provide a valid email address, they do not receive the email message containing the access code and are not able to open and sign the document.  Alternatively, you can make the process easier for signers by using email authentication only and omitting the access code. To do this, you append the `activateonly` flag to the PowerForm URL and set it to true by passing in the value `1`.  When the flag is active, the first recipient receives an email with a link that initiates the signing session without having to enter access code.  Example: `activateonly=1`  **`direct`**  This mode does not require any verification. After a recipient enters their email address on the landing page and clicks **Begin Signing**, a new browser tab opens and the recipient can immediately begin the signing process.  Because the `direct` signing mode does not verify the recipient's identity by using email authentication, we strongly recommend that you use this mode only when the PowerForm is accessible behind a secure portal where the recipient's identity is already authenticated, or where another form of authentication is specified for the recipient in the DocuSign template (for example, an access code, phone authentication, or ID check).    **Note**: In the account settings, `enablePowerFormDirect` must be **true** to use `direct` as the `signingMode`.  ### Redirect URLs  You can control the URL to which signers are redirected after signing your PowerForm. However, the URL is specified elsewhere, outside of the PowerForm creation process. For details, see [How do I specify a URL to redirect to when a PowerForm is completed?](https://support.docusign.com/en/articles/How-do-I-specify-a-URL-to-redirect-to-when-a-Powerform-is-completed).  ### More information  For more information about creating PowerForms, see [Create a PowerForm](https://support.docusign.com/en/guides/ndse-user-guide-create-a-powerform).

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter powerForm: (body) Information about any PowerForms that are included in the envelope. (optional)
     - returns: `EventLoopFuture` of `PowerFormsPostPowerForm`
     */
    open class func powerFormsPostPowerForm(accountId: String, powerForm: PowerForm? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<PowerFormsPostPowerForm> {
        return powerFormsPostPowerFormRaw(accountId: accountId, powerForm: powerForm, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> PowerFormsPostPowerForm in
            switch response.status.code {
            case 201:
                return .http201(value: try response.content.decode(PowerForm.self, using: Configuration.contentConfiguration.requireDecoder(for: PowerForm.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(PowerForm.self, using: Configuration.contentConfiguration.requireDecoder(for: PowerForm.defaultContentType)), raw: response)
            }
        }
    }

    /**
     Updates an existing PowerForm.

     PUT /v2.1/accounts/{accountId}/powerforms/{powerFormId}

     This method updates an existing PowerForm.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter powerFormId: (path) The id of the PowerForm.
     - parameter powerForm: (body) Information about any PowerForms that are included in the envelope. (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func powerFormsPutPowerFormRaw(accountId: String, powerFormId: String, powerForm: PowerForm? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/powerforms/{powerFormId}"
        let accountIdPreEscape = String(describing: accountId)
        let accountIdPostEscape = accountIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{accountId}", with: accountIdPostEscape, options: .literal, range: nil)
        let powerFormIdPreEscape = String(describing: powerFormId)
        let powerFormIdPostEscape = powerFormIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{powerFormId}", with: powerFormIdPostEscape, options: .literal, range: nil)
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.PUT, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            if let body = powerForm {
                try request.content.encode(body)
            }

            try beforeSend(&request)
        }
    }

    public enum PowerFormsPutPowerForm {
        case http200(value: PowerForm, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: PowerForm, raw: ClientResponse)
    }

    /**
     Updates an existing PowerForm.

     PUT /v2.1/accounts/{accountId}/powerforms/{powerFormId}

     This method updates an existing PowerForm.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter powerFormId: (path) The id of the PowerForm.
     - parameter powerForm: (body) Information about any PowerForms that are included in the envelope. (optional)
     - returns: `EventLoopFuture` of `PowerFormsPutPowerForm`
     */
    open class func powerFormsPutPowerForm(accountId: String, powerFormId: String, powerForm: PowerForm? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<PowerFormsPutPowerForm> {
        return powerFormsPutPowerFormRaw(accountId: accountId, powerFormId: powerFormId, powerForm: powerForm, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> PowerFormsPutPowerForm in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(PowerForm.self, using: Configuration.contentConfiguration.requireDecoder(for: PowerForm.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(PowerForm.self, using: Configuration.contentConfiguration.requireDecoder(for: PowerForm.defaultContentType)), raw: response)
            }
        }
    }
}
