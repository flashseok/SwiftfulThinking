//
//  ColorBootCamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/08.
//

import SwiftUI

struct ColorBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
//            .fill(Color.red)
            .fill(
//                Color.primary // 일반모드일때 기본색상(일반일 때는 검정, 다크모드일 때는 흰색)
//                Color(UIColor.secondarySystemBackground)
                Color("CustomColor") // Assets.xcassets에서 추가함
            )
            .frame(width: 300, height: 200)
//            .shadow(radius: 10)
            .shadow(color: Color("CustomColor").opacity(0.3), // 투명도
                    radius: 10, x: 20, y: 20)
            
        
    }
}








struct ColorBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorBootCamp()
    }
}
