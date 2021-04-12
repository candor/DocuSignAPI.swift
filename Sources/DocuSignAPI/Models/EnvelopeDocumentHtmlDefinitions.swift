//
// EnvelopeDocumentHtmlDefinitions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/**  */
public final class EnvelopeDocumentHtmlDefinitions: Content, Hashable {
    /** Holds the properties that define how to generate the responsive-formatted HTML for the document. */
    public var htmlDefinitions: [DocumentHtmlDefinitionOriginal]?

    public init(htmlDefinitions: [DocumentHtmlDefinitionOriginal]? = nil) {
        self.htmlDefinitions = htmlDefinitions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case htmlDefinitions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(htmlDefinitions, forKey: .htmlDefinitions)
    }

    public static func == (lhs: EnvelopeDocumentHtmlDefinitions, rhs: EnvelopeDocumentHtmlDefinitions) -> Bool {
        lhs.htmlDefinitions == rhs.htmlDefinitions
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(htmlDefinitions?.hashValue)
    }
}