import Foundation
import Vapor

public final class OfflineAttributes: Content { }

extension OfflineAttributes: Hashable {
    public static func == (lhs: OfflineAttributes, rhs: OfflineAttributes) -> Bool {
        return true
    }
    public func hash(into hasher: inout Hasher) {
    }
}
