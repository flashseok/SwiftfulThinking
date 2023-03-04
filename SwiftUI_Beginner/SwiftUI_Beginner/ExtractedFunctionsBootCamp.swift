//
//  ExtractedFunctionsBootCamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/14.
//

import SwiftUI

struct ExtractedFunctionsBootCamp: View {
    
    @State var backgroundColor: Color = Color.pink
    
    
    var body: some View {
        
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea(.all)
            
            // content
            contentLayer

            
        }
    }
    
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button(action: {
                buttonPressed()
            }, label: {
                Text("Press me")
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            })
            
        }
    }
    
    
    
    func buttonPressed() {
        backgroundColor = .yellow
    }
}








struct ExtractedFunctionsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionsBootCamp()
    }
}
