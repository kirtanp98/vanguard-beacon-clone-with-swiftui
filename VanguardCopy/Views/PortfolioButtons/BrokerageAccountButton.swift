//
//  BrokerageAccountButton.swift
//  VanguardCopy
//
//  Created by Kirtan Patel on 1/30/21.
//

import SwiftUI

struct BrokerageAccountButton: View {
    var body: some View {
        VStack {
            HStack {
                Text("Kirtan Patel -- Brokerage Account -- ****0000")
                    .font(.system(size: 20))
                    .bold()
                    .padding(.leading)
                Spacer()
            }
            .fixedSize(horizontal: false, vertical: true)
            .padding(.vertical)
            
            HStack {
                Spacer()
                Text("$10,000.00")
                    .moneyStyle(size: 35)
                    .padding(.trailing)
            }
            .padding(.bottom)
        }
    }
}

struct BrokerageAccountButton_Previews: PreviewProvider {
    static var previews: some View {
        BrokerageAccountButton()
    }
}
