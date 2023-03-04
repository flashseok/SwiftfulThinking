//
//  BindingBootCamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/14.
//

import SwiftUI

struct BindingBootCamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Title"
    @State var buttonColor: Color = Color.red
    
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea(.all)
            
            VStack {
                
                Text(title)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.yellow)
                
                // 3) 버튼뷰 생성시 '$변수'를 통해 하위 뷰의 변수값을 상위 뷰의 변수로 전달하여 값 변경
//                ButtonView(backgroundColor: $backgroundColor, title: $title)
                ButtonView(backgroundColor: $backgroundColor, buttonColor: $buttonColor, title: $title)
            }
        }
    }
}

struct ButtonView: View {
    
    // 1) 상위 뷰(BindingBootCamp)의 변수와 연결시킬 변수를 생성(이름은 똑같게)
    @Binding var backgroundColor: Color
//    @State var buttonColor: Color = Color.blue
    
    @Binding var buttonColor: Color
    @Binding var title: String
    
    var body: some View {
        Button(action: {
            changeValue()
        }, label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        })
    }
    
    func changeValue() {
        // 2) 변수에 값을 넣고
        backgroundColor = Color.orange
        buttonColor = Color.pink
        
        buttonColor = Color.blue
        title = "NEW TITLE!!!!!"
    }
}



struct BindingBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootCamp()
    }
}
