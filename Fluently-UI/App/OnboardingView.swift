//
//  OnboardingView.swift
//  Fluently-UI
//
//  Created by Sawyer Cherry on 9/16/21.
//

import SwiftUI

struct OnboardingView: View {

    var body: some View {
        TabView {
            
            WelcomeCardView()
            
            SettingsCardView()
            
            CompletedCardView()
            
        }//:  TAB
        .tabViewStyle(.page)

    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
