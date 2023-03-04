//
//  ForEachBootCamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/11.
//

import SwiftUI

struct ForEachBootCamp: View {

    let data: [String] = ["Hi", "Hello", "Hey everyone"]
    let myString: String = "Hello"
    
    
    var body: some View {
        VStack {
            // indices : 컬렉션을 오름차순으로 구독하는데 유효한 인덱스
            ForEach(data.indices, id: \.self) { index in
                Text("\(data[index]) : \(index)")
            }
            
        }
    }
}

struct ForEachBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootCamp()
    }
}
