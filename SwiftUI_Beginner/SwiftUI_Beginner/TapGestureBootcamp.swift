//
//  TapGestureBootcamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/23.
//

import SwiftUI

struct TapGestureBootcamp: View {
    
    @State var isSelected: Bool = false
    
    
    var body: some View {
        VStack(spacing: 40) {
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
                .foregroundColor(isSelected ? .green : .red)
            
            Button {
                isSelected.toggle()
            } label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(25)
            }
            
            Text("Tap Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(25)
//                .onTapGesture {
//                    isSelected.toggle()
//                }
            
                // 더블클릭시 실행
                .onTapGesture(count: 2) {
                    isSelected.toggle()
                }
            
            Spacer()

        }
        .padding(40)
    }
}








struct TapGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureBootcamp()
    }
}
