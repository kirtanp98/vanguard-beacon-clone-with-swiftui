//
//  PortfolioButtonGroup.swift
//  VanguardCopy
//
//  Created by Kirtan Patel on 1/30/21.
//

import SwiftUI

struct PortfolioButtonGroup: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        VStack {
            Button(action: {}) {
                PerformanceButton()
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(VanguardButtonStyle(colorScheme: colorScheme))
            .padding()
            
            Button(action: {}) {
                BrokerageAccountButton()
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(VanguardButtonStyle(colorScheme: colorScheme))
            .padding(.horizontal)
            .padding(.bottom)
            
            Button(action: {}) {
                RetirementButton()
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(VanguardButtonStyle(colorScheme: colorScheme))
            .padding(.horizontal)
            .padding(.bottom)
            
            Button(action: {}) {
                AssetMixButton()
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(ColorButtonStyle(colorScheme: colorScheme))
            .padding(.horizontal)
            .padding(.bottom)

            Button(action: {}) {
                ActivityButton()
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(ColorButtonStyle(colorScheme: colorScheme))
            .padding(.horizontal)
            .padding(.bottom)
        }
    }
}

struct PortfolioButtonGroup_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioButtonGroup()
    }
}
