//
//  TextBootCamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/08.
//

import SwiftUI


struct TextBootCamp: View {
    var body: some View {
        Text("Hello, World! This is Swiftful Thinking BootCamp. I am really enjoying this course and learing a lot")
//            .font(.body)
//            .fontWeight(.heavy)
//            .underline()
//            .underline(true, color: .red)
//            .italic()
//            .strikethrough(true, color: .blue)
//            .font(.system(size: 24, weight: .semibold, design: .monospaced))
            .baselineOffset(10) // 줄 사이 간격
            .multilineTextAlignment(.center)
            .kerning(2) // 자간
            .foregroundColor(.blue) // 글자색
            .frame(width: 200, height: 100, alignment: .center)
            .minimumScaleFactor(0.1) // 실제 글꼴 크기의 10%로 줄여 frame에 맞게 보여줌
            
    }
}

















struct TextBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootCamp()
    }
}
