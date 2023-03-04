//
//  IntroView.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/26.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var  currentUserSingedIn: Bool = false
    
    
    
    var body: some View {
        ZStack {
            // background
            RadialGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha:  1)),Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))]),
                center: .topLeading,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height)
                .ignoresSafeArea()
            
            if currentUserSingedIn {
                ProfileView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            } else {
                OnboardingView()
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
            }
        }
    }
}






struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
