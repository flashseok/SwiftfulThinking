//
//  AnimationCurvesBootcamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/14.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimationg: Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        
        VStack {
            Button("Button", action: {
                isAnimationg.toggle()
            })
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimationg ? 350 : 50, height: 100)
                .animation(.spring(
                    response: 0.5, //  3초동안
                    dampingFraction: 0.7, // 얼만큼 튈지
                    blendDuration: 1.0),
                           value: isAnimationg)
//                .animation(.spring(), value: isAnimationg)
            
//                .animation(Animation.linear(duration: timing), value: isAnimationg)
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimationg ? 350 : 50, height: 100)
//                .animation(Animation.easeIn(duration: timing), value: isAnimationg)
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimationg ? 350 : 50, height: 100)
//                .animation(Animation.easeInOut(duration: timing), value: isAnimationg)
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimationg ? 350 : 50, height: 100)
//                .animation(Animation.easeOut(duration: timing), value: isAnimationg)
        }
        
    }
}







struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}
