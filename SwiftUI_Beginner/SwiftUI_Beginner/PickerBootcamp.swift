//
//  PickerBootcamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/21.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State private var selection: String = "Most Recent"
    
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    init() {
        // 세그먼트 제어
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white
        ]
        
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        
        Picker(selection: $selection, content: {
            ForEach(filterOptions.indices, id: \.self, content: { index in
                Text(filterOptions[index])
                    .tag(filterOptions[index])
            })
        }, label: {
            Text("Picker")
        })
        .pickerStyle(SegmentedPickerStyle())
//        .background(Color.red)
        
        // 1)
//        HStack {
//            Menu("Filter:") {
//                Picker(selection: $selection, content: {
//                    ForEach(filterOptions, id: \.self) { option in
//
//                        HStack {
//                            Image(systemName: "heart.fill")
//                            Text("\(option)").tag(option)
//                        }
//                    }
//                }, label: {
//                    Text("label")
//                })
//            }
//
//            Text("\(selection)")
//        }
//        .font(.headline)
//        .foregroundColor(Color.white)
//        .padding()
//        .padding(.horizontal)
//        .background(Color.blue)
//        .cornerRadius(10)
//        .shadow(color: Color.blue.opacity(0.3), radius: 10, x: 0, y: 10)

    }
    
    // 2)
    //        VStack {
    //            HStack {
    //                Text("Age:")
    //                Text(selection)
    //            }
    //
    //            Picker(selection: $selection,
    //                   content: {
    //                ForEach(18..<100, content: {
    //                    Text("\($0)")
    //                        .font(.headline)
    //                        .foregroundColor(.red)
    //                        .tag("\($0)")
    //                })
    //            }, label: {
    //                Text("Picker")
    //            })
    //            .pickerStyle(.wheel)
    ////            .background(Color.gray.opacity(0.3))
    //        }
    
}




struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
