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

struct RestaurantRow: View {
    var restaurant: listRestaurant
    
    var body: some View {
        HStack {
            restaurant.image
                .resizable()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color(.white),lineWidth: 3))
                .shadow(color:.pink.opacity(1), radius: 8, x: 1, y: 1)
            Text(restaurant.name)
            
        }
    }
}

struct RestaurantRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RestaurantRow(restaurant: restaurants[0])
                .previewLayout(.fixed(width: 300, height: 90))
            RestaurantRow(restaurant: restaurants[1])
                .previewLayout(.fixed(width: 300, height: 90))
        }
    }
}
