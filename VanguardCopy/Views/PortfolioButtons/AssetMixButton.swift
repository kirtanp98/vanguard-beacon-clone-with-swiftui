//
//  AssetMixButton.swift
//  VanguardCopy
//
//  Created by Kirtan Patel on 1/30/21.
//

import SwiftUI

struct AssetMixButton: View {
    
    
    var body: some View {
        ZStack {
            Color("lightblack")
            VStack {
                HStack {
                    Text("Asset Mix")
                        .font(.system(size: 18))
                        .bold()
                        .foregroundColor(.white)
                        .padding(.leading)
                    Spacer()
                }
                .padding(.bottom)
                .padding(.top, 5)
                
                HStack {
                    Spacer()
                    VStack {
                        Text("90%")
                            .moneyStyle(size: 35)
                        Text("Stocks")
                            .font(.caption)
                    }
                    Spacer()
                    VStack {
                        Text("5%")
                            .moneyStyle(size: 35)
                        Text("Bonds")
                            .font(.caption)
                    }
                    Spacer()
                    VStack {
                        Text("5%")
                            .moneyStyle(size: 35)
                        Text("Short-term")
                            .font(.caption)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                .padding(.bottom, 30)
            }
        }
    }
}

struct AssetMixButton_Previews: PreviewProvider {
    static var previews: some View {
        AssetMixButton()
    }
}
