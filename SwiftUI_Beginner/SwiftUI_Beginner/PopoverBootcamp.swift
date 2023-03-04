//
//  PopoverBootcamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/16.
//


// sheets
// animations
// transitions


import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea(.all)
            
            VStack {
                Button("Button", action: {
                    showNewScreen.toggle()
                })
                .font(.largeTitle)
                Spacer()
                
            }
            
            
            
            // Method 1 - SHEET
            // 새로운 화면을 아예 열어서 부모 뷰를 사용 못함
            .sheet(isPresented: $showNewScreen, content: {
                NewScreen(showNewScreen: $showNewScreen)
            })
            
            
            
            // Method 2 - TRANSITION
            // 부모뷰 위에 z스택으로 쌓아서 부모,자식 뷰의 기능을 모두 사용 가능.
//            ZStack {
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                }
//            }
//            .animation(.spring(), value: showNewScreen)
//            .zIndex(2.0)

            
            
            // Method 3 - ANIMATION OFFSET
//            NewScreen(showNewScreen: $showNewScreen)
//                .padding(.top, 100)
//                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
//                .animation(.spring(), value: showNewScreen)
                
            
        }
    }
}


struct NewScreen: View {
    
    // Method 1
    @Environment(\.dismiss) var dismissMode
    
    @Binding var showNewScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple.ignoresSafeArea(.all)
            
            Button(action: {
                
                // Method 1
//                dismissMode()
                
                // Methoe 2,3
                showNewScreen.toggle()
            }, label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
            
        }
        
                
        
    }
        
}





struct PopoverBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopoverBootcamp()
//        NewScreen()
    }
}
