//
//  Extensions.swift
//  Full Plate
//
//  Created by Alek Simpson on 9/5/21.
//

import Foundation
import SwiftUI

extension View
{
    public func gradientForeground(colors: [Color]) -> some View
    {
        self.overlay(LinearGradient(gradient: .init(colors: colors),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing))
            .mask(self)
    }
}

@available(iOS 13, macCatalyst 13, tvOS 13, watchOS 6, *)
struct ScaledFont: ViewModifier
{
    @Environment(\.sizeCategory) var sizeCategory
    var name: String
    var size: CGFloat

    func body(content: Content) -> some View
    {
       let scaledSize = UIFontMetrics.default.scaledValue(for: size)
        return content.font(.custom(name, size: scaledSize))
    }
}

@available(iOS 13, macCatalyst 13, tvOS 13, watchOS 6, *)
extension View
{
    func scaledFont(name: String, size: CGFloat) -> some View
    {
        return self.modifier(ScaledFont(name: name, size: size))
    }
}

extension Font
{
    public static var ComfortaaTitle: Font
    {
        return Font.custom("Comfortaa-Regular", size: UIFont.preferredFont(forTextStyle: .largeTitle).pointSize)
    }
}
