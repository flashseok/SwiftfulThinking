//
//  LongPressGesture.swift
//  SwiftUI_Intermediate
//
//  Created by 김현석 on 2023/03/04.
//

import SwiftUI

struct LongPressGesturePractice: View {
    
    @State var isComplete: Bool = false
    @State var isSuccess: Bool = false
    
    var body: some View {
        // 1)
//        Text(isComplete ? "COMPLETED" : "NOT COMPLETE")
//            .padding()
//            .padding(.horizontal)
//            .background(isComplete ? .green : .gray)
//            .cornerRadius(10)
////            .onTapGesture {
////                isComplete.toggle()
////            }
//            .onLongPressGesture(minimumDuration: 1.0, // 1초 이상 눌러야 작동
//                                maximumDistance: 50) { // 클릭할때 손가락이 움직이는 최대 거리
//
//                isComplete.toggle()
//            }
        
        // 2
        VStack {
            Rectangle()
                .fill(isSuccess ? .green : .blue)
                .frame(maxWidth: isComplete ? .infinity : 0)
                .frame(height: 55)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.gray)
            
            HStack {
                Text("Click here")
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
                    .onLongPressGesture(minimumDuration: 1.0, maximumDistance: 50, perform: {
                        // at the min duration
                        // minimumDuration: 1.0 이후 작동
                        withAnimation(.easeInOut) {
                            isSuccess = true
                        }
                    }, onPressingChanged: { isPressing in
                        // start of press -> min duration
                        if isPressing {
                            withAnimation(.easeInOut(duration: 1.0)) {
                                isComplete = true
                            }
                        } else {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                if !isSuccess {
                                    withAnimation(.easeInOut) {
                                        isComplete = false
                                    }
                                }
                            }
                        }
                    })

                Text("Reset")
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
                    .onTapGesture {
                        isComplete = false
                        isSuccess = false
                    }
            }
          
        }
    }
}








struct LongPressGesture_Previews: PreviewProvider {
    static var previews: some View {
        LongPressGesturePractice()
    }
}
