//
//  ActionSheetBootcamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/19.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost

    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        //        Button("Click me", action: {
        //            showActionSheet.toggle()
        //        })
        
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button(action: {
                    actionSheetOption = .isMyPost
                    showActionSheet.toggle()
                    
                }, label: {
                    Image(systemName: "ellipsis")
                })
                .tint(Color.primary)
            }
            .padding((.horizontal))
            Group {
                switch actionSheetOption {
                case .isMyPost:
                    MyView(showActionSheet: $showActionSheet)
                    
                case .isOtherPost:
                    OtherView(showActionSheet: $showActionSheet)
                }
            }
        }
    }
}


struct OtherView: View {
    
    @Binding var showActionSheet: Bool
    
    var body: some View {
               
        Rectangle()
            .aspectRatio(1.0, contentMode: .fit)
        //        .confirmationDialog("title", isPresented: $showActionSheet, actions: {
        //            TestView()
        //        })
        
            .confirmationDialog("This is OtherView", isPresented: $showActionSheet, titleVisibility: .visible, actions: {
                
                Button("SHARE", role: .destructive) { print("Clicked SHARE Button") }
                
                Button("REPORT", role: .destructive, action: { print("Clicked REPORT Button") })
                
                Button("CANCEL", role: .cancel, action: { print("Clicked CANCEL Button") })
                
            }, message: { Text("This is OtherView's message") })
    }
}

struct MyView: View {
    
    @Binding var showActionSheet: Bool
    
    var body: some View {
        
        Rectangle()
        
            .aspectRatio(1.0, contentMode: .fit)
        //        .confirmationDialog("title", isPresented: $showActionSheet, actions: {
        //            TestView()
        //        })
        
            .confirmationDialog("This is MyView", isPresented: $showActionSheet, titleVisibility: .visible, actions: {
                
                Button("SHARE", role: .destructive) { print("Clicked SHARE Button") }
                
                Button("REPORT", role: .destructive, action: { print("Clicked REPORT Button") })
                
                Button("DELETE", role: .destructive, action: { print("Clicked DELETE Button") })
                
                Button("CANCEL", role: .cancel, action: { print("Clicked CANCEL Button") })
                
                
            }, message: { Text("This is MyView's message") })
    }
}




struct ActionSheetBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetBootcamp()
    }
}
