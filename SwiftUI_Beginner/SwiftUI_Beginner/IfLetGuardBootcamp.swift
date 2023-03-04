//
//  IFLetGuardBootcamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/23.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    @State var currentUserID: String? = nil
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Here we are practing safe coding!")
                if let text = displayText {
                    Text(text)
                        .font(.title)
                        .padding()
                }
                
                // Do not user ! Ever!!
                // Do net force unwrap values
//                Text(displayText)
//                    .font(.title)
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
//                loadData()
                loadData2()
            }
        }
    }
    
    
    
    func loadData() {
        
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3 , execute: {
                displayText = "This is new data! UserID is \(userID)"
                isLoading = false
            })
        } else {
            displayText = "Error. There is no UserID"
        }
    }
    
    func loadData2() {
        guard let userID = currentUserID else {
            displayText = "Error. There is no UserID"
            
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3 , execute: {
            displayText = "This is new data! UserID is \(userID)"
            isLoading = false
        })
    }
    
    
    
}








struct IfLetGuardBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardBootcamp()
    }
}
