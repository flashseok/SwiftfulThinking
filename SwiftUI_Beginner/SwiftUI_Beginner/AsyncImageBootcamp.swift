//
//  AsyncImageBootcamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/26.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        //        AsyncImage(url: url, content: { returnedImage in
        //            returnedImage
        //                .resizable()
        //                .scaledToFit()
        //                .frame(width: 100, height: 100)
        //                .cornerRadius(20)
        //        }, placeholder: {
        //            ProgressView()
        //        })
        
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProfileView()
            case .success(let image):
                image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .cornerRadius(20)
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
            
            
        }
    }
}





struct AsyncImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootcamp()
    }
}
