//
//  FrameBootCamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/09.
//

import SwiftUI

struct FrameBootCamp: View {
    var body: some View {
        Text("Hello, World!")
            .background(Color.red)
        
            .frame(height: 100, alignment: .top)
            .background(Color.orange)
        
            .frame(width: 150)
            .background(Color.purple)
        
            .frame(maxWidth: .infinity, alignment: .leading)  // 부모프레임 내에서 가장 큰 너비값
            .background(Color.pink)
            .frame(height: 400)
        
            .background(Color.green)
            .frame(maxHeight: .infinity, alignment: .top)
        
            .background(Color.yellow)
    }
}

struct FrameBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootCamp()
    }
}
