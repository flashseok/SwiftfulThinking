//
//  GeometryReaderPractice.swift
//  SwiftUI_Intermediate
//
//  Created by 김현석 on 2023/03/06.
//

import SwiftUI

struct GeometryReaderPractice: View {
    
    func getPercentage(geo: GeometryProxy) -> Double {
        let maxDistance = UIScreen.main.bounds.width / 2
        let currentX = geo.frame(in: .global).midX
        
        return Double(1 - (currentX / maxDistance))
    }
    
    
    var body: some View {
        
        // 1)
//        GeometryReader { geometry in
//            HStack(spacing: 0) {
//                Rectangle()
//                    .fill(.red)
////                    .frame(width: UIScreen.main.bounds.width * 0.66) 화면 돌리면 적용이 안됨.
//                    .frame(width: geometry.size.width * 0.66) // ⭐️가로모드를 지원할때만 쓰자.(성능 잡아먹어서 느려질 수 있음.)
//                Rectangle()
//                    .fill(.blue)
//            }
//            .ignoresSafeArea()
//        }
        
        // 2
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<20) { index in
                    GeometryReader { geometry in
                        RoundedRectangle(cornerRadius: 40)
                            .rotation3DEffect(
                                Angle(degrees: getPercentage(geo: geometry) * 10),
                                axis: (x: 0.0, y: 1.0, z: 0.0))
                         
                    }
                    .frame(width: 300, height: 250)
                    .padding()
                   
                }
            }
        }
        
      
    }
}

struct GeometryReaderPractice_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderPractice()
    }
}
