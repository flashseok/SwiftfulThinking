//
//  SwipeActionsBootcamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/27.
//

import SwiftUI

struct SwipeActionsBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    var body: some View {
        List {
            ForEach(fruits,id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
             
                        Button("Archive") {  }
                        .tint(.green)
                  
                        Button("Save") {  }
                        .tint(.blue)
                        
                        Button("Junk") {  }
                        .tint(.black)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: false) {
                        Button("Share") {   }
                        .tint(.yellow)
                        
                    }
            }
//            .onDelete(perform: delete)
        }
    }
    
    func delete(indexSet: IndexSet) {
        
    }
}






struct SwipeActionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SwipeActionsBootcamp()
    }
}
