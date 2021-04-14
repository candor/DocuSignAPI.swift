//
// ServicesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

open class ServicesAPI {
    /**
     Retrieves the available REST API versions.

     GET /service_information

     Retrieves the available REST API versions.  DocuSign Production system: https://www.docusign.net/restapi/service_information DocuSign Demo system: https://demo.docusign.net/restapi/service_information  You do not need an integrator key to view the REST API versions and resources.

     - returns: `EventLoopFuture` of `ClientResponse`
     */
    open class func serviceInformationGetServiceInformationRaw(headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ClientResponse> {
        let path = "/service_information"
        let URLString = DocuSignAPI.basePath + path

        guard let apiClient = Configuration.apiClient else {
            fatalError("Configuration.apiClient is not set.")
        }

        return apiClient.send(.GET, headers: headers, to: URI(string: URLString)) { request in
            try Configuration.apiWrapper(&request)

            try beforeSend(&request)
        }
    }

    public enum ServiceInformationGetServiceInformation {
        case http200(value: ServiceInformation, raw: ClientResponse)
        case http400(value: ErrorDetails, raw: ClientResponse)
        case http0(value: ServiceInformation, raw: ClientResponse)
    }

    /**
     Retrieves the available REST API versions.

     GET /service_information

     Retrieves the available REST API versions.  DocuSign Production system: https://www.docusign.net/restapi/service_information DocuSign Demo system: https://demo.docusign.net/restapi/service_information  You do not need an integrator key to view the REST API versions and resources.

     - returns: `EventLoopFuture` of `ServiceInformationGetServiceInformation`
     */
    open class func serviceInformationGetServiceInformation(headers: HTTPHeaders = DocuSignAPI.customHeaders, beforeSend: (inout ClientRequest) throws -> Void = { _ in }) -> EventLoopFuture<ServiceInformationGetServiceInformation> {
        return serviceInformationGetServiceInformationRaw(headers: headers, beforeSend: beforeSend).flatMapThrowing { response -> ServiceInformationGetServiceInformation in
            switch response.status.code {
            case 200:
                return .http200(value: try response.content.decode(ServiceInformation.self, using: Configuration.contentConfiguration.requireDecoder(for: ServiceInformation.defaultContentType)), raw: response)
            case 400:
                return .http400(value: try response.content.decode(ErrorDetails.self, using: Configuration.contentConfiguration.requireDecoder(for: ErrorDetails.defaultContentType)), raw: response)
            default:
                return .http0(value: try response.content.decode(ServiceInformation.self, using: Configuration.contentConfiguration.requireDecoder(for: ServiceInformation.defaultContentType)), raw: response)
            }
        }
    }
}
