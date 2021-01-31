//
//  PerformaceReturnsView.swift
//  VanguardCopy
//
//  Created by Kirtan Patel on 1/30/21.
//

import SwiftUI

struct PerformanceButton: View {
    
    @State var toggle: Results = .year
    @State var showModal = false
    
    var body: some View {
        VStack {
            HStack {
                UnderlineText(text: "Performance returns")
                    .onTapGesture {
                        showModal.toggle()
                    }
                    .padding(.leading)
                Spacer()
                ToggleButton(toggle: $toggle)
                    .padding(.trailing)
            }.padding(.top)
            
            HStack {
                Spacer()
                VStack(alignment: .trailing) {
                    Text(toggle == .year ? "$1,000.00" : "-$1,000.00")
                        .moneyStyle(size: 35)
                    (Text("\(Date(), formatter: DateFormatter.shortDate)") + Text(" - ") + Text("\(Date(), formatter: DateFormatter.shortDate)"))
                        .dateStyle()
                    
                }.padding(.trailing)
            }
            .padding(.bottom)
        }
        .sheet(isPresented: $showModal) {
            FakeDisclosures()
        }
    }
}

struct PerformanceButton_Previews: PreviewProvider {
    static var previews: some View {
        PerformanceButton()
    }
}
