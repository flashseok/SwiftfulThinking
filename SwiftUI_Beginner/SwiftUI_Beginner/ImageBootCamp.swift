//
//  ImageBootCamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/09.
//

import SwiftUI

struct ImageBootCamp: View {

    var body: some View {
        
        
        Image("Daangn")
//            .renderingMode(.template)
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .frame(width: 350, height: 400)
            .foregroundColor(.blue)
//            .scaledToFit()
            .scaledToFill()
//            .clipped()
//            .cornerRadius(30)
//            .clipShape(
//                Circle()
//                RoundedRectangle(cornerRadius: 25)KK
//                Ellipse()
//            )
            
    }
}

struct ImageBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootCamp()
    }
}
