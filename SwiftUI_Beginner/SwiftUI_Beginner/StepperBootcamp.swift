//
//  StepperBootcamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/22.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue: Int = 10
    @State var widthIncrement: CGFloat = 0
    
    
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthIncrement, height: 100)
            
            Stepper("Stepper 2",
                    onIncrement: {
                    incrementWidth(amount: 190)
            }, onDecrement: {
                incrementWidth(amount: -100)
                
                
            })
        }
    }
    
    func incrementWidth(amount: CGFloat) {
        withAnimation(.easeInOut) {
            widthIncrement += amount
        }
        
    }
}







struct StepperBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StepperBootcamp()
    }
}
