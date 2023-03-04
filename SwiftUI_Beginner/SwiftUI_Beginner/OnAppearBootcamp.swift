//
//  OnApperBootcamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/23.
//

import SwiftUI

struct OnAppearBootcamp: View {
    
    // 뷰가 초기화 될 때 아래 변수를 저장
    @State var myText: String = "Starting Text."
    @State var count: Int = 0
    
    var body: some View {
        NavigationStack {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                        }
                    }
                }
            }
            
            // 스크롤뷰가 화면에 그려지자마자 아래 변수로 변경
            .onAppear(perform: {
                // 5초 이따가 execute 내 클로저를 실행
                DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
                    myText = "This is the new Text!"
                })
                
            })
            
            // 화면이 사라질 때 실행.
            .onDisappear(perform: {
                myText = "Ending TExt."
            })
            .navigationTitle("On Apper: \(count)")
        }
    }
}






struct OnAppearBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBootcamp()
    }
}
