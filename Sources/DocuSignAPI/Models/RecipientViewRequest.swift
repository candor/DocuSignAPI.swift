//
// RecipientViewRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import Vapor

/** The request body for the EnvelopeViews::createRecipient and EnvelopeViews::createSharedRecipient methods. */
public final class RecipientViewRequest: Content, Hashable {
    /** A unique identifier of the authentication event executed by the client application. */
    public var assertionId: String?
    /** A sender-generated value that indicates the date and time that the signer was authenticated. */
    public var authenticationInstant: String?
    /** Required. Choose a value that most closely matches the technique your application used to authenticate the recipient / signer.   Choose a value from this list:  * Biometric  * Email * HTTPBasicAuth * Kerberos * KnowledgeBasedAuth * None * PaperDocuments * Password * RSASecureID * SingleSignOn_CASiteminder * SingleSignOn_InfoCard * SingleSignOn_MicrosoftActiveDirectory * SingleSignOn_Other * SingleSignOn_Passport * SingleSignOn_SAML * Smartcard * SSLMutualAuth * X509Certificate  This information is included in the Certificate of Completion. */
    public var authenticationMethod: String?
    /** A sender-created value. If provided, the recipient is treated as an embedded (captive) recipient or signer.  Use your application's client ID (user ID) for the recipient. Doing so enables the details of your application's authentication of the recipient to be connected to the recipient's signature if the signature is disputed or repudiated.  Maximum length: 100 characters. */
    public var clientUserId: String?
    /** (Required) Specifies the email of the recipient. You can use either `email` and `userName` or `userId` to identify the recipient. */
    public var email: String?
    /**  */
    public var frameAncestors: [String]?
    /**  */
    public var messageOrigins: [String]?
    /** Only used if `pingUrl` is specified. This is the interval, in seconds, between pings on the `pingUrl`.  The default is `300` seconds. Valid values are 60-1200 seconds. */
    public var pingFrequency: String?
    /** The client URL that the DocuSign Signing experience should ping to indicate to the client that Signing is active. An HTTP GET call is executed against the client. The response from the client is ignored. The intent is for the client to reset its session timer when the request is received. */
    public var pingUrl: String?
    /** A local reference that senders use to map recipients to other objects, such as specific document tabs. Within an envelope, each `recipientId` must be unique, but there is no uniqueness requirement across envelopes. For example, many envelopes assign the first recipient a `recipientId` of `1`. */
    public var recipientId: String?
    /** (Optional) The URL to which the user should be redirected after the signing session has ended. DocuSign redirects to the URL and includes an `event` query parameter that can be used by your application.  Maximum Length: 500 characters. If the `returnUrl` exceeds this limit, the user is redirected to a truncated URL.  Possible `event` parameter values include:   * `access_code_failed`: Recipient used incorrect access code. * `cancel`: Recipient canceled the signing operation,   possibly by using the **Finish Later** option. * `decline`: Recipient declined to sign. * `exception`: A system error occurred during the signing process. * `fax_pending`: Recipient has a fax pending. * `id_check_failed`: Recipient failed an ID check. * `session_timeout`: The session timed out. An account can control this timeout by using the **Signer Session Timeout** option. * `signing_complete`: The recipient completed the signing ceremony. * `ttl_expired`: The Time To Live token for the envelope has expired.   After being successfully invoked, these tokens expire   after 5 minutes or if the envelope is voided. * `viewing_complete`: The recipient completed viewing an envelope   that is in a read-only/terminal state,   such as completed, declined, or voided.  Ensure that you include `https://` in the URL to prevent the redirect from failing on certain browsers.  */
    public var returnUrl: String?
    /** The domain in which the user authenticated. */
    public var securityDomain: String?
    /** The user ID of the recipient. You can use either the user ID or email and user name to identify the recipient.   If `userId` is used and a `clientUserId` is provided, the value in the `userId` property must match a `recipientId` (which you can retrieve with a GET recipients call) for the envelope.   If a `userId` is used and a `clientUserId` is not provided, the `userId` must match the user ID of the authenticating user. */
    public var userId: String?
    /** The username of the recipient. You can use either `email` and `userName` or `userId` to identify the recipient. */
    public var userName: String?
    /** Specifies whether a browser should be allowed to render a page in a frame or IFrame. Setting this property ensures that your content is not embedded into unauthorized pages or frames.  Valid values are:  - `deny`: The page cannot be displayed in a frame. - `same_origin`: The page can only be displayed in a frame on the same origin as the page itself. - `allow_from`: The page can only be displayed in a frame on the origin specified by the `xFrameOptionsAllowFromUrl` property. */
    public var xFrameOptions: String?
    /** When the value of `xFrameOptions` is `allow_from`, this property specifies the origin on which the page is allowed to display in a frame. If the value of `xFrameOptions` is `allow_from`, you must include a value for this property. */
    public var xFrameOptionsAllowFromUrl: String?

    public init(assertionId: String? = nil, authenticationInstant: String? = nil, authenticationMethod: String? = nil, clientUserId: String? = nil, email: String? = nil, frameAncestors: [String]? = nil, messageOrigins: [String]? = nil, pingFrequency: String? = nil, pingUrl: String? = nil, recipientId: String? = nil, returnUrl: String? = nil, securityDomain: String? = nil, userId: String? = nil, userName: String? = nil, xFrameOptions: String? = nil, xFrameOptionsAllowFromUrl: String? = nil) {
        self.assertionId = assertionId
        self.authenticationInstant = authenticationInstant
        self.authenticationMethod = authenticationMethod
        self.clientUserId = clientUserId
        self.email = email
        self.frameAncestors = frameAncestors
        self.messageOrigins = messageOrigins
        self.pingFrequency = pingFrequency
        self.pingUrl = pingUrl
        self.recipientId = recipientId
        self.returnUrl = returnUrl
        self.securityDomain = securityDomain
        self.userId = userId
        self.userName = userName
        self.xFrameOptions = xFrameOptions
        self.xFrameOptionsAllowFromUrl = xFrameOptionsAllowFromUrl
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case assertionId
        case authenticationInstant
        case authenticationMethod
        case clientUserId
        case email
        case frameAncestors
        case messageOrigins
        case pingFrequency
        case pingUrl
        case recipientId
        case returnUrl
        case securityDomain
        case userId
        case userName
        case xFrameOptions
        case xFrameOptionsAllowFromUrl
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(assertionId, forKey: .assertionId)
        try container.encodeIfPresent(authenticationInstant, forKey: .authenticationInstant)
        try container.encodeIfPresent(authenticationMethod, forKey: .authenticationMethod)
        try container.encodeIfPresent(clientUserId, forKey: .clientUserId)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(frameAncestors, forKey: .frameAncestors)
        try container.encodeIfPresent(messageOrigins, forKey: .messageOrigins)
        try container.encodeIfPresent(pingFrequency, forKey: .pingFrequency)
        try container.encodeIfPresent(pingUrl, forKey: .pingUrl)
        try container.encodeIfPresent(recipientId, forKey: .recipientId)
        try container.encodeIfPresent(returnUrl, forKey: .returnUrl)
        try container.encodeIfPresent(securityDomain, forKey: .securityDomain)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(userName, forKey: .userName)
        try container.encodeIfPresent(xFrameOptions, forKey: .xFrameOptions)
        try container.encodeIfPresent(xFrameOptionsAllowFromUrl, forKey: .xFrameOptionsAllowFromUrl)
    }

    public static func == (lhs: RecipientViewRequest, rhs: RecipientViewRequest) -> Bool {
        lhs.assertionId == rhs.assertionId &&
            lhs.authenticationInstant == rhs.authenticationInstant &&
            lhs.authenticationMethod == rhs.authenticationMethod &&
            lhs.clientUserId == rhs.clientUserId &&
            lhs.email == rhs.email &&
            lhs.frameAncestors == rhs.frameAncestors &&
            lhs.messageOrigins == rhs.messageOrigins &&
            lhs.pingFrequency == rhs.pingFrequency &&
            lhs.pingUrl == rhs.pingUrl &&
            lhs.recipientId == rhs.recipientId &&
            lhs.returnUrl == rhs.returnUrl &&
            lhs.securityDomain == rhs.securityDomain &&
            lhs.userId == rhs.userId &&
            lhs.userName == rhs.userName &&
            lhs.xFrameOptions == rhs.xFrameOptions &&
            lhs.xFrameOptionsAllowFromUrl == rhs.xFrameOptionsAllowFromUrl
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(assertionId?.hashValue)
        hasher.combine(authenticationInstant?.hashValue)
        hasher.combine(authenticationMethod?.hashValue)
        hasher.combine(clientUserId?.hashValue)
        hasher.combine(email?.hashValue)
        hasher.combine(frameAncestors?.hashValue)
        hasher.combine(messageOrigins?.hashValue)
        hasher.combine(pingFrequency?.hashValue)
        hasher.combine(pingUrl?.hashValue)
        hasher.combine(recipientId?.hashValue)
        hasher.combine(returnUrl?.hashValue)
        hasher.combine(securityDomain?.hashValue)
        hasher.combine(userId?.hashValue)
        hasher.combine(userName?.hashValue)
        hasher.combine(xFrameOptions?.hashValue)
        hasher.combine(xFrameOptionsAllowFromUrl?.hashValue)
    }
}