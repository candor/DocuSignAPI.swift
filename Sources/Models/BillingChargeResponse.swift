//
// BillingChargeResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** Defines a billing charge response object. */
public final class BillingChargeResponse: Content {
    /** Reserved: TBD */
    public var billingChargeItems: [BillingCharge]?

    public init(billingChargeItems: [BillingCharge]? = nil) {
        self.billingChargeItems = billingChargeItems
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case billingChargeItems
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(billingChargeItems, forKey: .billingChargeItems)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        billingChargeItems = try container.decodeIfPresent([BillingCharge].self, forKey: .billingChargeItems)
    }
}

extension BillingChargeResponse: Hashable {
    public static func == (lhs: BillingChargeResponse, rhs: BillingChargeResponse) -> Bool {
        lhs.billingChargeItems == rhs.billingChargeItems
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(billingChargeItems?.hashValue)
    }
}