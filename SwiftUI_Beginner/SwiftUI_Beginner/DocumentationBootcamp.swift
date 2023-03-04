//
//  DocumentationBootcamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/22.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: - PROPERTIES
    @State var data: [String] = [
        "Apples", "Oranges", "Bananas"
    ]
    
    @State var showAlert: Bool = false
    @State var test: String = "presenting"
    
    
    // MARK: - BODY
    
    // Henry - Working copy - things to do:
    /*
     1) Fix title
     2) Fix alert
     3) Fix something else
     */
    
    var body: some View {
        NavigationStack { // START: NAV
            ZStack {
                // background
                Color.red.edgesIgnoringSafeArea(.bottom)
                // foreground
                foregroundLayer
                    .navigationTitle("Documentation")
                    .toolbar {
                        ToolbarItem(placement: .navigationBarTrailing, content: {
                            Button("ALERT", action: {
                                showAlert.toggle()
                            })
                        })
                    }
                    
                
                .alert(getAlert(text: "This is the alert!"),
                       isPresented: $showAlert,
                       actions: {
                    
    //                Button(role: .destructive, action: {
    //
    //                }, label: {
    //                    Text("Reject")
    //                })
    //
    //                Button(action: {
    //
    //                }, label: {
    //                    Text("Confirm")
    //                })
           

    //            }, message: {
    //                Text("message")
            })
            }
               // 타이들 가운데 정렬(사실상 inline으로 설정하고 폰트키우기)
//            .navigationBarTitleDisplayMode(.inline)
//            .toolbar {
//                ToolbarItem(
//                    placement: .navigationBarTrailing,
//                    content: {
//                        Button("ALERT",
//                               action: {
//                            showAlert.toggle() })
//                    })
//                ToolbarItem(placement: .principal, content: {
//                    Text("Title")
//                        .font(.largeTitle.bold())
//                        .accessibilityAddTraits(.isHeader)
//                })
//            }
        } // END: NAV
    }
    
    
    /// This is the foreground layer that holds a scrollView.
    private var foregroundLayer: some View {
        ScrollView { // START: SCROLLV
            Text("Hello")
            
            ForEach(data, id: \.self, content: {
                Text("\($0)")
                    .font(.headline)
            })
             // END: SCROLLV
        }
    }
    
    
    
    // MARK: - FUNCTIONS
    /// Gets an alert with specified title
    ///
    /// This function creates and returns an alert immediately. The alert will have a title based on the text parameter but it will NOT have a message.
    /// ```
    /// getAlert(text: "hi") -> .alert("hi"), isPresented:, actions: {  }
    /// ```
    /// - Warning: There is no additional message in this Alert.
    /// - Parameter text: This is the title for the alert
    /// - Returns: Returns an alert wit a title.
    func getAlert(text: String) -> String {
        return text
    }

}









struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}
