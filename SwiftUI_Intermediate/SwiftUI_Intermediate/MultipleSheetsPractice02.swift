//
//  MultipleSheetsPractice02.swift
//  SwiftUI_Intermediate
//
//  Created by 김현석 on 2023/03/06.
//

import SwiftUI

struct RandomModel02: Identifiable {
    let id: String = UUID().uuidString
    let title: String
}


struct MultipleSheetsPractice02: View {
    
    @State var selectedModel02: RandomModel02?
    
    var body: some View {
        
        VStack {
            ForEach(0..<50) { index in
                Button("Button #\(index)") {
                    selectedModel02 = RandomModel02(title: "\(index)")
                }
            }
        }
        .sheet(item: $selectedModel02) { model in
            NextScreen02(selectedModel: model)
        }
    }
}


struct NextScreen02: View {
    
    let selectedModel: RandomModel02
    
    var body: some View {
        Text("\(selectedModel.title)")
            .font(.largeTitle)
    }
}

struct MultipleSheetsPractice02_Previews: PreviewProvider {
    static var previews: some View {
        MultipleSheetsPractice02()
    }
}
