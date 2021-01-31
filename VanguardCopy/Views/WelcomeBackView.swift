//
//  LoginView.swift
//  VanguardCopy
//
//  Created by Kirtan Patel on 1/29/21.
//

import SwiftUI

struct WelcomeBackView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    @EnvironmentObject var loginManager: LoginManager
    @EnvironmentObject var feedBackModalController: FeedbackModalController
    
    var body: some View {
        ZStack {
            
            (colorScheme == .dark ? Color("vanguard") : Color.white)
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Spacer()
                    Image(systemName: "plus.viewfinder")
                        .foregroundColor(colorScheme == .dark ? .white : Color("vanguard"))
                        .font(.headline)
                        .padding(.trailing, 15)
                        .onTapGesture {
                            feedBackModalController.showFeedBackModal = true
                        }
                }
                .padding(.top, 12)
                VStack {
                    Text("Vanguard")
                        .foregroundColor(colorScheme == .dark ? .white : Color("vanguard"))
                        .font(.system(size: 42))
                        .fontWeight(.heavy)
                    VStack {
                        Text("Welcome back, Kirtan!")
                            .fontWeight(.semibold)
                        Text("Let's check in on your portfolio")
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(colorScheme == .dark ? .white : Color("vanguard"))
                    .font(.system(size: 18))
                    .padding(.top, 130)
                }.padding(.top, 120)
                Spacer()
                
                VStack {
                    VStack {
                        Button {
                            loginManager.authenticate()
                        } label: {
                            Image(systemName: "faceid")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(colorScheme == .dark ? .white : Color("vanguard"))
                                .frame(height: 50)
                                .padding(.bottom, 10)
                        }
                        
                        Text("Use your password")
                            .font(.caption)
                            .foregroundColor(colorScheme == .dark ? .white : Color("vanguard"))
                    }.padding(.bottom, 40)
                    HStack(spacing: 20) {
                        Text("Terms")
                        Text("Privacy")
                        Text("Security")
                    }
                    .foregroundColor(colorScheme == .dark ? .white : Color("vanguard"))
                    .font(.caption)
                    .padding(.bottom, 20)
                }
            }
        }
        .onAppear(perform: loginManager.authenticate)
        
    }
}

struct WelcomeBackView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeBackView()
    }
}
