/*
 RMIT University Vietnam
 Course: COSC2659 iOS Development
 Semester: 2022B
 Assessment: Assignment 1
 Author: Pham Thanh Dat
 ID: 3678437
 Created  date: 29/07/2022
 Last modified: 07/08/2022
 Acknowledgement: https://www.youtube.com/watch?v=kJ_HiL2uGF0
 */

import SwiftUI

struct WelcomeView1: View {
    let welcomeMessages:[WelcomeMessage] = [
        WelcomeMessage(title: "Welcome to", description: "Dating Restaurent app", image: "datingImage1"),
        WelcomeMessage(title: "Cuisine is ", description: "the fastest way to conquer a woman 💘",image: "datingImage3"),
        WelcomeMessage(title: "Let's find the best place for", description: "your romantic dinner ♥",image: "datingImage5")
    ]
    @Binding var active: Bool
    @State private var offset:CGFloat = UIScreen.main.bounds.size.height
    var body: some View {
        
        ZStack{
            WelcomeBackground()
            VStack{
                TabView {
                    ForEach(welcomeMessages, id: \.self) { welcomeMessage in
                        VStack(){
                            Image(welcomeMessage.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 500, height: 300)
                            Text(welcomeMessage.title)
                                .font(.system(size: 40))
                                .foregroundColor(Color.white)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                            
                            Text(welcomeMessage.description)
                                .font(.system(size: 28))
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                            if welcomeMessages.last == welcomeMessage{
                                Button(action: {
                                    active = false
                                },label: {
                                    Text("Start your journey")
                                        .frame(minWidth: 0, maxWidth: UIScreen.main.bounds.size.width/2)
                                        .font(.system(size: 22))
                                        .padding()
                                        .foregroundColor(.white)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 20)
                                                .stroke(Color.white,lineWidth: 2)
                                        )
                                        .background(Color(red: 245/255.0, green: 204/255.0, blue: 204/255.0))
                                        .cornerRadius(20)
                                        .offset(x: 0.0, y: offset)
                                })
                            }                    }
                        .padding(20)
                        .onAppear{
                            self.offset = UIScreen.main.bounds.size.height
                            if welcomeMessages.last == welcomeMessage{
                                print("selected item:\(welcomeMessage.title)")
                                withAnimation(.linear(duration: 1)) { self.offset = 0}
                            }
                        }
                    }
                    
                }
            }
            .frame( width:UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height, alignment: .center)
            .tabViewStyle(PageTabViewStyle())
        }
        .ignoresSafeArea()
    }
}

struct WelcomeView1_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView1(active: .constant(true))
    }
}
