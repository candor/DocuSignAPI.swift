//
// PowerFormDataAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

open class PowerFormDataAPI {
    /**
     Returns the data that users entered in a PowerForm.

     GET /v2.1/accounts/{accountId}/powerforms/{powerFormId}/form_data

     This method enables Powerform Administrators or the sender of a PowerForm to download the data that recipients have entered into a PowerForm.  You specify the format in which you want to retrieve the data in the `Accept` header. This header accepts the following values:   - `application/json`: JSON format - `application/xml`: XML format - `text/csv`: Comma-separated value (CSV) format  **Note**: Only PowerForm Administrators or the PowerForm Sender can download the data associated with a PowerForm.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter powerFormId: (path) The id of the PowerForm.
     - parameter dataLayout: (query) The layout in which to return the PowerForm data. Valid values are:  - `Native` - `Csv_Classic` - `Csv_One_Envelope_Per_Line` - `Xml_Classic` (optional)
     - parameter fromDate: (query) The start date for a date range in UTC DateTime format.  **Note**: If this property is null, no date filtering is applied. (optional)
     - parameter toDate: (query) The end date of a date range in UTC DateTime format. The default value is `UtcNow`. (optional)
     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func powerFormsGetPowerFormFormDataRaw(accountId: String, powerFormId: String, dataLayout: String? = nil, fromDate: String? = nil, toDate: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        var path = "/v2.1/accounts/{accountId}/powerforms/{powerFormId}/form_data"
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

            struct QueryParams: Content {
                var dataLayout: String?
                var fromDate: String?
                var toDate: String?
            }
            try request.query.encode(QueryParams(dataLayout: dataLayout, fromDate: fromDate, toDate: toDate))

            try beforeSend(&request)
        }
    }

    public enum PowerFormsGetPowerFormFormData {
        case http200(value: PowerFormsFormDataResponse, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: PowerFormsFormDataResponse, raw: ClientResponse)
    }

    /**
     Returns the data that users entered in a PowerForm.

     GET /v2.1/accounts/{accountId}/powerforms/{powerFormId}/form_data

     This method enables Powerform Administrators or the sender of a PowerForm to download the data that recipients have entered into a PowerForm.  You specify the format in which you want to retrieve the data in the `Accept` header. This header accepts the following values:   - `application/json`: JSON format - `application/xml`: XML format - `text/csv`: Comma-separated value (CSV) format  **Note**: Only PowerForm Administrators or the PowerForm Sender can download the data associated with a PowerForm.

     - parameter accountId: (path) The external account number (int) or account ID GUID.
     - parameter powerFormId: (path) The id of the PowerForm.
     - parameter dataLayout: (query) The layout in which to return the PowerForm data. Valid values are:  - `Native` - `Csv_Classic` - `Csv_One_Envelope_Per_Line` - `Xml_Classic` (optional)
     - parameter fromDate: (query) The start date for a date range in UTC DateTime format.  **Note**: If this property is null, no date filtering is applied. (optional)
     - parameter toDate: (query) The end date of a date range in UTC DateTime format. The default value is `UtcNow`. (optional)
     - returns: `EventLoopFuture` of `PowerFormsGetPowerFormFormData`
     */
    open class func powerFormsGetPowerFormFormData(accountId: String, powerFormId: String, dataLayout: String? = nil, fromDate: String? = nil, toDate: String? = nil, headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<PowerFormsGetPowerFormFormData> {
        return powerFormsGetPowerFormFormDataRaw(accountId: accountId, powerFormId: powerFormId, dataLayout: dataLayout, fromDate: fromDate, toDate: toDate, headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> PowerFormsGetPowerFormFormData in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(PowerFormsFormDataResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: PowerFormsFormDataResponse.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(PowerFormsFormDataResponse.self, using: Configuration.contentConfiguration.requireDecoder(for: PowerFormsFormDataResponse.defaultContentType)), raw: response)
            }
        }
    }
}
