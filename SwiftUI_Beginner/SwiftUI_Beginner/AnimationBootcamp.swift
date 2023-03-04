//
//  AnimationBootcamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/14.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isAnimated: Bool = false
    
    
    var body: some View {
        VStack {
            Button("Button", action: {
                withAnimation(
                    Animation
                        .default
//                        .repeatForever(autoreverses: true)
                        .repeatCount(5, autoreverses: true)

                ){
                    isAnimated.toggle()
                }
                
            })
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
            
            // RoundedRectangle이 변경되는 사항이 있을 수 있으므로 여기서 동작시키는 것보단 버튼이 눌렸을 때만 실행시킴
//                .animation(Animation
//                            .default
//                            .repeatCount(5, autoreverses: true),
////                            .repeatForever(autoreverses: true),
//                           value: isAnimated)
            Spacer()
        }
    }
}





struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
