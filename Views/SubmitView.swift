/*
 RMIT University Vietnam
 Course: COSC2659 iOS Development
 Semester: 2022B
 Assessment: Assignment 1
 Author: Pham Thanh Dat
 ID: 3678437
 Created  date: 29/07/2022
 Last modified: 07/08/2022
 Acknowledgement: Acknowledge the resources that you use here.
 */

import SwiftUI

struct SubmitView: View {
    @State private var isShowingDetailView = false
    var body: some View {
        ZStack{
            BackgroundColor()
            
            VStack{
                Spacer(minLength: 15)
                Image("successImage")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                Text("Succesfull table reservation")
                    .font(.system(size: 40))
                    .foregroundColor(Color.white)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Spacer(minLength: 20)
                NavigationLink(destination: RestaurantList(), isActive: $isShowingDetailView) { EmptyView() }
                Button("Back to Home") {
                    
                    self.isShowingDetailView = true
                }.buttonStyle(GrowingButton())
                Spacer(minLength: 20)
                
            }.navigationBarHidden(true)
        }.ignoresSafeArea()
    }
}

struct SubmitView_Previews: PreviewProvider {
    static var previews: some View {
        SubmitView()
    }
}
