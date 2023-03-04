//
//  BadgeBootcamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/27.
//

import SwiftUI


// List
// TabView 에서만 뱃지 가능.

struct BadgesBootcamp: View {
    var body: some View {
        
        List {
            Text("Hello, world")
                .badge("NEW ITEMS!")
            Text("Hello, world")
                .badge(5)
            Text("Hello, world")
            Text("Hello, world")
        }
        
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge(2)
//
//
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge("New")
//
//
//            Color.blue
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//        }
            
    }
}







struct BadgesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp()
    }
}
