//
//  VanguardCopyApp.swift
//  VanguardCopy
//
//  Created by Kirtan Patel on 1/29/21.
//

import SwiftUI

@main
struct VanguardCopyApp: App {
    @Environment(\.scenePhase) var scenePhase
    @StateObject var loginManager = LoginManager()
    @StateObject var feedBackModal = FeedbackModalController()

        
    var body: some Scene {
        WindowGroup {
            Group {
                if !loginManager.loginedIn || loginManager.pauseViewInactive {
                    WelcomeBackView()
                        .environmentObject(loginManager)
                        .environmentObject(feedBackModal)
                } else {
                    if scenePhase == ScenePhase.active {
                        ContentView()
                            .environmentObject(loginManager)
                            .environmentObject(feedBackModal)
                    } else {
                        InactiveView()
                    }
                }
            }.sheet(isPresented: $feedBackModal.showFeedBackModal) {
                FeedBackView()
            }
        }
    }
}
