//
//  ViewModelBootcamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/23.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
    
}

// 감시 대상 클래스에다가 ObserverableObject를 붙여준다.
// (이 클래스를 감시할 다른 클래스에서 객체를 만들면 @ObservedObject를 사용.
class FruitViewModel: ObservableObject {
    
    // @Published 값이 변경될 때마다 알려줌
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 2)
        let fruit3 = FruitModel(name: "Watermelon", count: 88)
        
        isLoading = true
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            
            self.isLoading = false
        }
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
    
}

struct ViewModelBootcamp: View {
    
    // @StateObject -> Use this on creation / Init
    // @ObservedObject -> Use this for subviews
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    //    @State var fruitArray: [FruitModel] = []
    
    
    var body: some View {
        NavigationStack {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            
                
            }
            .listStyle(.grouped)
            .navigationTitle("Fruit List")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: RandomScreen(fruitViewModel: fruitViewModel), label: {
                        Image(systemName: "arrow.right")
                            .font(.title)
                    })
                }
            }
        }
    }
}

struct RandomScreen: View {
    
//    @Environment(\.dismiss) var dismiss
    
    // 감시대상 클래스 변수에다가 @ObservedObject를 붙여준다.
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack {
                ForEach(fruitViewModel.fruitArray, content: { fruit in
                    Text(fruit.name)
                        .foregroundColor(.white)
                        .font(.headline)
                })
                
                
//                ForEach(fruitViewModel.fruitArray) {
//                    Text($0.name) // Orange, Banana, Watermelon
//                        .foregroundColor(.red)
//                }
            }
            
//            Button {
//                dismiss()
//            } label: {
//                Text("Go back")
//                    .foregroundColor(.white)
//                    .font(.largeTitle)
//                    .fontWeight(.semibold)
//            }

        }
    }
}







struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
//        RandomScreen()
    }
}
