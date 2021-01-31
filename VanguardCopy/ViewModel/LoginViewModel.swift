//
//  LoginViewModel.swift
//  VanguardCopy
//
//  Created by Kirtan Patel on 1/29/21.
//

import Foundation
import LocalAuthentication

class LoginManager: ObservableObject {
    @Published var loginedIn = false
    @Published var pauseViewInactive = false
    
    func authenticate() {
        let context = LAContext()
        var error: NSError?

        // check whether biometric authentication is possible
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            // it's possible, so go ahead and use it
            let reason = "We need to unlock your data."

            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in
                // authentication has now completed
                DispatchQueue.main.async {
                    if success {
                        // authenticated successfully
                        self.loginedIn = true
                        self.pauseViewInactive = true
                        self.deactivate()
                    } else {
                        // there was a problem
                    }
                }
            }
        } else {
            // no biometrics
        }
    }
    
    private func deactivate() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.pauseViewInactive = false
        }
    }
}
