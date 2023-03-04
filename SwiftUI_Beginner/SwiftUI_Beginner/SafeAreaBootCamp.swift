//
//  SafeAreaBootCamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/12.
//

import SwiftUI

struct SafeAreaBootCamp: View {
    var body: some View {
        
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding(20)
                }
            }
        }
//        .background(Color.blue.ignoresSafeArea([]))
        .background(
            Color.red
//                .edgesIgnoringSafeArea([]) // 이 메소드는 이제 안쓰고 아래있는거로 씀
                .ignoresSafeArea(edges: .all)
//                .ignoresSafeArea(edges: [])
            
        )
      
        
        
        
        
        
        
        
        
        
        
        
        
        
        
//        ZStack {
//            // background
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//            // foreground
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//
//            // background(Color.red) 로 하면 디폴트로 safearea를 ignore시켜버리는 거로 변경됨.
//            .background(Color.orange.edgesIgnoringSafeArea([]))
////            .edgesIgnoringSafeArea(.all)
//        }
        
        
        
  
            
    }
}







struct SafeAreaBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootCamp()
    }
}
