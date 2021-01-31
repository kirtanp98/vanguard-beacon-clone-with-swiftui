//
//  ActivityButton.swift
//  VanguardCopy
//
//  Created by Kirtan Patel on 1/30/21.
//

import SwiftUI

struct ActivityButton: View {
    
    var body: some View {
        ZStack {
            Color("vanguard")
            VStack {
                HStack {
                    Text("Activity")
                        .font(.system(size: 18))
                        .bold()
                        .foregroundColor(Color.white)
                        .padding(.leading)
                    Spacer()
                }
                .padding(.bottom)
                .padding(.top, 5)
                
                HStack {
                    Spacer()
                    VStack {
                        Text("0")
                            .moneyStyle(size: 35)
                        Text("Open orders")
                            .font(.caption)
                    }
                    Spacer()
                    VStack {
                        Text("20")
                            .moneyStyle(size: 35)
                        Text("Recently completed")
                            .font(.caption)
                    }
                    Spacer()
                }
                .foregroundColor(Color.white)
                .padding(.bottom, 30)
            }
        }

    }
}

struct ActivityButton_Previews: PreviewProvider {
    static var previews: some View {
        ActivityButton()
    }
}
