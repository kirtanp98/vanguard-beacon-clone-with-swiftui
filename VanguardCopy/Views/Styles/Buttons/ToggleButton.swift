//
//  ToggleButton.swift
//  VanguardCopy
//
//  Created by Kirtan Patel on 1/30/21.
//

import SwiftUI

struct ToggleButton: View {
    @Environment(\.colorScheme) var colorScheme
    
    @Binding var toggle: Results
    @State var showToggles = false
    
    let width: CGFloat = 100
    let height: CGFloat = 30
    
    var body: some View {
        if showToggles {
            HStack(spacing: 0) {
                VStack {
                    Text("YTD")
                        .font(.caption)
                        .fontWeight(.light)
                        .foregroundColor(toggle == .year ? .white : Color("darkGreen"))
                }.frame(width: width/2, height: height)
                .background(toggle == .year ? Color("darkGreen") : (colorScheme == .dark ? .vanguardDarkGray : .white))
                .onTapGesture {
                    toggle = .year
                    showToggles.toggle()
                    print("year")
                }
                VStack {
                    Text("ALL")
                        .font(.caption)
                        .fontWeight(.light)
                        .foregroundColor(toggle == .all ? .white : Color("darkGreen"))
                }.frame(width: width/2, height: height)
                .background(toggle == .all ? Color("darkGreen") : (colorScheme == .dark ? .vanguardDarkGray : .white))
                .onTapGesture {
                    toggle = .all
                    showToggles.toggle()
                    print("all")
                }
            }
            .frame(width: width, height: height)
            .clipShape(Capsule())
        } else {
            HStack(spacing: 5) {
                Text(toggle == .year ? "YTD" : "ALL")
                    .fontWeight(.light)
                    .font(.caption)
                Image(systemName: "chevron.down")
            }
            .frame(height: height)
            .padding(.horizontal, 8)
            .foregroundColor(.white)
            .background(Capsule().foregroundColor(Color("darkGreen")))
            .onTapGesture {
                showToggles.toggle()
            }
        }
    }
}

struct ToggleButton_Previews: PreviewProvider {
    static var previews: some View {
        ToggleButton(toggle: .constant(.year))
    }
}
