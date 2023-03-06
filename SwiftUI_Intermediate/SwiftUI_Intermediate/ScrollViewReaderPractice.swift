//
//  ScrollViewReaderPractice.swift
//  SwiftUI_Intermediate
//
//  Created by 김현석 on 2023/03/06.
//

import SwiftUI

struct ScrollViewReaderPractice: View {
    
    @State var textFieldText: String = ""
    @State var scrollToIndex: Int = 0
    
    var body: some View {
        VStack {
            
            TextField("Enter a # here...", text: $textFieldText)
                .frame(height: 55)
                .border(.gray)
                .padding(.horizontal)
                .keyboardType(.numberPad)
            
            Button("Scroll now".uppercased()) {
                withAnimation(.spring()) {
                    guard let index = Int(textFieldText) else { return }
                    scrollToIndex = index
//                    proxy.scrollTo(30, anchor: .top)
                }
            }
            
            ScrollView {
                ScrollViewReader { proxy in
                    ForEach(0..<50) { index in
                        Text("This is item #\(index)")
                            .font(.headline)
                            .frame(height: 200)
                            .frame(maxWidth: .infinity)
                            .background(.white)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                            .padding()
                            .id(index)
                    }
                    .onChange(of: scrollToIndex, perform: { value in
                        withAnimation(.spring()) {
                            proxy.scrollTo(value, anchor: .top)
                        }
                        
                    })
                }
                
            }
        }
        
    }
}

struct ScrollViewReaderPractice_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewReaderPractice()
    }
}
