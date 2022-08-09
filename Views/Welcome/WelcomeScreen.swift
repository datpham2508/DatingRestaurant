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

struct WelcomeScreen: View {
    @State var isWelcomeActive: Bool = true
    var body: some View {
        ZStack {
            if isWelcomeActive {
                WelcomeView1(active: $isWelcomeActive)
            } else {
                RestaurantList()
            }
        }
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
