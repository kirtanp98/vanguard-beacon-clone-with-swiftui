//
//  InactiveView.swift
//  VanguardCopy
//
//  Created by Kirtan Patel on 1/29/21.
//

import SwiftUI

struct InactiveView: View {
    var body: some View {
        Text("V")
            .bold()
            .font(.system(size: 110))
            .foregroundColor(Color("vanguard"))
    }
}

struct InactiveView_Previews: PreviewProvider {
    static var previews: some View {
        InactiveView()
    }
}
