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

struct RestaurantInfoView: View {
    @State private var isShowingDetailView = false
    let text: String
    let url: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(width: 300, height:50.0)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(ColorConstants.rmitRed)
                Link(destination: URL(string: url)!) {
                    Text(text)
                        .foregroundColor(.black)
                }
                
            })
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct RestaurantInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
                BackgroundColor()
                .edgesIgnoringSafeArea(.all)
            VStack{
                
                RestaurantInfoView(text: "123456789", url: "tel:123456789", imageName: "phone.fill")
                RestaurantInfoView(text: "email@gmail.com", url: "mailto:email@gmail.com", imageName: "envelope.fill")
            }
        }
        RestaurantInfoView(text: "123456789", url: "tel:123456789", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
        RestaurantInfoView(text: "email@gmail.com", url: "mailto:email@gmail.com", imageName: "envelope.fill")
            .previewLayout(.sizeThatFits)
    }
}
