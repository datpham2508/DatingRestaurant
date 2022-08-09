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

struct RestaurantList: View {
    
    @State private var searchText=""
    var filteredRestaurant: [listRestaurant] {
        if searchText == "" {return restaurants}
        return restaurants.filter {
            $0.name.lowercased()
                .contains(searchText.lowercased())
        }
    }
    var body: some View {
        ZStack{
            NavigationView {
                List(filteredRestaurant){
                    listRestaurant in
                    NavigationLink{
                        RestaurantCard(restaurant: listRestaurant)
                    } label: {
                        RestaurantRow(restaurant: listRestaurant)
                    }
                    .navigationTitle("Dating Restaurant ❤")
                    
                }
            }.searchable(text: $searchText)
        }.navigationBarHidden(true)
        
    }
}

struct RestaurantList_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantList()
    }
}
