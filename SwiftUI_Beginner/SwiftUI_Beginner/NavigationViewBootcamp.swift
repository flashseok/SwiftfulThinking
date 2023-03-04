//
//  NavigationViewBootcamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/17.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    
    
    var body: some View {
        
        // ⭐️계층당 하나의 내비게이션만 생성
        NavigationStack {
            
            ScrollView {
                
                NavigationLink("Hello, world!!",
                               destination: MyOtherScreen())
                
                Text("Hello, World")
                Text("Hello, World")
                Text("Hello, World")
            }
            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(.automatic) // 스크롤하면 자동으로 .inline으로 바뀜.
//            .toolbar(.visible) // 내비바 타이틀 안보이게
            
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    }
                    
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: MyOtherScreen(), label: {
                        Image(systemName: "gear")
                            .tint(.red)
                    })
                    
                }
            }
        }
    }
}


struct MyOtherScreen: View {
    
    @Environment(\.dismiss) var dismissMode
    
    var body: some View {
        
        ZStack {
            Color.green.ignoresSafeArea(.all)
                .navigationTitle("Green Screen")
//                .toolbar(.hidden)
                            
            VStack {
                Button("Back Button", action: {
                    dismissMode()
                })
                
                NavigationLink("Click Here", destination: Text("3rd Screen"))
                
            }
        }
    }
}




struct NavigationViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewBootcamp()
    }
}
