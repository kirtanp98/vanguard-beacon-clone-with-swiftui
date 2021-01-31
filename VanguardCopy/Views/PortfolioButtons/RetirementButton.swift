//
//  RetirementButton.swift
//  VanguardCopy
//
//  Created by Kirtan Patel on 1/30/21.
//

import SwiftUI

struct RetirementButton: View {
    var body: some View {
        VStack {
            HStack {
                Text("VANGUARD RETIREMENT AND SAVINGS PLAN")
                    .font(.system(size: 20))
                    .bold()
                    .padding(.leading)
                Spacer()
            }
            .fixedSize(horizontal: false, vertical: true)
            .padding(.vertical)
            
            HStack {
                Spacer()
                VStack(alignment: .trailing) {
                    Text("$9,000.00")
                        .moneyStyle(size: 35)
                    (Text("as of ") + Text(Date(), style: .time) + Text(" \(Date(), formatter: DateFormatter.shortDate)., ET"))
                        .dateStyle()
                    
                }.padding(.trailing)
            }
            .padding(.vertical)
        }
    }
}

struct RetirementButton_Previews: PreviewProvider {
    static var previews: some View {
        RetirementButton()
    }
}
