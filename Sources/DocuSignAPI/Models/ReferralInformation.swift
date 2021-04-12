//
// ReferralInformation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/** A complex type that contains the following information for entering referral and discount information. The following items are included in the referral information (all string content): enableSupport, includedSeats, saleDiscountPercent, saleDiscountAmount, saleDiscountFixedAmount, saleDiscountPeriods, saleDiscountSeatPriceOverride, planStartMonth, referralCode, referrerName, advertisementId, publisherId, shopperId, promoCode, groupMemberId, idType, and industry  **Note**: saleDiscountPercent, saleDiscountAmount, saleDiscountFixedAmount, saleDiscountPeriods, and saleDiscountSeatPriceOverride are reserved for DoucSign use only. */
public final class ReferralInformation: Content, Hashable {
    /** A complex type that contains the following information for entering referral and discount information. The following items are included in the referral information (all string content): enableSupport, includedSeats, saleDiscountPercent, saleDiscountAmount, saleDiscountFixedAmount, saleDiscountPeriods, saleDiscountSeatPriceOverride, planStartMonth, referralCode, referrerName, advertisementId, publisherId, shopperId, promoCode, groupMemberId, idType, and industry.  **Note**: saleDiscountPercent, saleDiscountAmount, saleDiscountFixedAmount, saleDiscountPeriods, and saleDiscountSeatPriceOverride are reserved for DoucSign use only.  */
    public var advertisementId: String?
    /** When set to **true**, customer support is provided as part of the account plan. */
    public var enableSupport: String?
    /** An optional external id for the referral. */
    public var externalOrgId: String?
    /**  */
    public var groupMemberId: String?
    /**  */
    public var idType: String?
    /** The number of seats (users) included in the plan. */
    public var includedSeats: String?
    /** The name of the industry associated with the referral.   Example: `Accounting` */
    public var industry: String?
    /**  */
    public var planStartMonth: String?
    /**  */
    public var promoCode: String?
    /**  */
    public var publisherId: String?
    /**  */
    public var referralCode: String?
    /** The name of the referrer. */
    public var referrerName: String?
    /** Reserved for DocuSign. */
    public var saleDiscountAmount: String?
    /** Reserved for DocuSign. */
    public var saleDiscountFixedAmount: String?
    /** Reserved for DocuSign. */
    public var saleDiscountPercent: String?
    /** Reserved for DocuSign. */
    public var saleDiscountPeriods: String?
    /** Reserved for DocuSign. */
    public var saleDiscountSeatPriceOverride: String?
    /**  */
    public var shopperId: String?

    public init(advertisementId: String? = nil, enableSupport: String? = nil, externalOrgId: String? = nil, groupMemberId: String? = nil, idType: String? = nil, includedSeats: String? = nil, industry: String? = nil, planStartMonth: String? = nil, promoCode: String? = nil, publisherId: String? = nil, referralCode: String? = nil, referrerName: String? = nil, saleDiscountAmount: String? = nil, saleDiscountFixedAmount: String? = nil, saleDiscountPercent: String? = nil, saleDiscountPeriods: String? = nil, saleDiscountSeatPriceOverride: String? = nil, shopperId: String? = nil) {
        self.advertisementId = advertisementId
        self.enableSupport = enableSupport
        self.externalOrgId = externalOrgId
        self.groupMemberId = groupMemberId
        self.idType = idType
        self.includedSeats = includedSeats
        self.industry = industry
        self.planStartMonth = planStartMonth
        self.promoCode = promoCode
        self.publisherId = publisherId
        self.referralCode = referralCode
        self.referrerName = referrerName
        self.saleDiscountAmount = saleDiscountAmount
        self.saleDiscountFixedAmount = saleDiscountFixedAmount
        self.saleDiscountPercent = saleDiscountPercent
        self.saleDiscountPeriods = saleDiscountPeriods
        self.saleDiscountSeatPriceOverride = saleDiscountSeatPriceOverride
        self.shopperId = shopperId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case advertisementId
        case enableSupport
        case externalOrgId
        case groupMemberId
        case idType
        case includedSeats
        case industry
        case planStartMonth
        case promoCode
        case publisherId
        case referralCode
        case referrerName
        case saleDiscountAmount
        case saleDiscountFixedAmount
        case saleDiscountPercent
        case saleDiscountPeriods
        case saleDiscountSeatPriceOverride
        case shopperId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(advertisementId, forKey: .advertisementId)
        try container.encodeIfPresent(enableSupport, forKey: .enableSupport)
        try container.encodeIfPresent(externalOrgId, forKey: .externalOrgId)
        try container.encodeIfPresent(groupMemberId, forKey: .groupMemberId)
        try container.encodeIfPresent(idType, forKey: .idType)
        try container.encodeIfPresent(includedSeats, forKey: .includedSeats)
        try container.encodeIfPresent(industry, forKey: .industry)
        try container.encodeIfPresent(planStartMonth, forKey: .planStartMonth)
        try container.encodeIfPresent(promoCode, forKey: .promoCode)
        try container.encodeIfPresent(publisherId, forKey: .publisherId)
        try container.encodeIfPresent(referralCode, forKey: .referralCode)
        try container.encodeIfPresent(referrerName, forKey: .referrerName)
        try container.encodeIfPresent(saleDiscountAmount, forKey: .saleDiscountAmount)
        try container.encodeIfPresent(saleDiscountFixedAmount, forKey: .saleDiscountFixedAmount)
        try container.encodeIfPresent(saleDiscountPercent, forKey: .saleDiscountPercent)
        try container.encodeIfPresent(saleDiscountPeriods, forKey: .saleDiscountPeriods)
        try container.encodeIfPresent(saleDiscountSeatPriceOverride, forKey: .saleDiscountSeatPriceOverride)
        try container.encodeIfPresent(shopperId, forKey: .shopperId)
    }

    public static func == (lhs: ReferralInformation, rhs: ReferralInformation) -> Bool {
        lhs.advertisementId == rhs.advertisementId &&
            lhs.enableSupport == rhs.enableSupport &&
            lhs.externalOrgId == rhs.externalOrgId &&
            lhs.groupMemberId == rhs.groupMemberId &&
            lhs.idType == rhs.idType &&
            lhs.includedSeats == rhs.includedSeats &&
            lhs.industry == rhs.industry &&
            lhs.planStartMonth == rhs.planStartMonth &&
            lhs.promoCode == rhs.promoCode &&
            lhs.publisherId == rhs.publisherId &&
            lhs.referralCode == rhs.referralCode &&
            lhs.referrerName == rhs.referrerName &&
            lhs.saleDiscountAmount == rhs.saleDiscountAmount &&
            lhs.saleDiscountFixedAmount == rhs.saleDiscountFixedAmount &&
            lhs.saleDiscountPercent == rhs.saleDiscountPercent &&
            lhs.saleDiscountPeriods == rhs.saleDiscountPeriods &&
            lhs.saleDiscountSeatPriceOverride == rhs.saleDiscountSeatPriceOverride &&
            lhs.shopperId == rhs.shopperId
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(advertisementId?.hashValue)
        hasher.combine(enableSupport?.hashValue)
        hasher.combine(externalOrgId?.hashValue)
        hasher.combine(groupMemberId?.hashValue)
        hasher.combine(idType?.hashValue)
        hasher.combine(includedSeats?.hashValue)
        hasher.combine(industry?.hashValue)
        hasher.combine(planStartMonth?.hashValue)
        hasher.combine(promoCode?.hashValue)
        hasher.combine(publisherId?.hashValue)
        hasher.combine(referralCode?.hashValue)
        hasher.combine(referrerName?.hashValue)
        hasher.combine(saleDiscountAmount?.hashValue)
        hasher.combine(saleDiscountFixedAmount?.hashValue)
        hasher.combine(saleDiscountPercent?.hashValue)
        hasher.combine(saleDiscountPeriods?.hashValue)
        hasher.combine(saleDiscountSeatPriceOverride?.hashValue)
        hasher.combine(shopperId?.hashValue)
    }
}