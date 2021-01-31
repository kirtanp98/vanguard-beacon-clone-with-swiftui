//
//  TransactGroupView.swift
//  VanguardCopy
//
//  Created by Kirtan Patel on 1/30/21.
//

import SwiftUI

struct TransactGroupView: View {
    
    @State var offset: CGFloat = 0
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 120 + offset)
            HStack {
                Text("Transact")
                    .foregroundColor(.white)
                    .bold()
                    .font(.title2)
                    .padding(.leading)
                    .animation(.interactiveSpring())
                Spacer()
            }
            ScrollView {
                VStack {
                    GeometryReader { geo in
                        VStack {
                            TransactItemView(transactionType: Transactions.newTrade)
                                .padding(.horizontal)
                                .padding(.bottom, 8)
                                .onChange(of: geo.frame(in: .global).midY) { (value) in
                                    if value <= 210 && value >= 160 {
                                        offset = value - 210 //This doesn't work well
                                    }
                                }
                            TransactItemView(transactionType: Transactions.moveMoney)
                                .padding(.horizontal)
                                .padding(.bottom, 8)
                            TransactItemView(transactionType: Transactions.history)
                                .padding(.horizontal)
                                .padding(.bottom, 8)

                        }
                    }
                }
            }
        }
    }
}

struct TransactGroupView_Previews: PreviewProvider {
    static var previews: some View {
        TransactGroupView()
    }
}
