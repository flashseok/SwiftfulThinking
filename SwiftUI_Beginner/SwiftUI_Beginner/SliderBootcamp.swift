//
//  SliderBootcamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/22.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Rating:")
                .padding(.bottom, 10)
            Text(
//                "\(sliderValue)"
                String(format: "%.2f", sliderValue)
            )
            .foregroundColor(color)
//            Slider(value: $sliderValue)
//                .tint(.red)
            
//            Slider(value: $sliderValue, in: 0...100)
//            Slider(value: $sliderValue, in: 1...5, step: 0.1)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: { (_) in
                    self.color = .green
                },
                minimumValueLabel:
                    Text("1")
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                ,
                maximumValueLabel: Text("5"),
                label: {
                    Text("Title")
                })
                .tint(.red)
                .padding(20)
        }
    }
    
}




struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
