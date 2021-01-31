//
//  TransactView.swift
//  VanguardCopy
//
//  Created by Kirtan Patel on 1/30/21.
//

import SwiftUI

struct TransactView: View {
    var body: some View {
        ZStack {
            VStack {
                Color("vanguard")
                    .frame(height: 255)
                    .ignoresSafeArea()
                Spacer()
            }
            VStack {
                TransactGroupView()
            }
        }
    }
}

struct TransactView_Previews: PreviewProvider {
    static var previews: some View {
        TransactView()
    }
}
