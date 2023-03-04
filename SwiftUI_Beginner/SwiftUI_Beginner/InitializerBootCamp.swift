//
//  InitializerBootCamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/11.
//

import SwiftUI

enum Fruit {
    case apple
    case orange
}

struct InitializerBootCamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
  //  내부적으로 자동적으로 실행
    init(count: Int, fruit: Fruit) {
        
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
    

    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text("\(title)")
                .font(.headline)
                .foregroundColor(.white)
            
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
        
    }
}








struct InitializerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitializerBootCamp(count: 100, fruit: .apple)
            InitializerBootCamp(count: 46, fruit: .orange)
        }
        
        InitializerBootCamp(count: 10, fruit: .orange)
    }
}
