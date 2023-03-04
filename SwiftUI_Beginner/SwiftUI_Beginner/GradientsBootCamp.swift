//
//  GradientsBootCamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/09.
//

import SwiftUI

struct GradientsBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.red
//                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue, Color.orange, Color.purple]),
//                               startPoint: .leading,
//                               endPoint: .trailing)
                
//                LinearGradient(
//                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)),  Color(#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha:   1))]),
//                    startPoint: .topLeading,
//                    endPoint: .bottom)
//                RadialGradient(
////                    gradient: Gradient(colors: [Color.red, Color.blue]),
//                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)),  Color(#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha:   1))]),
//                    center: .leading,
//                    startRadius: 5,
//                    endRadius: 400)
                AngularGradient(
//                    gradient: Gradient(colors: [Color.red, Color.blue]),
                    gradient: Gradient(colors: [Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)),  Color(#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha:   1))]),
                    center: .topLeading,
                    angle: .degrees(180 + 45))
             
            )
            .frame(width: 300, height: 200)
    }
}









struct GradientsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientsBootCamp()
    }
}
