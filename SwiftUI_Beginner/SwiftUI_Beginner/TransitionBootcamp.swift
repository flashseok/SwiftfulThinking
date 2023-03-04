//
//  TransitionBootcamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/15.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                
                Button("Button", action: {
//                    withAnimation(.linear(duration: 0.5))
                    withAnimation((.spring()))
                    {
                        showView.toggle()
                    }
                    
                    
                })
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    
                    .animation(.easeInOut, value: showView)
//                    .transition(AnyTransition.slide)
//                    .transition(AnyTransition.move(edge: .leading))
//                    .transition(AnyTransition.opacity.animation(.easeInOut))

                    .transition(.asymmetric(
                        insertion: .move(edge: .leading), // 나올땐 왼쪽에서
                        removal: .move(edge: .bottom) // 들어갈땐 아래로
                    ))
            }
            
        }
        .ignoresSafeArea(edges: .bottom)
    }
}










struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
