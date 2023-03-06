//
//  MultipleSheetsPractice.swift
//  SwiftUI_Intermediate
//
//  Created by 김현석 on 2023/03/06.
//

import SwiftUI


struct RandomModel: Identifiable {
    let id = UUID().uuidString
    let title: String
}

// 1 - Use a binding
// 2 - Use multiple .sheets
// 3 - Use $item


struct MultipleSheetsPractice: View {
    
    
//    @State var selectedModel: RandomModel = RandomModel(title: "Starting Title")
    @State var showSheet: Bool = false
    @State var selectedIndex: Int = 0 // 필요없음
    
    // 세번째 방법
    @State var selectedModel: RandomModel? = nil
    
    // 두번째 방법
    @State var showSheet2: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Button 1") {
//                selectedIndex = 1
                // 두번째 방법에선 아래 주석처리
//                selectedModel = RandomModel(title: "One")
//                showSheet.toggle()
                
                // 세번째 방법
                selectedModel = RandomModel(title: "One")
            }
            // 두번째 방법
//            .sheet(isPresented: $showSheet) {
//                NextScreen(selectedMode: RandomModel(title: "One"))
//            }
            
            Button("Button 2") {
//                selectedIndex = 2
                //                showSheet.toggle()
                // 두번째 방법에선 아래 주석처리
//                selectedModel = RandomModel(title: "Two")
//                showSheet2.toggle()
                
                // 세번째 방법
                selectedModel = RandomModel(title: "Two")
                
            }
            // 두번째 방법
            .sheet(isPresented: $showSheet2) {
                NextScreen(selectedMode: RandomModel(title: "Two"))
            }
        }
        // 위 버튼의 인스턴스가 생성되기 전에 Starting Title"로 지어져서 두번 클릭해야 One, Two로 바뀜
        // 두번째 방법에선 아래 시트메서드 주석처리
//        .sheet(isPresented: $showSheet) {
            // 잘못된 방법 1
//            NextScreen(selectedMode: selectedModel)
            
            // 잘못된 방법 2
//            if selectedIndex == 1 {
//                NextScreen(selectedMode: RandomModel(title: "One"))
//            } else if selectedIndex == 2 {
//                NextScreen(selectedMode: RandomModel(title: "two"))
//            } else {
//                NextScreen(selectedMode: RandomModel(title: "Starting Title"))
//            }
            
            // 첫번째 방법(Binding)
//            NextScreen(selectedMode: $selectedModel)
            
            // 두번째 방법
//            NextScreen(selectedMode: selectedModel)
//        }
        
        // 세번째 방법
        .sheet(item: $selectedModel) { model in
            NextScreen(selectedMode: model)
        }
    }
}

struct NextScreen: View {
    
//    let selectedMode: RandomModel
    
    // 첫번째 방법(Binding)
//    @Binding var selectedMode: RandomModel
    
    // 두번째 방법
    let selectedMode: RandomModel
    
    
    var body: some View {
        Text(selectedMode.title)
            .font(.largeTitle)
    }
}


struct MultipleSheetsPractice_Previews: PreviewProvider {
    static var previews: some View {
        MultipleSheetsPractice()
    }
}
