//
//  TextEditorBootcamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/21.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditorText: String = "This is the starting text."
    @State var savedText: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
//                    .foregroundColor(.red)
                    .colorMultiply(Color.white.opacity(0.6))
                    .cornerRadius(10)
                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .cornerRadius(10)
                })
                Text(savedText)
                Spacer()
            }
            .padding()
            .background(
                Color.green
                    .edgesIgnoringSafeArea(.horizontal)
            )
            .navigationTitle("TextEditor Bootcamp")
            
//            .padding([.leading, .trailing], 1)
//            .overlay(
//                RoundedRectangle(cornerRadius: 10)
//                    .stroke(Color(.systemGray5), lineWidth: 2.0)
//            )
            
        }
        
    }
        
    

}






struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}
