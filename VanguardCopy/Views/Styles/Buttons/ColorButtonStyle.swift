//
//  ColorButtonStyle.swift
//  VanguardCopy
//
//  Created by Kirtan Patel on 1/30/21.
//

import SwiftUI

struct ColorButtonStyle: ButtonStyle {
    var colorScheme: ColorScheme
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .compositingGroup()
            .overlay(
                ZStack {
                    if colorScheme == .dark {
                        configuration.isPressed ?  Color.clear : Color.vanguardDarkGray
                    } else {
                        configuration.isPressed ?  Color.vanguardGray : Color.clear
                    }
                }.cornerRadius(5)
                .blur(radius: configuration.isPressed ? 1 : 0)
            )
            .cornerRadius(5)
            .shadow(radius: configuration.isPressed ? 0 : 3, y: configuration.isPressed ? 0 : 3)
            .scaleEffect(configuration.isPressed ? 0.98: 1)
            .animation(.interactiveSpring())
    }
}
