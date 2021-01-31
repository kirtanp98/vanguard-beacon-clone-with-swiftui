//
//  ContentView.swift
//  VanguardCopy
//
//  Created by Kirtan Patel on 1/29/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            PortfolioView()
                .tabItem {
                    Image(systemName: "line.diagonal.arrow")
                    Text("Portfolio")
                }
            TransactView()
                .tabItem {
                    Image(systemName: "arrow.right.arrow.left")
                    Text("Transact")
                }
            SettingsView()
                .tabItem {
                    Image(systemName: "gearshape")
                    Text("Settings")
                }
        }
        .accentColor(Color("vanguard"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
