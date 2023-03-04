//
//  TabViewBootmcap.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/22.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    
    @State var selectedTab: Int = 0
    
    let icons: [String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    ]
    
    
    var body: some View {
        
          // 1)
//        TabView(selection: $selectedTab) {
//            HomeView(selectedTab: $selectedTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//
//            Text("BROWSE TAB")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Globe")
//                }
//                .tag(1)
//
//
//            Text("PROFILE TAB")
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//
//        }
//        .tint(.red)
        
        TabView {
//            RoundedRectangle(cornerRadius: 25)
//                .foregroundColor(.red)
//
//            RoundedRectangle(cornerRadius: 25)
//                .foregroundColor(.green)
//
//            RoundedRectangle(cornerRadius: 25)
            
            ForEach(icons, id: \.self, content: {
                Image(systemName: $0)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            })
        }
        .background(
            RadialGradient(gradient: Gradient(colors: [.red, .blue]), center: .center, startRadius: 5, endRadius: 300)
        )
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
        
        
        
        
        
    }
}



struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}

struct HomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        
        ZStack {
            
            Color.red.edgesIgnoringSafeArea(.top)
            VStack {
                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
                Button(action: {
                    selectedTab = 2
                }, label: {
                    Text("Go to Profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(.white)
                        .cornerRadius(10)
                })
            }
        }
    }
}
