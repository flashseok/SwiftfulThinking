//
//  ScrollViewBootCamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/11.
//

import SwiftUI

struct ScrollViewBootCamp: View {
    var body: some View {
        ScrollView() {
            LazyVStack { // 대용량 데이터를 받을 경우 화면에 보여지는 것부터 보여주면 되니 그때는 Lazy로 생성
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<3) { index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                         
                        }
                    }
                    
                   
                }
            }
         
        }
       
        
    }
}







struct ScrollViewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewBootCamp()
    }
}
