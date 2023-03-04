//
//  LazyVGridBootCamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/11.
//

import SwiftUI

struct LazyVGridBootCamp: View {
    
    //
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    
    var body: some View {
        
        ScrollView {
            
            Rectangle()
                .fill(Color.orange)
                .frame(height: 400)
            
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 6,
                      pinnedViews: [.sectionHeaders]) {
                Section(header:
                            Text("Section1")
                            .foregroundColor(.white)
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .background(Color.blue)
                            .padding()
                ) {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .frame(height: 150)
                    }
                }
                
                Section(header:
                            Text("Section2")
                            .foregroundColor(.white)
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .background(Color.red)
                            .padding()
                ) {
                    
                    ForEach(0..<20) { index in
                        Rectangle()
                            .fill(Color.green)
                            .frame(height: 150)
                    }
                }
            }
        }
        
    }
}






struct LazyVGridBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGridBootCamp()
    }
}
