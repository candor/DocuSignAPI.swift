//
// RecipientSMSAuthentication.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** Contains the element senderProvidedNumbers which is an Array  of phone numbers the recipient can use for SMS text authentication. */
public final class RecipientSMSAuthentication: Content {
    /** An array containing a list of phone numbers that the recipient can use for SMS text authentication.  */
    public var senderProvidedNumbers: [String]?
    public var senderProvidedNumbersMetadata: PropertyMetadata?

    public init(senderProvidedNumbers: [String]? = nil, senderProvidedNumbersMetadata: PropertyMetadata? = nil) {
        self.senderProvidedNumbers = senderProvidedNumbers
        self.senderProvidedNumbersMetadata = senderProvidedNumbersMetadata
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case senderProvidedNumbers
        case senderProvidedNumbersMetadata
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(senderProvidedNumbers, forKey: .senderProvidedNumbers)
        try container.encodeIfPresent(senderProvidedNumbersMetadata, forKey: .senderProvidedNumbersMetadata)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        senderProvidedNumbers = try container.decodeIfPresent([String].self, forKey: .senderProvidedNumbers)
        senderProvidedNumbersMetadata = try container.decodeIfPresent(PropertyMetadata.self, forKey: .senderProvidedNumbersMetadata)
    }
}

extension RecipientSMSAuthentication: Hashable {
    public static func == (lhs: RecipientSMSAuthentication, rhs: RecipientSMSAuthentication) -> Bool {
        lhs.senderProvidedNumbers == rhs.senderProvidedNumbers &&
            lhs.senderProvidedNumbersMetadata == rhs.senderProvidedNumbersMetadata
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(senderProvidedNumbers?.hashValue)
        hasher.combine(senderProvidedNumbersMetadata?.hashValue)
    }
}