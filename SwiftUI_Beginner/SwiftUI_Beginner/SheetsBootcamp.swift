//
//  SheetsBootcamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/16.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea(.all)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
            
//            .fullScreenCover(isPresented: $showSheet, content: {
//                SecondScreen()
//            })
            
            // ⭐️sheet 메서드는 한 번만 쓸 수 있음. 추가로 화면 이동 불가.
            .sheet(isPresented: $showSheet, content: {
//                Text("Heelo THERE!!!!")
                
//                ⭐️조건부 논리도 추가 ㄴㄴ🙏
//                if ___ {
//                    sheet1()
//                } else {
//                    sheet2()
//                }
                SecondScreen()
            })
            
          
        }
    }
}


struct SecondScreen: View {
        
    //⭐️ 화면 닫을때
    @Environment(\.dismiss) var dismissMode
    
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red.ignoresSafeArea(.all)
            
            Button(action: {
                // 화면 닫기
                dismissMode()
               
            }, label: {
                Image(systemName: "xmark")
//                Text("Button")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(20)
//                    .background(Color.white.cornerRadius(10))
            })
         
        }
    }
}





struct SheetsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SheetsBootcamp()
//        SecondScreen()
    }
}
