//
//  MagnificationGesture.swift
//  SwiftUI_Intermediate
//
//  Created by 김현석 on 2023/03/05.
//

import SwiftUI

struct MagnificationGesturePractice: View {
    
    @State var currentAmount: CGFloat = 0
    @State var lastAmount: CGFloat = 0
    
    var body: some View {
        // 1
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .font(.title)
//            .padding(40)
//            .background(.red)
//            .cornerRadius(10)
//            .scaleEffect(1 + curretnAmount + lastAmount)
//            .gesture(
//                MagnificationGesture()
//                    .onChanged{ value in
//                        curretnAmount = value - 1
//                    }
//                    .onEnded { value in
//                        lastAmount += curretnAmount
//                        curretnAmount = 0
//                    }
//            )
        
        // 2
        VStack(spacing: 10) {
            HStack {
                Circle().frame(width: 35, height: 35)
                Text("Swiftful Thinking")
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal)
            Rectangle()
                .frame(height: 300)
                .scaleEffect(1 + currentAmount)
                .gesture(
                    MagnificationGesture()
                        .onChanged { value in
                            currentAmount = value - 1
                            print("currentAmount : \(currentAmount) | value : \(value)")
                        }
                        // 손가락 떼면 실행됨
                        .onEnded { value in
                            withAnimation(.spring()) {
                                // 사진 크기 원래대로 되돌리기
                                currentAmount = 0
                            }

                        }
                )
            HStack {
                Image(systemName: "heart.fill")
                Image(systemName: "text.bubble.fill")
                Spacer()
            }
            .padding(.horizontal)
            .font(.headline)
            Text("This is the caption for my photo")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
        }
    }
}

struct MagnificationGesturePractice_Previews: PreviewProvider {
    static var previews: some View {
        MagnificationGesturePractice()
    }
}
