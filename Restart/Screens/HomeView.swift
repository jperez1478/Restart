//
//  HomeView.swift
//  Restart
//
//  Created by Jessica Perez on 11/25/21.
//

import SwiftUI

struct HomeView: View {
    //MARK: -Properties
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    
    
//MARK: -Body
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Home")
                .font(.largeTitle)
            
            Button(action: {
                isOnboardingViewActive = true 
            }) {
                Text("Restart")
            }
            
        }//:VStack
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
