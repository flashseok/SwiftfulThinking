//
//  FocusStateBootcamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/27.
//

import SwiftUI

// TextField에서 주로 사용함.
// 키보드 팝업 기능


struct FocusStateBootcamp: View {
    
    enum OnboardingFields: Hashable {
        case userName
        case password
    }
    
    
//    @FocusState private var userNameIsFocus: Bool
    @State private var userName: String = ""
    
//    @FocusState private var userPasswordIsFocus: Bool
    @State private var userPassword: String = ""
    
    @FocusState private var fieldInFocus: OnboardingFields?
    
    var body: some View {
        VStack(spacing: 30) {
            TextField("Add your name here...", text: $userName)
                .focused($fieldInFocus, equals: .userName) // 위에 있는 text: userName
//                .focused($userNameIsFocus) //  키보드가 올라오면 true
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            // SecureField로 만들면 입력한거 안보임
            SecureField("Add your password here...", text: $userPassword)
//                .focused($userPasswordIsFocus) //  키보드가 올라오면 true
                .focused($fieldInFocus, equals: .password)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
        
            Button("SIGN UP ✈️") {
                let userNameIsValid = !userName.isEmpty
                let passwordIsValid = !userPassword.isEmpty
                
                // 아이디만 있는 상태에서 로그인하면 비밀번호 텍스트필드로 포커스 또는 반대로.
                if userNameIsValid && passwordIsValid {
                    print("SIGN UP")
                } else if userNameIsValid {
                    fieldInFocus = .password
//                    userNameIsFocus = false
//                    userPasswordIsFocus = true
                } else {
                    fieldInFocus = .userName
//                    userNameIsFocus = true
//                    userPasswordIsFocus = false
                }
                
            }
            
//            Button("Toggle Focus State") {
//                userNameIsFocus.toggle() // userNameInFocus 가  true로 바뀌면서 위의 텍스트필드가 포커스 되고 키보드가 올라옴.
//            }
              
        }
        .padding(40)
//        .onAppear {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
//                self.userNameIsFocus = true
//            }
//        }
    }
}









struct FocusStateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateBootcamp()
    }
}
