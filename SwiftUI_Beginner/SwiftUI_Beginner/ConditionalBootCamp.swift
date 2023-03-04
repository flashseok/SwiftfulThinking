//
//  ConditionalBootCamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/14.
//

import SwiftUI

struct ConditionalBootCamp: View {
    
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        
        
        VStack(spacing: 20) {
            
            Button("IS LOADING : \(isLoading.description)", action: {
                isLoading.toggle()
            })
            
            if isLoading {
                ProgressView()
            } else {
                
            }
            

//            Button("Circle Button : \(showCircle.description)", action: {
//                showCircle.toggle() // 누를 때마다 bool값이 자동으로 변경
//            })
//
//            Button("Rectangle Button : \(showRectangle.description)", action: {
//                showRectangle.toggle()
//            })
//
//            if showCircle { // true일 경우
//                Circle()
//                    .frame(width: 100, height: 100)
//            }
//
//            if showRectangle {
//                Rectangle()
//                    .frame(width: 100, height: 100)
//            }
//
//            if !showCircle && !showRectangle {
//                RoundedRectangle(cornerRadius: 25.0)
//                    .frame(width: 200, height: 100)
//            }
            
            
            
            Spacer()
        }
    }
}








struct ConditionalBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootCamp()
    }
}
