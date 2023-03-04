//
//  ButtonBootCamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/13.
//

import SwiftUI

struct ButtonsBootCamp: View {
    
    @State var title: String = "This is my title"
    
    let redColor: UIColor = #colorLiteral(red: 0.5807225108, green: 0.066734083, blue: 0, alpha: 1)
    
    
    var body: some View {
        
        VStack(spacing: 20) {
            Text(title)
            
            Button("Press me!") {
                self.title = "Button was pressed"
            }
            .accentColor(.red)
            
            Button(action: {
                self.title = "Button #2 was pressed"
            }, label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            })
            
            
            Button(action: {
                self.title = "Button #3"
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color(self.redColor))
                    )
            })
            
            
            
            Button(action: {
                self.title = "Button #4"
            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
            })
            

        }
        
        
    }
}














struct ButtonBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsBootCamp()
    }
}
