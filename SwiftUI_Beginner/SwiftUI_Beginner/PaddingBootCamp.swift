//
//  PaddingBootCamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/11.
//

import SwiftUI

struct PaddingBootCamp: View {
    var body: some View {
//        Text("Hello, World!")
////            .frame(width: 300, height: 100)
//            .background(Color.yellow)
////            .padding()
//            .padding(.all, 10)
//            .background(Color.blue)
        
        
//            .font(.largeTitle)
//            .fontWeight(.semibold)
//            .frame(maxWidth: .infinity, alignment: .leading)
//            .background(Color.red)
//            .padding(.leading, 20)
        
        VStack(alignment: .leading) {
            Text("Hello, World")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            
            Text("This is the description of waht will do on this screen. It is nultiple lines and we will align the text to the leading edge.")
                .multilineTextAlignment(.leading)
        }
//        .background(Color.blue)
        .padding()
        .padding(.vertical, 10)
        .background(
//            Color.red
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 10,
                    x: 0.0,
                    y: 10)

        )
//        .padding(.horizontal, 10)
//        .background(Color.green)
    }
    
}







struct PaddingBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        PaddingBootCamp()
    }
}
