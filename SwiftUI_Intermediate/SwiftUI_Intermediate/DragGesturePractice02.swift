//
//  DragGesturePractice02.swift
//  SwiftUI_Intermediate
//
//  Created by 김현석 on 2023/03/06.
//

import SwiftUI

struct DragGesturePractice02: View {
    
    @State var startingOffsetY: CGFloat = UIScreen.main.bounds.height * 0.85
    @State var curreuntDragOffsetY: CGFloat = 0
    @State var endingOffsetY: CGFloat = 0
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            MySignUpView()
                .offset(y: startingOffsetY)
                .offset(y: curreuntDragOffsetY)
                .offset(y: endingOffsetY)
                .gesture(
                    DragGesture()
                        .onChanged({ value in
                            withAnimation(.spring()) {
                                curreuntDragOffsetY = value.translation.height
                            }
                        })
                        .onEnded({ value in
                            withAnimation(.spring()) {
                                if curreuntDragOffsetY < -150 {
                                    endingOffsetY = -startingOffsetY
                                } else if endingOffsetY != 0 && curreuntDragOffsetY > 150 {
                                    endingOffsetY = 0
                                }
                                curreuntDragOffsetY = 0
                            }
                        })
                )
        }
        .ignoresSafeArea(edges: .bottom)
        
    }
}



struct DragGesturePractice02_Previews: PreviewProvider {
    static var previews: some View {
        DragGesturePractice02()
    }
}

struct MySignUpView: View {
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: "chevron.up")
                .padding(.top)
            Text("Sign Up")
                .font(.headline)
                .fontWeight(.semibold)
            
            Image(systemName: "flame.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
            
            Text("This is the description for out app. This is my favorite SwiftUI course and I recommend to all of my friends to subscribe to Swiftful Thinking")
                .multilineTextAlignment(.center)
            
            Text("Create an account")
                .foregroundColor(.white)
                .font(.headline)
                .padding()
                .padding(.horizontal)
                .background(.black)
                .cornerRadius(10)
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(.white)
        .cornerRadius(30)
    }
}
