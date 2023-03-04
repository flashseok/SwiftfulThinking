//
//  AlertBootcamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/18.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = .yellow
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    @State var alertType: MyAlert? = nil
    
    enum MyAlert {
        case success
        case error
    }
    
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea(.all)
            
            
            VStack {
                Button("Button 1", action: {
                    alertType = .error
//                    alertTitle = "Error Uploading Video"
//                    alertMessage = "The video could not be uploaded"
                    
                    tappedButton(myAlert: alertType)
                    
                    showAlert.toggle()
                })
                .padding()
                
                Button("Button 2", action: {
                    alertType = .success
//                    alertTitle = "Successfully uploaded video😎"
//                    alertMessage = "Your video is now public"
                    tappedButton(myAlert: alertType)
                    showAlert.toggle()
                })
                // 1)
                //        .alert("There was an error!", isPresented: $showAlert, actions: {
                //            Button("OK", action: {
                //                print("Pressed OK Button")
                //
                //            })
                //        })
                
                // 2)
    //            .alert("This is the title", isPresented: $showAlert, actions: {
    //                deleteButton
    //                cancelButton
    //            }, message: {
    //                Text("Here we will describe the error")
    //            })
                
                // 3)
                .alert("\(alertTitle)", isPresented: $showAlert, actions: {
                    deleteButton
                    cancelButton
                }, message: {
                    Text("\(alertMessage)")
            })
            }
            
        }
    }
    
    func tappedButton(myAlert: MyAlert?) {
        switch myAlert {
        case .success:
            alertTitle = "Successfully uploaded video😎"
            alertMessage = "Your video is now public"
        case .error:
            alertTitle = "Error Uploading Video"
            alertMessage = "The video could not be uploaded"
        default: break
        }
    }
    
    var deleteButton: some View {
        
        Button(role: .destructive,
               action: {
            backgroundColor = Color.red
        }, label: {
            Text("DELETE")
        })
    }
    
    var cancelButton: some View {
        Button(role: .cancel,
               action: {
            backgroundColor = Color.gray
        }, label: {
            Text("CANCEL")
        })
    }
}






struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
