//
//  DragGesturePractice.swift
//  SwiftUI_Intermediate
//
//  Created by 김현석 on 2023/03/06.
//

import SwiftUI

// ⭐️중요
struct DragGesturePractice: View {
    
    @State var offset: CGSize = .zero
    
    var body: some View {
        ZStack {
            
            VStack {
                Text("\(offset.width)")
                Spacer()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 300, height: 500)
                .offset(offset)
                .scaleEffect(getScaleAmount())
                .rotationEffect(Angle(degrees: getRotationAmount()))
                .gesture(
                    DragGesture()
                        .onChanged { value in
                            withAnimation(.spring()) {
                                offset = value.translation
                            }
                            
                        }
                        .onEnded { value in
                            withAnimation(.spring()) {
                                offset = .zero
                            }
                        }
            )
        }
    }
    
    func getScaleAmount() -> CGFloat {
        // 가로로 움직일 수 있는 최대 거리
        let max = UIScreen.main.bounds.width / 2
        let currentAmount = abs(offset.width)
        let percentage = currentAmount / max
        
        return 1.0 - min(percentage, 0.5) * 0.5
    }
    
    func getRotationAmount() -> Double {
        let max = UIScreen.main.bounds.width / 2
        let currentAmount = offset.width
        let percentage = currentAmount / max
        let percentageAsDouble = Double(percentage)
        let maxAngle: Double = 10
        
        return percentageAsDouble * maxAngle
    }
}

struct DragGesturePractice_Previews: PreviewProvider {
    static var previews: some View {
        DragGesturePractice()
    }
}
