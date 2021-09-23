//
//  OnboardingView.swift
//  Fluently-UI
//
//  Created by Sawyer Cherry on 9/16/21.
//

import SwiftUI

struct OnboardingView: View {
//    var views: [View] = [WelcomeCardView(), SettingsCardView(), CompletedCardView()]
    var body: some View {
        
        SettingsCardView()
        WelcomeCardView()
        CompletedCardView()

    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
