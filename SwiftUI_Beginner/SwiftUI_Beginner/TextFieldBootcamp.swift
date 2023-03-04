//
//  TextFieldBootcamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/21.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Type something here...",
                          text: $textFieldText)
        //            .textFieldStyle(.roundedBorder)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                    .font(.headline)
                    

                
                Button(action: {
                    if textIsAppropriate() {
                        saveText()
                    }
                    
                }, label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding(.bottom, 20)

                })
                .disabled(!textIsAppropriate())

                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcamp")
//            .navigationBarTitleDisplayMode(.automatic)
            
        }
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
    
    
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}













struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
