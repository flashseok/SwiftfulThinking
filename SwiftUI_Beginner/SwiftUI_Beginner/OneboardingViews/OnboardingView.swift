//
//  OnboardingView.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/26.
//

import SwiftUI

enum Gender {
    case male
    case female
    case nobinary
}



struct OnboardingView: View {
    
    // Onboarding state :
    /*
     0 - Welcome screen
     1 - Add name
     2 - Add age
     3 - Add gender
     */
    @State var onboardingState: Int = 0
    
    // onboarding inputs
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    
    // for alert
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var  currentUserSingedIn: Bool = false
    
    let transition: AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))
    
    
    var body: some View {
        ZStack {
            // content
            ZStack {
                switch onboardingState {
                    case 0:
                        welcomeSection
                        .transition(transition)
                    case 1:
                        addNameSection
                        .transition(transition)
                    case 2:
                        addAgeSection
                        .transition(transition)
                    case 3:
                        addGenderSection
                        .transition(transition)
                    default:
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.red)
                   
                }
            }
            
            // buttons
            VStack {
                Spacer()
                bottomButton
            }
            .padding(30)
        }
        .alert("\(alertTitle)", isPresented: $showAlert, actions: {
            alertMessageBox
        }, message: {
//            Text("This is message in alert Method")
        })
    }
}


struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
        
            .background(.purple)
    }
}



// MARK: - COMPONENT
extension OnboardingView {
    private var bottomButton: some View {
        Text(
            onboardingState == 0 ? "SIGN UP" :
            onboardingState == 3 ? "FINISH" : "NEXT")
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.white)
            .cornerRadius(20)
            .onTapGesture {
                handleNextButtonPressed()
            }
           
    }
            
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            Text("Find your Match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(alignment: .bottom) {
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                }
            Text("This is the #1 app for finding your match online! In this tutorial we are practing using AppStorage and otehr swiftUI techniques")
                .fontWeight(.medium)
                .foregroundColor(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    
    
    private var addNameSection: some View {
        VStack(spacing: 40) {
            Spacer()
           
            Text("What's your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            TextField("",
                      text: $name,
                      prompt: Text("Your name here...")
                                .foregroundColor(.gray.opacity(0.3))
                    )
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .foregroundColor(.black)
                .background(.white)
                .cornerRadius(10)
                .tint(.red)
                
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.leading)
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 40) {
            Spacer()
           
            Text("What's your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
            Text("\(String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Slider(value: $age, in: 18...100, step: 1)
                .tint(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 20) {
            Spacer()
           
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            
//            Menu {
//                Picker("Gender", selection: $gender) {
//                    Text("Male").tag("Male")
//                    Text("Female").tag("Female")
//                }
//            } label: {
//                Text(gender.count > 1 ? gender : "Select a gender")
//                    .font(.headline)
//                    .foregroundColor(.purple)
//                    .frame(height: 55)
//                    .frame(maxWidth: .infinity)
//                    .background(Color.white)
//                    .cornerRadius(20)
//            }
//            .pickerStyle(.menu)
            Menu {
               Picker(selection: $gender,
                   label:
                  EmptyView()
                 , content: {
                   Text("Male").tag("\(Gender.male)")
                   Text("Female").tag("\(Gender.female)")
                
                 }).pickerStyle(.automatic)
                     .font(.largeTitle)
                     .accentColor(.white)
                 } label: {
                     Text(gender.count > 1 ? gender : "Select a gender")
                        .font(.title3)
                        .frame(maxWidth: .infinity)
                          .frame(height: 55)
                         .background(.white)
                          .cornerRadius(10)
                         .accentColor(.pink)
           }

            Spacer()
            Spacer()
        }
//        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    
    private var alertMessageBox: some View {
        Button(role: .cancel,
               action: {

        }, label: {
            Text("OK")
        })

    }
    
}


// MARK: - FUNCTIONS
extension OnboardingView {
    
    func handleNextButtonPressed() {
        
        // CHECK INPUTS
        switch onboardingState {
        case 1:
            guard name.count >= 3 else {
                showAlert(title: "Your name must be at least 3 characters long!")
//                showAlert(title: "test")
        
                return
            }
        case 3:
            guard gender.count > 1 else {
                showAlert(title: "Please select a gender before moving forward!")
                
                return
            }
            
        default:
            break
        }
        
        
        // GO TO NEXT SECTION
        if onboardingState == 3 {
            // sign in
            signIn()
        } else {
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
    }
    
    func signIn() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()) {
            currentUserSingedIn = true
        }
        
    }
    
    
    func showAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
    
}
