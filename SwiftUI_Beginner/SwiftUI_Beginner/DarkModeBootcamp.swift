//
//  DarkModeBootcamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/22.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    // 뷰의 환경에 따라 컬러값 변경
    @Environment(\.colorScheme) var colorScheme
    
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This text is PRIMARY")
                        .foregroundColor(.primary)
                    
                    Text("This color is SECONDARY")
                        .foregroundColor(.secondary)
                    
                    Text("This color is BLACK")
                        .foregroundColor(.black)
                    
                    Text("This color is WHITE")
                        .foregroundColor(.white)
                    
                    Text("This color is RED")
                        .foregroundColor(.red)
                    
                    Text("This color is globally adaptive!")
                        // Assets에서 설정
                        .foregroundColor(Color("AdaptiveColor"))
                    
                    Text("This color is locally adaptive!")
                        .foregroundColor(colorScheme.self == .light ? .purple : .green)
                }
                
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}






struct DarkModeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DarkModeBootcamp()
            .preferredColorScheme(.light)
        
        DarkModeBootcamp()
            .preferredColorScheme(.dark)
        
    }
}
