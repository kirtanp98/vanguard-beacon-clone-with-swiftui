//
//  PortfolioView.swift
//  VanguardCopy
//
//  Created by Kirtan Patel on 1/29/21.
//

import SwiftUI

struct PortfolioView: View {
    @Environment(\.colorScheme) var colorScheme
    
    @EnvironmentObject var feedBackModalController: FeedbackModalController
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image(systemName: "plus.viewfinder")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20)
                    .foregroundColor(Color("vanguard"))
                    .padding(.trailing, 25)
                    .padding(.bottom)
                    .onTapGesture {
                        feedBackModalController.showFeedBackModal = true
                    }
            }
            ScrollView(showsIndicators: true) {
                LazyVStack {
                    HStack {
                        Text("Total Assets")
                            .bold()
                            .font(.title2)
                        Spacer()
                    }.padding(.leading)
                    .padding(.bottom)
                    
                    HStack {
                        Spacer()
                        VStack(alignment: .trailing) {
                            Text("$19,000.00")
                                .moneyStyle(size: 50)
                            (Text("as of ") + Text(Date(), style: .time) + Text(" \(Date(), formatter: DateFormatter.shortDate)., ET"))
                                .dateStyle()
                        }.padding(.trailing, 25)
                    }
                    
                    PortfolioButtonGroup()
                    
                }
            }
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
    }
}
