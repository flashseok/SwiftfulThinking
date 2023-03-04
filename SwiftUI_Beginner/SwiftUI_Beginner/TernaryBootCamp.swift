//
//  TernaryBootCamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/14.
//

import SwiftUI

struct TernaryBootCamp: View {
    
    @State var isStartingState: Bool = false
    
    
    var body: some View {
        
        VStack {
            Button("Button : \(isStartingState.description)", action: {
                isStartingState.toggle()
            })
            
            Text(isStartingState ? "STARTING STATE !!!" : "ENDING STATE")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(
                    width: isStartingState ? 200 : 50,
                    height: isStartingState ? 400 : 50)
            
            Spacer()
            
        }
        
        
    }
}






struct TernaryBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TernaryBootCamp()
    }
}
