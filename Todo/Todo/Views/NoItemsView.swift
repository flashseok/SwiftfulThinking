//
//  NoItemsView.swift
//  TodoList
//
//  Created by 김현석 on 2023/02/28.
//

import SwiftUI

struct NoItemsView: View {
    
    @State var animate: Bool = false
    let secendaryAccentColor = Color("SecondaryAccentColor")
    
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Text("There are no item!")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Are you a productive person? I think you should clikc the add button add andd ad bunch of items ot your todo list!")
                    .padding(.bottom, 20)
                   
                NavigationLink(destination: AddView(), label: {
                    Text("Add something")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(animate ? secendaryAccentColor : .accentColor)
                        .cornerRadius(10)
                })
                .padding(.horizontal, animate ? 30 : 50)
                .shadow(
                    color: animate ? secendaryAccentColor.opacity(0.7) :
                            .accentColor.opacity(0.7),
                    radius: animate ? 30: 10,
                    x: 0,
                    y: animate ? 50 : 30
                )
                .scaleEffect(animate ? 1.1 : 1.0)
                .offset(y: animate ? -7 : 0)
            }
            .frame(maxWidth: 400)
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: addAnimation)

        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    
    func addAnimation() {
        // 뷰를 생성할 때마다 실행되고 버튼 눌렀다가 돌아올 때도 실행됨.
        // 아래 디스패치큐 부분을 두 번 실행시키지 않기 위해서 true 일때만 애니매이션 실행
        guard !animate else { return }
        print("animate : \(!animate)")
        // 뷰 생성시 1.5초 뒤에 버튼 애니메이션 활성화
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(
                Animation
                    .easeInOut(duration: 2.0)
                    .repeatForever()
            ) {
                
                animate.toggle()
            }
        }
    }
}





struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            NoItemsView()
                .navigationTitle("Title")
        }
        
        
    }
}
