//
//  VanguardButtonStyle.swift
//  VanguardCopy
//
//  Created by Kirtan Patel on 1/29/21.
//

import SwiftUI

struct VanguardButtonStyle: ButtonStyle {
    var colorScheme: ColorScheme
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .compositingGroup()
            .scaleEffect(configuration.isPressed ? 0.95: 1)
            .background(RoundedRectangle(cornerRadius: 5)
                            .fill(colorScheme == .dark ? Color.black : Color.white)
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
                            .shadow(radius: configuration.isPressed ? 0 : 3, y: configuration.isPressed ? 0 : 3)
                            
            )
            .animation(.interactiveSpring())
    }
}
