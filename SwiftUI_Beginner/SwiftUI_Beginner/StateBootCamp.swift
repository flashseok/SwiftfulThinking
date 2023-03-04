//
//  StateBootCamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/13.
//

import SwiftUI

struct StateBootCamp: View {
    
    // @State를 통해 뷰에게 아래 변수값이 변경될 수 있음을 알려줌
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            // content
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("\(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20) {
                    Button("Button 1", action: {
                        backgroundColor = .red
                        myTitle = "Button 1 was pressed"
                        count += 1
                    })
                    
                    Button("Button 2", action: {
                        backgroundColor = .purple
                        myTitle = "Button 2 was pressed"
                        count -= 1
                    })
                }
            }
            .foregroundColor(.white)
        }
    }
}







struct StateBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootCamp()
    }
}
