//
//  EnvironmentObjectBootcamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/23.
//

import SwiftUI

// ObservedObject
// StateObject
// EnvironmentObject



class EnvironmnetViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
}



struct EnvironmentObjectBootcamp: View {
    
    @StateObject var viewModel: EnvironmnetViewModel = EnvironmnetViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(destination: {
                        DetailView(selectedItem: item)
                    }, label: {
                        Text(item)
                    })
                }
            }
            .navigationTitle("iOS Devices")
            
        }
        // ⭐️여기 내에서 파생되는 모든 하위뷰가 viewModel에 접근 가능함.⭐️
        // 더이상 하위 뷰에 @ObservedObject 변수를 설정하지 않아도 됨
        .environmentObject(viewModel)
    }
}



struct DetailView: View {
    
    let selectedItem: String
    
    // environmentObject 설정해서 더이상 필요하지 않음.
    // (실제로 이 화면에선 viewModel.array에 접근하지 않음. 뷰 생성할 때 파라미터로 selectedItem만 집어넣었기 때문.)
//    @ObservedObject var viewModel: EnvironmnetViewModel
    
    var body: some View {
        ZStack {
            // background
            Color.orange.ignoresSafeArea()
            
            NavigationLink(destination: {
                FinalView()
            }, label: {
                // foreground
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(.white)
                    .cornerRadius(30)
            })
            
        }
    }
}



struct FinalView: View {
    
    // environmentObject 설정해서 더이상 필요하지 않음.
//    @ObservedObject var viewModel: EnvironmnetViewModel
    
    @EnvironmentObject var viewModel : EnvironmnetViewModel
    
    var body: some View {
        ZStack {
            // background
            LinearGradient(
                gradient: Gradient(colors: [Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)), Color(#colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1))]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            // foreground
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(viewModel.dataArray, id: \.self, content: {
                        Text($0)
                    })
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}



struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp()
//        DetailView(selectedItem: "iPhone")
//        FinalView()
    }
}
