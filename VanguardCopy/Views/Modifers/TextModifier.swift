//
//  DateTextModifier.swift
//  VanguardCopy
//
//  Created by Kirtan Patel on 1/30/21.
//

import SwiftUI

struct DateStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 14))
            .foregroundColor(.gray)
    }
}

extension View {
    func dateStyle() -> some View {
        self.modifier(DateStyle())
    }
}

struct MoneyStyle: ViewModifier {
    var size: CGFloat
    func body(content: Content) -> some View {
        content
            .font(.system(size: size, weight: .medium, design: .default))
    }
}

extension View {
    func moneyStyle(size: CGFloat) -> some View {
        self.modifier(MoneyStyle(size: size))
    }
}
