//
//  SpacerBootCamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/11.
//

import SwiftUI

struct SpacerBootCamp: View {
    var body: some View {

        VStack {
            
            HStack(spacing: 0) {
                
                Image(systemName: "xmark")
                Spacer()
//                    .frame(height: 10)
//                    .background(Color.orange)
                Image(systemName: "gear")
                
            }
            .font(.title)
//            .background(Color.yellow)
            .padding(.horizontal)
//            .background(Color.blue)
            
            Spacer() // 위에 것들을 최대로 밀어 올림.(VStack 안에 있으니까)
//                .frame(width: 10)
//                .background(Color.orange)
            
            Rectangle()
                .fill(Color.gray)
                .frame(height: 55)
            
            Spacer()
                .frame(width: 10,height: 10)
                .background(Color.yellow)
                
                
            
          
        }
//        .background(Color.ysellow)
        
        
        
        
        
        //        HStack(spacing: 0) {
                    
        //            Spacer()
        //            Spacer(minLength: 0)
        //                .frame(height: 10)
        //                .background(Color.orange)
        //
        //            Rectangle()
        //                .frame(width: 50, height: 50)
        //
        //            Spacer()
        //                .frame(height: 10)
        //                .background(Color.orange)
        //
        //            Rectangle()
        //                .fill(Color.red)
        //                .frame(width: 50, height: 50)
        //
        //            Spacer()
        //                .frame(height: 10)
        //                .background(Color.orange)
        //
        //            Rectangle()
        //                .fill(Color.green)
        //                .frame(width: 50, height: 50)
        //
        //            Spacer(minLength: 0)
        //                .frame(height: 10)
        //                .background(Color.orange)
                    
        //        }
    }
}









struct SpacerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootCamp()
    }
}
