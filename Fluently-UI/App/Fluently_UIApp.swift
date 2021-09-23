//
//  Fluently_UIApp.swift
//  Fluently-UI
//
//  Created by Sawyer Cherry on 9/16/21.
//

import SwiftUI

@main
struct Fluently_UIApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true

    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
