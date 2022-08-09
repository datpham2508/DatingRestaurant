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

struct ImageCircle: View {
    var image: Image
    
    var body: some View {
        image
            .frame(width: 350, height: 290)
            .clipShape(Circle())
        
            .overlay(Circle().stroke(Color(.white),lineWidth: 4))
            .shadow(radius: 40)
    }
}

struct ImageCircle_Previews: PreviewProvider {
    static var previews: some View {
        ImageCircle(image: Image("theLog"))
    }
}
