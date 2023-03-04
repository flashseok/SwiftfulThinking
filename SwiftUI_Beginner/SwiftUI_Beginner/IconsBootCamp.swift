//
//  IconsBootCamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/09.
//

import SwiftUI

struct IconsBootCamp: View {
    var body: some View {
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original) // SF시볼 중 여러가지 색상 그대로 가져오겠다.
            .resizable() /// 프레임에 맞게 자동으로 크기를 설정
//            .aspectRatio(contentMode: .fit)
//            .scaledToFit()
            .scaledToFill()
//            .font(.caption) // 시스템에 따라 동적으로 크기 자동 설정(이걸 추천함)
//            .font(.system(size: 300))
//            .foregroundColor(Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)))
            .frame(width: 300, height: 300)
//            .clipped()
        
        
    }
}

struct IconsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootCamp()
    }
}
