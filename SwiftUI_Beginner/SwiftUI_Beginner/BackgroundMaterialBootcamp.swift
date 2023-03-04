//
//  BackgroundMaterialBootcamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/27.
//

import SwiftUI

struct BackgroundMaterialBootcamp: View {
    
    
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .cornerRadius(20)
        }
        .ignoresSafeArea()
        .background(
            Image("YJ2")
                .resizable()
                .scaledToFit()
        )
        
    }
}





struct BackgroundMaterialBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundMaterialBootcamp()
    }
}
