//
//  SettingsView.swift
//  VanguardCopy
//
//  Created by Kirtan Patel on 1/29/21.
//

import SwiftUI

struct SettingsView: View {
    
    @EnvironmentObject var feedBackModalController: FeedbackModalController
    @EnvironmentObject var loginManager: LoginManager

    
    @State var faceId = true
    @State var remember = true
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    Divider()
                        .padding(.horizontal)
                    ToggleRowView(toggle: $remember, title: "Remember Me", description: "Save your username on this device for a faster log on.")
                    ToggleRowView(toggle: $faceId, title: "Face ID", description: "User Face ID to instantly log on with your face.")
                    
                    Button("Log off") {
                        print("Log off")
                        loginManager.loginedIn = false
                    }
                    .accentColor(.blue)
                    .padding(.top)
                }
            }.navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button(action: {
                        feedBackModalController.showFeedBackModal = true
                    }) {
                        Image(systemName: "plus.viewfinder")
                    }
                }
            }
        }
    }
}

struct ToggleRowView: View {
    
    @Binding var toggle: Bool
    var title: String
    var description: String
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text(title)
                        .bold()
                    Text(description)
                        .font(.system(size: 15))
                }.padding(.trailing)
                Spacer()
                Toggle(title, isOn: $toggle)
                    .toggleStyle(SwitchToggleStyle(tint: Color("green")))
                    .labelsHidden()
            }
            Divider()
        }.padding(.horizontal)
        .padding(.leading, 5)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
