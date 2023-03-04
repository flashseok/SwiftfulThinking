//
//  AddView.swift
//  TodoList
//
//  Created by 김현석 on 2023/02/27.
//

import SwiftUI

struct AddView: View {
    // 뷰 계층의 한단계 뒤로 이동함
    @Environment(\.dismiss) var dismissMode
    @EnvironmentObject var listViewModel : ListViewModel
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    @State var textFieldText: String = ""
    let textFieldBackgroundColor: Color = Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1))
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(UIColor.secondarySystemBackground))
                    .cornerRadius(10)
                
                Button(action: {
                    saveButtonPressed()
                }, label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(.tint)
                        .cornerRadius(10)
                })
            }
            .padding(14)
                
        }
        .navigationTitle("Add an Item ✏️")
        .alert("\(alertTitle)",
               isPresented: $showAlert,
               actions: {
                Button(role: .cancel,
                       action: {  },
                       label: { Text("OK") })
                }, message: {
//            Text("This is message in alert Method")
                }
        )
    }

    
    func saveButtonPressed() {
        if textIsAppropriate() {
            listViewModel.addItem(title: textFieldText)
            dismissMode()
        }
       
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = "Your new todo item must be at least 3 characters 😉"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func showAlert(title: String) {
        alertTitle = title
        
    }
    
    
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                AddView()
                    .preferredColorScheme(.light)
            }
            .environmentObject(ListViewModel())
            
            NavigationView {
                AddView()
                    .preferredColorScheme(.dark)
            }
            .environmentObject(ListViewModel())
            
        }
        
        
    }
}
