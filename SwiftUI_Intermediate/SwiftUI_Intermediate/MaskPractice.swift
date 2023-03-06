//
//  MaskPractice.swift
//  SwiftUI_Intermediate
//
//  Created by 김현석 on 2023/03/06.
//

import SwiftUI

struct MaskPractice: View {
    
    @State var rating: Int = 2
    
    var body: some View {
        ZStack {
            starsView
//                .overlay(overlayView.mask(starsView)
                .overlay(overlayView.mask(starsView))
                    
//                    Rectangle()
//                        .foregroundColor(.yellow)
//                        .mask(starsView)
//                )
        }
    }
    
    private var overlayView: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(.yellow)
//                    .fill(LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: CGFloat(rating) / 5 * geometry.size.width)
            }
            
        }
        .allowsHitTesting(false)
    }
    
    private var starsView: some View {
        HStack {
            ForEach(1..<6) { index in
                Image(systemName: "star.fill")
                    .font(.largeTitle)
                    .foregroundColor(.gray)
//                    .foregroundColor(rating >= index ? .yellow : .gray)
                    .onTapGesture {
                        withAnimation(.easeInOut) {
                            rating = index
                        }
                        
                    }
            }
            
        }
    }
}




struct MaskPractice_Previews: PreviewProvider {
    static var previews: some View {
        MaskPractice()
    }
}
