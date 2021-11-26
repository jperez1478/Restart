//
//  OnboardingView.swift
//  Restart
//
//  Created by Jessica Perez on 11/25/21.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: -Property
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    //MARK: -Body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Text("Onboarding")
                    .font(.largeTitle)
                Button(action:  {
                    isOnboardingViewActive = false
                }) {
                    Text("Start")
                }

            }
        }//: VStack
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
