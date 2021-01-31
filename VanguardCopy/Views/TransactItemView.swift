//
//  TransactItemView.swift
//  VanguardCopy
//
//  Created by Kirtan Patel on 1/30/21.
//

import SwiftUI

struct TransactItemView: View {
    
    @Environment(\.colorScheme) var colorScheme
    var transactionType: TransactionType
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text(transactionType.title.uppercased())
                    .font(.subheadline)
                    .fontWeight(.medium)
                

                ForEach(transactionType.transactions, id: \.id) { transaction in
                    Divider()

                    HStack {
                        VStack(alignment: .leading) {
                            Text(transaction.transaction)
                                .bold()
                                .font(.title2)
                                .padding(.bottom, 5)
                            Text(transaction.description)
                                .font(.caption)
                        }
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    .padding(.vertical, 5)
                }
            
                
            }.padding()
        }.background(colorScheme == .dark ? Color("darkdarkgray") : Color.white)
        .cornerRadius(5)
        .shadow(radius: 5)
    }
}

struct TransactItemView_Previews: PreviewProvider {
    static var previews: some View {
        TransactItemView(transactionType: TransactionType(title: "hello", transactions: []))
    }
}
