import SwiftUI

public extension Color {
    static let componentBackground: Color = 0x313136
    static let background: Color = 0x0B0806
}

extension Color: ExpressibleByIntegerLiteral {
  public init(integerLiteral value: UInt) {
    self.init(
      .sRGB,
      red: Double((value >> 16) & 0xFF) / 255,
      green: Double((value >> 08) & 0xFF) / 255,
      blue: Double((value >> 00) & 0xFF) / 255,
      opacity: 1.0
    )
  }
}
