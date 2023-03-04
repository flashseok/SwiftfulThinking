//
//  ExtractSubviewsBootCamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/14.
//

import SwiftUI

struct ExtractSubviewsBootCamp: View {
    
    let backgroundColor: UIColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
    
    var body: some View {
      
        ZStack {
            Color(backgroundColor).ignoresSafeArea(.all)
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            MyItem(title: "Apples", count: 1, color: .red)
            MyItem(title: "Orange", count: 10, color: .orange)
            MyItem(title: "Bananas", count: 34, color: .yellow)
        }
    }
    
  
}


struct ExtractSubviewsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsBootCamp()
    }
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
