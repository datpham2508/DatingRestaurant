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
import CoreLocation

struct RestaurantCard: View {
    var restaurant: listRestaurant
    @State private var isShowingDetailView = false
    @State private var isExpanded: Bool = false
    var body: some View {
        
        ZStack {
            BackgroundColor()
                .edgesIgnoringSafeArea(.bottom)
            ScrollView {
                
                VStack {
                    LocationView(coordinate: restaurant.locationCoordinate)
                        .edgesIgnoringSafeArea(.top)
                        .frame(height: 250)
                    Spacer(minLength: 35)
                    ImageCircle(image:restaurant.image)
                        .offset(y: -100)
                        .padding(.bottom, -100)
                    
                    Text(restaurant.name)
                        .font(.system(size: 40))
                        .bold()
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                    Text(restaurant.description)
                        .font(.system(size: 15))
                        .bold()
                        .frame(width: 360)
                        .foregroundColor(.white)
                        .lineLimit(isExpanded ? nil : 3)
                                .overlay(
                                    GeometryReader { proxy in
                                        Button(action: {
                                            isExpanded.toggle()
                                        }) {
                                            Spacer(minLength: 10)
                                            Text(isExpanded ? "Less" : "See more")
                                                .font(.system(size: 15))
                                                .font(.caption).bold()
                                                .foregroundColor(.red)
                                                .padding(.leading, 8.0)
                                                .padding(.top, 4.0)
                                                                       
                                        }
                                        .frame(width: proxy.size.width, height: proxy.size.height, alignment: .bottomTrailing)
                                    }
                                )
                       
                    
                    
                    RestaurantInfoView(text: restaurant.email, url:"mailto:\(restaurant.email)" , imageName: "envelope.fill")
                    RestaurantInfoView(text: restaurant.phone, url:"tel:\(restaurant.phone)", imageName: "phone.fill")
                    NavigationLink(destination: BookingView(), isActive: $isShowingDetailView) { EmptyView() }
                    Button("Book table") {
                        self.isShowingDetailView = true
                    }.buttonStyle(GrowingButton())
                }
            }
        }.navigationBarTitleDisplayMode(.inline)
    }
}

struct RestaurantCard_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantCard(restaurant: restaurants[0])
    }
}
