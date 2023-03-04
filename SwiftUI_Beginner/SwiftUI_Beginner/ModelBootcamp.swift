//
//  ModelBootcamp.swift
//  BootCamp01
//
//  Created by 김현석 on 2023/02/23.
//

import SwiftUI


struct UserModel: Identifiable {
    
    // 식별자 필요
    let id: String = UUID().uuidString
    
    let displayName: String
    let userName: String
    let followerCount: Int
    let isvErified: Bool
    
}




struct ModelBootcamp: View {
    
    @State var users: [UserModel] = [
//        "Nick", "Emily", "Samantha", "Chris"
        UserModel(displayName: "Nick", userName: "nick123", followerCount: 100, isvErified: true),
        UserModel(displayName: "Emily", userName: "itsemily1995", followerCount: 55, isvErified: false),
        UserModel(displayName: "Samantha", userName: "ninja", followerCount: 355, isvErified: false),
        UserModel(displayName: "Chris", userName: "chrish2009", followerCount: 88, isvErified: true)
    ]
    
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        
                        if user.isvErified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Users")
        }
    }
}

struct ModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModelBootcamp()
    }
}
