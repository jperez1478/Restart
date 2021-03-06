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
            Color("ColorBlue")
                .ignoresSafeArea(.all, edges: .all)
            VStack(spacing: 20) {
               //MARK: -Header
                
                Spacer()
                VStack(spacing: 20) {
                    Text("Share.")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Text("""
                        
                        It's not how much we give but
                        How much love we put into giving

                        """)
                        .font(.title3)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 10)
                }
                
                //MARK: -Center
                
                ZStack {
                    ZStack {
                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 40)
                            .frame(width: 260, height: 260, alignment: .center)
                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 80)
                            .frame(width: 260, height: 260, alignment: .center)
                    }  //:ZStack
                    
                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                    
                }//:Center
                
                Spacer()
                
                //MARK: -Footer
                
                
        
            }
        }//: VStack
    }//: ZStack
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
