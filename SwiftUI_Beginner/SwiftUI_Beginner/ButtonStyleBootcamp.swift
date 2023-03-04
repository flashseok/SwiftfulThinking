//
//  ButtonStyleBootcamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/27.
//

import SwiftUI

struct ButtonStyleBootcamp: View {
    
    
    
    var body: some View {
        VStack {
            
            Button {
                
            } label: {
                Text("Button title")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle(radius: 20))
            .controlSize(.large)

            
            Button("Button Title 1") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
//            .buttonStyle(.plain)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            
            Button("Button Title 2") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.regular)
//            .buttonStyle(.bordered)
            .buttonStyle(.borderedProminent)
            
            Button("Button Title 3") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.mini)
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
//            .buttonStyle(.borderless)
            .buttonStyle(.borderedProminent)
            .controlSize(.small)
        }
        .padding()
    }
}




struct ButtonStyleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyleBootcamp()
    }
}
