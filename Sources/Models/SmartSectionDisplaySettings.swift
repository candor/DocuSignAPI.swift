//
// SmartSectionDisplaySettings.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import Vapor

/** These properties define how a Smart Section displays. A Smart Section is a type of display section. */
public final class SmartSectionDisplaySettings: Content {
    /** Specifies the valid CSS-formatted styles to use on responsive table cells. Only valid in display sections of `responsive_table` or `responsive_table_single_column` types. */
    public var cellStyle: String?
    public var collapsibleSettings: SmartSectionCollapsibleDisplaySettings?
    /** Indicates the display type. Must be one of the following enum values:  - **inline**: Leaves the HTML where it is in the document. This allows for adding a label or presenting on a separate page. - **collapsible**: The HTML in the section may be expanded or collapsed. By default, the section is expanded. - **collapsed**: The HTML in the section may be expanded or collapsed. By default, the section is collapsed. - **responsive_table**: Converts the section into a responsive table. Note that this style is applied only on HTML tables that fall within the `startAnchor` and `endAnchor` positions. - **responsive_table_single_column**: Converts the section into a responsive, single-column table. Note that this style is applied only on HTML tables that fall within the `startAnchor` and `endAnchor` positions. The table is converted to a single column in which each column becomes a row and is stacked. - **print_only**: Prevents this portion of the HTML from displaying in the responsive signing view. */
    public var display: String?
    /** The label for the display section. */
    public var displayLabel: String?
    /** The position on the page where the display section appears. */
    public var displayOrder: Int?
    /** The number of the page on which the display section appears. */
    public var displayPageNumber: Int?
    /** When **true**, the `displayLabel` is hidden when the display section is expanded and the display section is no longer collapsible. This property is valid only when the value of the `display` property is `collapsed`. */
    public var hideLabelWhenOpened: Bool?
    /** Specifies the valid CSS-formatted styles to use on inline display sections. This property is valid only when the value of the `display` property is `inline`. */
    public var inlineOuterStyle: String?
    /** The label for the display section when it is expanded from a collapsed state. This label displays only on the first opening and is only valid with the value of the `display` property is `collapsed`. */
    public var labelWhenOpened: String?
    /** Enables you to add descriptive text that appears before a collapsed section or continue button. */
    public var preLabel: String?
    /** When **true** and the section is expanded, the position of the section close is scrolled to the top of the screen. This property is only valid when the value of the `display` property is `collapsed`. */
    public var scrollToTopWhenOpened: Bool?
    /** Specifies the valid CSS-formatted styles to use on responsive tables. This property is valid only when the value of the `display` property is `responsive_table` or `responsive_table_single_column`. */
    public var tableStyle: String?

    public init(cellStyle: String? = nil, collapsibleSettings: SmartSectionCollapsibleDisplaySettings? = nil, display: String? = nil, displayLabel: String? = nil, displayOrder: Int? = nil, displayPageNumber: Int? = nil, hideLabelWhenOpened: Bool? = nil, inlineOuterStyle: String? = nil, labelWhenOpened: String? = nil, preLabel: String? = nil, scrollToTopWhenOpened: Bool? = nil, tableStyle: String? = nil) {
        self.cellStyle = cellStyle
        self.collapsibleSettings = collapsibleSettings
        self.display = display
        self.displayLabel = displayLabel
        self.displayOrder = displayOrder
        self.displayPageNumber = displayPageNumber
        self.hideLabelWhenOpened = hideLabelWhenOpened
        self.inlineOuterStyle = inlineOuterStyle
        self.labelWhenOpened = labelWhenOpened
        self.preLabel = preLabel
        self.scrollToTopWhenOpened = scrollToTopWhenOpened
        self.tableStyle = tableStyle
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case cellStyle
        case collapsibleSettings
        case display
        case displayLabel
        case displayOrder
        case displayPageNumber
        case hideLabelWhenOpened
        case inlineOuterStyle
        case labelWhenOpened
        case preLabel
        case scrollToTopWhenOpened
        case tableStyle
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encodeIfPresent(cellStyle, forKey: .cellStyle)
        try container.encodeIfPresent(collapsibleSettings, forKey: .collapsibleSettings)
        try container.encodeIfPresent(display, forKey: .display)
        try container.encodeIfPresent(displayLabel, forKey: .displayLabel)
        try container.encodeIfPresent(displayOrder, forKey: .displayOrder)
        try container.encodeIfPresent(displayPageNumber, forKey: .displayPageNumber)
        try container.encodeIfPresent(hideLabelWhenOpened, forKey: .hideLabelWhenOpened)
        try container.encodeIfPresent(inlineOuterStyle, forKey: .inlineOuterStyle)
        try container.encodeIfPresent(labelWhenOpened, forKey: .labelWhenOpened)
        try container.encodeIfPresent(preLabel, forKey: .preLabel)
        try container.encodeIfPresent(scrollToTopWhenOpened, forKey: .scrollToTopWhenOpened)
        try container.encodeIfPresent(tableStyle, forKey: .tableStyle)
    }

    // Decodable protocol methods

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        cellStyle = try container.decodeIfPresent(String.self, forKey: .cellStyle)
        collapsibleSettings = try container.decodeIfPresent(SmartSectionCollapsibleDisplaySettings.self, forKey: .collapsibleSettings)
        display = try container.decodeIfPresent(String.self, forKey: .display)
        displayLabel = try container.decodeIfPresent(String.self, forKey: .displayLabel)
        displayOrder = try container.decodeIfPresent(Int.self, forKey: .displayOrder)
        displayPageNumber = try container.decodeIfPresent(Int.self, forKey: .displayPageNumber)
        hideLabelWhenOpened = try container.decodeIfPresent(Bool.self, forKey: .hideLabelWhenOpened)
        inlineOuterStyle = try container.decodeIfPresent(String.self, forKey: .inlineOuterStyle)
        labelWhenOpened = try container.decodeIfPresent(String.self, forKey: .labelWhenOpened)
        preLabel = try container.decodeIfPresent(String.self, forKey: .preLabel)
        scrollToTopWhenOpened = try container.decodeIfPresent(Bool.self, forKey: .scrollToTopWhenOpened)
        tableStyle = try container.decodeIfPresent(String.self, forKey: .tableStyle)
    }
}

extension SmartSectionDisplaySettings: Hashable {
    public static func == (lhs: SmartSectionDisplaySettings, rhs: SmartSectionDisplaySettings) -> Bool {
        lhs.cellStyle == rhs.cellStyle &&
            lhs.collapsibleSettings == rhs.collapsibleSettings &&
            lhs.display == rhs.display &&
            lhs.displayLabel == rhs.displayLabel &&
            lhs.displayOrder == rhs.displayOrder &&
            lhs.displayPageNumber == rhs.displayPageNumber &&
            lhs.hideLabelWhenOpened == rhs.hideLabelWhenOpened &&
            lhs.inlineOuterStyle == rhs.inlineOuterStyle &&
            lhs.labelWhenOpened == rhs.labelWhenOpened &&
            lhs.preLabel == rhs.preLabel &&
            lhs.scrollToTopWhenOpened == rhs.scrollToTopWhenOpened &&
            lhs.tableStyle == rhs.tableStyle
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(cellStyle?.hashValue)
        hasher.combine(collapsibleSettings?.hashValue)
        hasher.combine(display?.hashValue)
        hasher.combine(displayLabel?.hashValue)
        hasher.combine(displayOrder?.hashValue)
        hasher.combine(displayPageNumber?.hashValue)
        hasher.combine(hideLabelWhenOpened?.hashValue)
        hasher.combine(inlineOuterStyle?.hashValue)
        hasher.combine(labelWhenOpened?.hashValue)
        hasher.combine(preLabel?.hashValue)
        hasher.combine(scrollToTopWhenOpened?.hashValue)
        hasher.combine(tableStyle?.hashValue)
    }
}