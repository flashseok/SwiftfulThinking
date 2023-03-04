//
//  TodoApp.swift
//  Todo
//
//  Created by 김현석 on 2023/03/04.
//

import SwiftUI

@main
struct TodoApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListView()
            }
            // 아이패드에서는 내비게이션 뷰가 다름. .stack으로 설정하면 똑같아진다.
            .navigationViewStyle(.stack)
            .environmentObject(listViewModel)
            
        }
    }
}
