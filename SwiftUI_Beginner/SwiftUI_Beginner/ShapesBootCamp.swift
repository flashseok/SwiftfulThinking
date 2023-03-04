//
//  ShapesBootCamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/08.
//

import SwiftUI

struct ShapesBootCamp: View {
    var body: some View {
//        Capsule(style: .continuous)
//        Rectangle()
        RoundedRectangle(cornerRadius: 10)
//        Ellipse()
//        Circle()
            .frame(width: 300, height: 200)
//            .fill(.blue)
//            .foregroundColor(.pink)
//            .stroke() // 윤곽선만
//            .stroke(Color.red)
//            .stroke(Color.blue, lineWidth: 30)
//            .stroke(Color.orange, style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10]))
//            .trim(from: 0.2, to: 1.0)
//            .stroke(Color.purple, lineWidth: 50)
    }
}











struct ShapesBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootCamp()
    }
}
