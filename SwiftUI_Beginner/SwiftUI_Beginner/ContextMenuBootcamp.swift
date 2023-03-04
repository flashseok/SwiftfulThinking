//
//  ContextMenuBootcamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/21.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Color = Color.blue
    
    var body: some View {
        
        
        
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use ContextMenu")
                .font(.subheadline)
        }
        .foregroundColor(Color.white)
        .padding(30)
        .background(backgroundColor).cornerRadius(30)
        .contextMenu(menuItems: {
            Button(action: {
                backgroundColor = .yellow
            }, label: { Label("Share post 1", systemImage: "flame.fill") })
            
            Button(action: {
                backgroundColor = .red
            }, label: { Text("Report post 2") })
            
            Button(action: {
                backgroundColor = .green
            }, label: {
                HStack {
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
            })
            
        })
        
        
        
        
    }
}







struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
