//
//  View+Extensions.swift
//  DynamicStackViewSDK-Demo
//
//  Created by Filip Vukadinovic on 2/1/25.
//

import SwiftUI

public struct RoundedRectangleBackground: ViewModifier {
    let backgroundColor: Color
    let cornerRadius: CGFloat
    let borderColor: Color
    let borderWidth: CGFloat

    public func body(content: Content) -> some View {
        content
            .background(backgroundColor)
            .cornerRadius(cornerRadius)
            .overlay(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .strokeBorder(borderColor, lineWidth: borderWidth)
            )
    }
}

public extension View {
    func roundedRectangleBackground(
        backgroundColor: Color,
        cornerRadius: CGFloat,
        borderColor: Color,
        borderWidth: CGFloat
    ) -> some View {
        modifier(RoundedRectangleBackground(
            backgroundColor: backgroundColor,
            cornerRadius: cornerRadius,
            borderColor: borderColor,
            borderWidth: borderWidth
        ))
    }
}
