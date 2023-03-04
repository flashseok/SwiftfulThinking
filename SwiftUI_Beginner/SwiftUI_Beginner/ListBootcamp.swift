//
//  ListBootcamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/17.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    @State var veggies: [String] = [
        "tomato", "potato", "carrot"
    ]
    
    
    var body: some View {
        NavigationStack {
            
            List {
                Section(content: {
                    ForEach(fruits, id: \.self, content: { fruit in
                        Text(fruit.capitalized)
                            .font(.caption)
                            .foregroundColor(Color.white)
//                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
//                            .background(Color.pink)
                            .padding(.vertical)
                    })
                    
                    // Delete
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.pink)
                }, header: {
                    HStack {
                        Text("Fruits")
                            .foregroundColor(Color.red)
                        Image(systemName: "flame.fill")
                    }
                    .font(.headline)
                    .foregroundColor(Color.orange)
                })
                .tint(Color.red)
                
                Section(content: {
                    ForEach(veggies, id: \.self, content: { veggies in
                        Text(veggies.capitalized)
                    })
                }, header: {
                    Text("Veggies")
                        .foregroundColor(Color.green)
                })
                .tint(Color.green)
              
            }
            .navigationTitle("Grocery List")
            .listStyle(.sidebar)
//            .foregroundColor(.gray)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) { EditButton()
                        .foregroundColor(Color.yellow)
                }
                ToolbarItem(placement: .navigationBarTrailing) { addButton }
            }
      
        }
    }
    
    var addButton: some View {
        Button("Add", action: {
            add()
        })
        .foregroundColor(Color.mint)
    }
    
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("Coconut")
    }
    
}







struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
